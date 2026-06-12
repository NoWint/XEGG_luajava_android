package com.eileen.hacker;


import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.eileen.hacker.Developer.DeveloperLayout;
/**
 * @Author 𝘽𝙮·艾琳 - 手游逆向交流群101640882
 * @Date 2023/010/11 15:38
 * @Describe
 */

//悬浮窗口管理服务
/*说明：这个类主要用于创建并管理悬浮的控制视图，
 在Service创建时显示该控制视图，
 在Service销毁时清除该控制视图。
 */
public class WindowService extends Service {

    private Context mContext;

    //这个方法用于绑定Service组件和其他组件之间的交互，在这里返回null表示不支持绑定
    @Override
    public IBinder onBind(Intent Intent) {
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        this.mContext = this;  


        Tools.Reversal();//进行安全验证
        Resource.initResource(mContext);//加载所有资源

        //创建悬浮球并显示
        SuspendedBall.getSB(mContext).showView();
        //创建悬浮窗
        GameMenu.getMenu(mContext);


        //🌐 微验网络验证 (请打开e.java文件配置网络验证否则无法使用哦) 🌐
        if (e.getLin(mContext).getGm()) {
            //功能列表默认不可见 (只有卡密登录成功后才可见！)
            GameMenu.getMenu(mContext).Equation(false);
            //启动网络验证
            e.getLin(mContext).Start();
        }

        //只有当前程序包名为特定包名时才启动开发者模式！
        //一般做成游戏直装后包名会发生改变 所以无需担心做成直装后也会启动开发者模式！
        if (mContext.getPackageName().equals("com.eileen.hacker")) {
            DeBug.aLog("代码当前处于直装模板中 [已自动启动开发者模式]");
            //启动开发者模式
            DeveloperLayout.init(mContext);
        } else {
            DeBug.aLog("代码当前处于游戏安装包中 [正常运行悬浮窗]");
        }


    }



    //在Service销毁时调用此方法
    @Override
    public void onDestroy() {
        super.onDestroy();

        //清除悬浮球
        SuspendedBall.getSB(mContext).clearView();


    }



}
