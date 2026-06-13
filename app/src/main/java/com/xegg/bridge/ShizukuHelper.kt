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
    /// 返回文件描述符，-1 表示失败
    fun openProcMem(pid: Int): Int {
        if (!isAvailable()) return -1

        try {
            val service = getService() ?: return -1

            // 通过 Shizuku shell 执行 cat 打开 /proc/pid/mem，获取其 fd
            val process = service.newProcess(
                arrayOf("cat", "/proc/$pid/mem"),
                null,
                null
            )

            // 获取进程的 stdout fd
            val pfd: ParcelFileDescriptor = process.inputStream
            val fdInt = pfd.detachFd()
            return fdInt
        } catch (e: Exception) {
            log("openProcMem failed: ${e.message}")
            return -1
        }
    }

    /// 通过 Shizuku 以 shell 权限直接打开 /proc/pid/mem 并返回 fd
    /// 使用 exec 方式替换进程，fd 不会被关闭
    fun openProcMemFd(pid: Int): Int {
        if (!isAvailable()) return -1

        return try {
            val service = getService() ?: return -1

            // 使用 Shizuku shell 执行命令，将 /proc/pid/mem 的 fd 传递出来
            // 方式：通过 shell 执行 ls -la /proc/pid/mem 验证可读性
            // 然后通过 /proc/self/fd/N 获取 fd
            val process = service.newProcess(
                arrayOf("sh", "-c", "exec 3</proc/$pid/mem && echo /proc/self/fd/3 && sleep 300"),
                null,
                null
            )

            val fdPath = java.io.BufferedReader(java.io.InputStreamReader(ParcelFileDescriptor.AutoCloseInputStream(process.inputStream))).use { br -> br.readLine() }?.trim() ?: return -1

            // 在 XEGG 进程中打开该 fd 路径
            // 注意：由于 Shizuku 进程和 XEGG 进程不同，需要通过管道传递
            // 实际实现需要更复杂的 fd 传递机制
            // 这里作为简化实现，回退到 dd 命令模式
            process.destroy()
            -2 // 标记为命令模式，使用 readMemory/writeMemory
        } catch (e: Exception) {
            log("openProcMemFd failed: ${e.message}")
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
