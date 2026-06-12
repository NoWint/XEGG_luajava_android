package com.eileen.hacker;

import android.content.Context;

/**
 * @Author 𝘽𝙮·艾琳 - 手游逆向交流群101640882
 * @Date 2023/08/20 00:02
 * @Describe 执行文件 -工具
 */
public class ExecutionTool {

    // 执行shell命令
    public static void Irene(String shell) {
        try {
            Runtime.getRuntime().exec(shell, null, null);
        } catch (Exception e) {
            //DeBug.showDebugToast(mContext, "功能执行失败 请重试！", "可能游戏没有加载库 重试无效则重进");
            e.printStackTrace();
        }
    }

    // 64位和32位通用调用单个二进制方法 二进制文件名
    public static void gameS(Context mContext, String name) {

        //if (arm == 64) {
        //arm64位模式
        // Tools.writeWriteAssets(mContext, mContext.getCacheDir() + "/", name);
        Irene("chmod 777 " + mContext.getApplicationInfo().nativeLibraryDir + "/" + name);
        Irene(mContext.getApplicationInfo().nativeLibraryDir + "/" + name);
        Irene("chmod 777 " + mContext.getCacheDir() + "/" + name);
        Irene(mContext.getCacheDir() + "/" + name);
        //} else {
        //arm32位模式
        Irene("chmod 777 " +  "/data/data/" + mContext.getPackageName() + "/lib/" + name);
        Irene("/data/data/" + mContext.getPackageName() + "/lib/" + name);
        //}
    }

    // 64和32位通用开关不同状态调用不同二进制方法 开启功能二进制文件名 关闭功能二进制文件名 开关状态标识
    public static void HackerOnOff(Context mContext, String onSoFile, String offSoFile, boolean isChecked) {
        //if (arm == 64) {
        //arm64位模式 
        //Tools.writeWriteAssets(mContext, mContext.getCacheDir() + "/", isChecked ?onSoFile: offSoFile);
        Irene("chmod 777 " + mContext.getApplicationInfo().nativeLibraryDir + "/" + (isChecked ?onSoFile: offSoFile));
        Irene(mContext.getApplicationInfo().nativeLibraryDir + "/" + (isChecked ?onSoFile: offSoFile));
        Irene("chmod 777 " + mContext.getCacheDir() + "/" + (isChecked ?onSoFile: offSoFile));
        Irene(mContext.getCacheDir() + "/" + (isChecked ?onSoFile: offSoFile));
        //} else {
        //arm32位模式
        Irene("chmod 777 " +  "/data/data/" + mContext.getPackageName() + "/lib/" + (isChecked ?onSoFile: offSoFile));
        Irene("/data/data/" + mContext.getPackageName() + "/lib/" + (isChecked ?onSoFile: offSoFile));
        // }
    }

}
