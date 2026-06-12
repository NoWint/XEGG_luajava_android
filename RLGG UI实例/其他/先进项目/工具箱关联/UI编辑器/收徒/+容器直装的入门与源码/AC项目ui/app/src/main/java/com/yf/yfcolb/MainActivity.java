package com.yf.yfcolb;


import android.app.Activity;
import android.content.Intent;

import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;

import android.view.View;

import android.view.Window;
import android.view.WindowManager;

import com.yf.yfcolb.data.BubbleNotification;

import com.yf.yfcolb.工具库.Resource;



public class MainActivity extends Activity {
    public static Activity activity;
    private static final int REQUEST_CODE_OVERLAY_SETTINGS  = 200;
    public boolean hasLaunched = false;
    public String GameActivity = "游戏入口";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
        activity = this;

        // 获取权限
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M && !Settings.canDrawOverlays(this)) {
            Intent intent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
            Uri uri = Uri.fromParts("package", getPackageName(), null);
            intent.setData(uri);
            startActivityForResult(intent, REQUEST_CODE_OVERLAY_SETTINGS);
            Resource.dialog.showToast("请开启悬浮窗权限");
        }

        if (this.getPackageName().equals("com.yf.yfcolb")) {
            this.requestWindowFeature(Window.FEATURE_NO_TITLE);//去掉标题栏
            // this.setContentView(R.layout.activity_main);//设置程序xml布局
            initSet();
            DeBug.aLog("代码当前处于直装模板中");
            BubbleNotification.Inform(this).showMessageNotification_Exquisite(null, "欢迎使用", "仅供娱乐测试bug", 5000);
        } else {
            DeBug.aLog("代码当前处于游戏安装包中");
            if (!hasLaunched) {
                try {
                    hasLaunched = true;
                    //启动游戏
                    MainActivity.this.startActivity(new Intent(MainActivity.this, Class.forName(MainActivity.this.GameActivity)));
                    BubbleNotification.Inform(this).showMessageNotification_Exquisite(null, "欢迎使用", "如果你遇到了问题请联系客服", 5000);
                } catch (ClassNotFoundException e) {
                    DeBug.aLog("游戏activity入口不存在！");

                }
            }
        }

        //启动外挂程序
        Main.init(this);
    }

    // 初始化设置
    private static void initSet() {
        // 隐藏状态栏
        activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
        // 全屏显示
        activity.getWindow().getDecorView().setSystemUiVisibility(
                View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN |
                        View.SYSTEM_UI_FLAG_LAYOUT_STABLE |
                        View.SYSTEM_UI_FLAG_FULLSCREEN |
                        View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY |
                        View.SYSTEM_UI_FLAG_HIDE_NAVIGATION |
                        View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
        );

    }

}





