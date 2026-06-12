package com.eileen.hacker;
import android.content.Context;
import android.graphics.ImageDecoder;
import android.graphics.PixelFormat;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.io.IOException;

/**
 * @Author 𝘽𝙮·艾琳 - 手游逆向学习QQ交流群101640882
 * @Date 2023/10/17 14:01
 * @Describe 悬浮球
 */
public class SuspendedBall {

    public static final String TAG = "SuspendedBall";

    private Context mContext;

    private String iconName = "Eileen.gif";//设置悬浮球的图像为assets文件夹下指定gif文件
    //private String iconName = "Graph.png"; //如果你不希望使用gif动态图像作为悬浮球 那么也可以设置为png图像或jpg图像 只需在这里改一下文件名即可 
    private int iconWidth=50;//悬浮球宽
    private int iconHeight=50;//悬浮球高


    public static LinearLayout rootLayout;

    private ImageView controlView;

    private WindowManager wManager;

    private int screenWidth;

    private int screenHeight;

    private WindowManager.LayoutParams wParams;

    private int signX;

    private int signY;

    private float downX;

    private float downY;

    private static boolean isView;

    private Handler handler;

    Drawable drawable = null;

    private static SuspendedBall sb;

    //♨️悬浮球实例 [单例]♨️
    public static SuspendedBall getSB(Context context) {
        if (sb == null) {
            sb = new SuspendedBall(context);
        }
        return sb;
    }

    //构造悬浮球
    private SuspendedBall(Context context) {
        mContext = context;
        init();
    }

    //初始化悬浮球
    public void init() {
        //创建悬浮球根布局
        rootLayout = new LinearLayout(mContext);

        handler = new Handler(Looper.getMainLooper());
        try {
            drawable = ImageDecoder.decodeDrawable(ImageDecoder.createSource(rootLayout.getContext().getAssets(), iconName));
        } catch (IOException e) {
            e.printStackTrace();
        }

        //创建悬浮球视图
        controlView = new ImageView(mContext);
        controlView.setBackground(drawable);
        rootLayout.addView(controlView, Tools.convertDpToPx(mContext, iconWidth), Tools.convertDpToPx(mContext, iconHeight));


        //悬浮球窗口设置
        wManager = (WindowManager) mContext.getSystemService(Context.WINDOW_SERVICE);
        DisplayMetrics metrics = new DisplayMetrics();
        wManager.getDefaultDisplay().getRealMetrics(metrics);
        screenWidth = metrics.widthPixels;
        screenHeight = metrics.heightPixels;
        wParams = new WindowManager.LayoutParams();
        wParams.width = WindowManager.LayoutParams.WRAP_CONTENT;
        wParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
        wParams.gravity = Gravity.TOP | Gravity.LEFT;
        wParams.format = PixelFormat.RGBA_8888;
        wParams.windowAnimations = android.R.style.Animation_Toast;
        wParams.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
        wParams.type = (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O ?WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY: WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);

        //启动悬浮球gif动画
        startAimation();

        //悬浮球点击事件 (如果你有特殊需求)
        controlView.setOnClickListener(new View.OnClickListener() {

                @Override
                public void onClick(View v) {
                    
                    
                }
            });

        //触摸监听器
        controlView.setOnTouchListener(new OnTouchListener() {

                boolean isOne=true;//第一次移动时设置透明度标识
                boolean isMove=false;//当前是否在移动
                int moveThreshold=20;//手指移动的阀值(灵敏度) 改小更容易触发移动 太小可能导致误判打不开悬浮窗

                @Override
                public boolean onTouch(View view, MotionEvent event) {
                    switch (event.getActionMasked()) {


                            //手指按下时触发
                        case MotionEvent.ACTION_DOWN:
                            controlView.setAlpha(0.3f);//设置悬浮球透明度 透明度介于0和1之间
                            isOne = true;
                            isMove = false;
                            signX = wParams.x;//记录视图初始位置的横向坐标
                            signY = wParams.y;//记录视图初始位置的竖向坐标
                            downX = event.getRawX();//记录手指按下时的绝对横向坐标
                            downY = event.getRawY();//记录手指按下时的绝对竖向坐标
                            break;


                            //手指移动时触发
                        case MotionEvent.ACTION_MOVE:

                            float moveDistanceX = Math.abs(event.getRawX() - downX);
                            float moveDistanceY = Math.abs(event.getRawY() - downY);
                            if (moveDistanceX > moveThreshold || moveDistanceY > moveThreshold) {
                                isMove = true;//当前是移动
                            }


                            //第一次移动执行的内容
                            if (isOne) {
                                controlView.setAlpha(0.3f);//设置悬浮球透明度 透明度介于0和1之间
                                isOne = false;//不是第一次移动了

                            }


                            if (isMove) {
                                wParams.x = signX + (int) (event.getRawX() - downX);//根据手指移动的距离计算视图新的横向坐标
                                wParams.y = signY + (int) (event.getRawY() - downY);//根据手指移动的距离计算视图新的竖向坐标
                                updateView();//更新视图位置
                            }

                            break;


                            //手指抬起时触发
                        case MotionEvent.ACTION_UP:
                            //不是移动状态 抬起的 那么执行这些内容
                            if (!isMove) {
                                //播放悬浮球开启音频
                                if (Resource.audio != null) {
                                    Resource.audio.playSoundEffect("OpenMenu.ogg");
                                }   
                                //显示悬浮窗
                                GameMenu.getMenu(mContext).showView();
                                //隐藏悬浮球
                                clearView();
                            }
                            controlView.setAlpha(0.9f);//设置悬浮球透明度 透明度介于0和1之间

                            break;




                    }
                    return false;
                }
            });
    }


    //显示悬浮球
    public void showView() {
        if (!isView) {
            isView = true;
            wManager.addView(rootLayout, wParams);
        }
    }

    //更新悬浮球
    public void updateView() {
        wManager.updateViewLayout(rootLayout, wParams);
        handler.removeCallbacks(mSA);
        handler.postDelayed(mSA, 1000);
    }

    //清除悬浮球
    public void clearView() {
        if (wManager != null) {
            if (isView) {
                isView = false;
                wManager.removeView(rootLayout);
            }

        }
    }

    //启动动画
    private void startAimation() {
        if (drawable instanceof AnimatedImageDrawable) {
            AnimatedImageDrawable ad =  ((AnimatedImageDrawable) drawable);
            ad.start();
        }
    }

    //暂停动画 (如果你需要请使用)
    private void stopAimation() {
        if (drawable instanceof AnimatedImageDrawable) {
            AnimatedImageDrawable ad =  ((AnimatedImageDrawable) drawable);
            ad.stop();
        }
    }

    private final SA mSA = new SA();
    private class SA implements Runnable {

        @Override
        public void run() {
            try {
                drawable = ImageDecoder.decodeDrawable(ImageDecoder.createSource(rootLayout.getContext().getAssets(), iconName));
                controlView.setBackground(drawable);
                startAimation();
            } catch (Exception e) {

            }
        }

    }

}
