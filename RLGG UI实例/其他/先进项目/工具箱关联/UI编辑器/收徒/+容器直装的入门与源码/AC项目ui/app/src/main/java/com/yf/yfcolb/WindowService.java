package com.yf.yfcolb;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;

import com.yf.yfcolb.封装库.Packaging;
import com.yf.yfcolb.工具库.Resource;
import com.yf.yfcolb.工具库.TOOL;

/**
 * @author: 远方哥哥
 * 留下版权谢谢
 * @date: 2024/4/25
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

        TOOL.Reversal();//进行安全验证
        Resource.initResource(mContext);//加载所有资源
        new Packaging(mContext);

        //创建悬浮球并显示
        FloatControlView.getSB(mContext).showView();

        /*//🌐 微验网络验证 (请打开e.java文件配置网络验证否则无法使用哦) 🌐
        if (YFYZ.getLin(mContext).getGm()) {
            //功能列表默认不可见 (只有卡密登录成功后才可见！)
            FloatContentView.getMenu(mContext).Equation(false);
            //启动网络验证
            YFYZ.getLin(mContext).Start();
        }*/
    }

    //在Service销毁时调用此方法
    @Override
    public void onDestroy() {
        super.onDestroy();
        //清除悬浮球
        FloatControlView.getSB(mContext).clearView();

    }
}

