package com.yf.yfcolb;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;

import com.yf.yfcolb.工具库.TOOL;

/**
 * @author: 远方哥哥
 * 留下版权谢谢
 * @date: 2024/4/25
 */
public class Main {

    public static Activity activity;

    public static void init(Context context) {
        activity = (Activity)context;

        TOOL.initSave(context, (Activity)context);//申请储存权限
        TOOL.initPermission(context, (Activity)context);//检测并申请所有已声明权限

        //启动窗口管理服务
        context.startService(new Intent(context, WindowService.class));

    }
}
