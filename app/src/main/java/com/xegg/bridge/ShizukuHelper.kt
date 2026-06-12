package com.xegg.bridge

import android.content.Context
import android.content.pm.PackageManager
import android.os.ParcelFileDescriptor
import android.os.RemoteException
import rikka.shizuku.Shizuku
import java.io.File
import java.io.InputStream
import moe.shizuku.server.IShizukuService

/**
 * Shizuku 框架模式辅助类
 *
 * 通过 Shizuku 服务获取 shell 级别权限，
 * 可以打开 /proc/pid/mem 实现免 Root 内存读写。
 */
object ShizukuHelper {

    private var isShizukuAvailable = false
    private const val SHIZUKU_REQUEST_CODE = 10001

    private val permissionListener =
        Shizuku.OnRequestPermissionResultListener { requestCode: Int, grantResult: Int ->
            if (requestCode == SHIZUKU_REQUEST_CODE) {
                isShizukuAvailable = grantResult == PackageManager.PERMISSION_GRANTED
            }
        }

    /// 初始化 Shizuku 监听
    fun init(context: Context) {
        Shizuku.addRequestPermissionResultListener(permissionListener)
    }

    /// 检查 Shizuku 是否可用
    fun isAvailable(): Boolean {
        return try {
            Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED
        } catch (e: Exception) {
            false
        }
    }

    /// 请求 Shizuku 权限
    fun requestPermission(activity: android.app.Activity) {
        try {
            if (Shizuku.checkSelfPermission() != PackageManager.PERMISSION_GRANTED) {
                Shizuku.requestPermission(SHIZUKU_REQUEST_CODE)
            }
        } catch (e: Exception) {
            // Shizuku 未安装
        }
    }

    /// 获取 Shizuku 服务接口
    private fun getService(): IShizukuService? {
        return try {
            val binder = Shizuku.getBinder() ?: return null
            IShizukuService.Stub.asInterface(binder)
        } catch (e: Exception) {
            log("getService failed: ${e.message}")
            null
        }
    }

    /// 通过 Shizuku 以 shell 权限打开 /proc/pid/mem
    /// 返回文件描述符，-1 表示失败，-2 表示命令模式
    fun openProcMem(pid: Int): Int {
        if (!isAvailable()) return -1

        return try {
            // 简化实现：标记 Shizuku 模式为 "命令模式"
            // 后续通过 newProcess 执行 dd 命令来读写内存
            -2
        } catch (e: Exception) {
            log("openProcMem failed: ${e.message}")
            -1
        }
    }

    /// 通过 Shizuku shell 读取内存
    fun readMemory(pid: Int, addr: Long, size: Int): ByteArray? {
        if (!isAvailable()) return null

        return try {
            val service = getService() ?: return null
            val remoteProcess = service.newProcess(
                arrayOf("dd", "if=/proc/$pid/mem", "bs=1", "skip=$addr", "count=$size"),
                null,
                null
            )
            val input = ParcelFileDescriptor.AutoCloseInputStream(remoteProcess.inputStream)
            val output = input.readBytes()
            remoteProcess.waitFor()
            output
        } catch (e: RemoteException) {
            log("readMemory failed: ${e.message}")
            null
        } catch (e: Exception) {
            log("readMemory failed: ${e.message}")
            null
        }
    }

    /// 通过 Shizuku shell 写入内存
    fun writeMemory(pid: Int, addr: Long, data: ByteArray): Boolean {
        if (!isAvailable()) return false

        return try {
            val service = getService() ?: return false
            // 写入临时文件
            val tmpFile = File.createTempFile("xegg_write", ".bin")
            tmpFile.writeBytes(data)

            // 使用 dd 命令写入内存
            val process = service.newProcess(
                arrayOf("dd", "of=/proc/$pid/mem", "bs=1", "seek=$addr", "count=${data.size}", "if=${tmpFile.absolutePath}"),
                null,
                null
            )
            val exitCode = process.waitFor()
            tmpFile.delete()
            exitCode == 0
        } catch (e: RemoteException) {
            log("writeMemory failed: ${e.message}")
            false
        } catch (e: Exception) {
            log("writeMemory failed: ${e.message}")
            false
        }
    }

    /// 通过 Shizuku 获取进程的内存区域列表
    fun getMemoryMaps(pid: Int): String? {
        if (!isAvailable()) return null

        return try {
            val service = getService() ?: return null
            val remoteProcess = service.newProcess(
                arrayOf("cat", "/proc/$pid/maps"),
                null,
                null
            )
            val input = ParcelFileDescriptor.AutoCloseInputStream(remoteProcess.inputStream)
            val output = input.bufferedReader().readText()
            remoteProcess.waitFor()
            output
        } catch (e: RemoteException) {
            log("getMemoryMaps failed: ${e.message}")
            null
        } catch (e: Exception) {
            log("getMemoryMaps failed: ${e.message}")
            null
        }
    }

    /// 通过 Shizuku 获取运行中进程列表
    fun getRunningProcesses(): List<Triple<String, Int, String>> {
        if (!isAvailable()) return emptyList()

        return try {
            val service = getService() ?: return emptyList()
            val remoteProcess = service.newProcess(
                arrayOf("ps", "-A", "-o", "PID,COMM,ARGS"),
                null,
                null
            )
            val input = ParcelFileDescriptor.AutoCloseInputStream(remoteProcess.inputStream)
            val output = input.bufferedReader().readText()
            remoteProcess.waitFor()

            output.lines()
                .drop(1) // 跳过标题行
                .filter { it.isNotBlank() }
                .mapNotNull { line ->
                    val parts = line.trim().split(Regex("\\s+"), 3)
                    if (parts.size >= 2) {
                        val pid = parts[0].toIntOrNull() ?: return@mapNotNull null
                        val name = parts.getOrNull(1) ?: ""
                        val cmd = parts.getOrNull(2) ?: name
                        Triple(cmd, pid, name)
                    } else null
                }
                .filter { it.first.contains(".") } // 过滤出有包名的应用
        } catch (e: RemoteException) {
            log("getRunningProcesses failed: ${e.message}")
            emptyList()
        } catch (e: Exception) {
            log("getRunningProcesses failed: ${e.message}")
            emptyList()
        }
    }

    private fun log(msg: String) {
        android.util.Log.d("ShizukuHelper", msg)
    }
}
