package com.eileen.hacker.Developer;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.text.Html;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.eileen.hacker.GameMenu;
import com.eileen.hacker.Main;
import com.eileen.hacker.R;
import com.eileen.hacker.Resource;
import com.eileen.hacker.SuspendedBall;
import com.eileen.hacker.Tools;
import com.eileen.hacker.e;

/**
 * @Author 𝘽𝙮·艾琳 - 手游逆向交流群101640882
 * @Date 2023/10/12 03:10
 * @Describe 开发人员才能看见的布局
 */
public class DeveloperLayout {

    public static final String TAG = "DeveloperLayout";

    private static Context aContext;
    private static Activity activity;

    private static int metricsWidth=0;//当前设备的屏幕宽度
    private static int metricsHeight=0;//当前设备的屏幕高度

    private static int M_Width=0;
    private static int M_Height=0;


    public static void init(Context context) {
        aContext = context;
        activity = Main.activity;
        Resource.initResource(context);//加载所有资源
        getDefault();//获取程序默认设置
        initSet();//初始化设置
        ControlAction();//初始化控件的行为
    }



    // 获取程序默认设置
    private static void getDefault() {
        // 获取当前设备屏幕宽度和高度
        final WindowManager windowManager = (WindowManager) aContext.getSystemService(Context.WINDOW_SERVICE);
        DisplayMetrics metrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(metrics);
        metricsWidth = metrics.widthPixels;
        metricsHeight = metrics.heightPixels;

        //获取悬浮窗默认宽高
        M_Width = GameMenu.wParams.width;
        M_Height = GameMenu.wParams.height;


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











    
    // 控件行为
    private static void ControlAction() {
        //关闭卡密验证系统的普通按钮的点击事件
        Button offYZ = activity.findViewById(R.id.offYZ);
        offYZ.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Resource.audio.playSoundEffect("DanJi1.ogg");
                    Resource.dialog.showToast("[已关闭卡密验证系统]");

                    if (e.linearLayouts != null) {
                        e.linearLayouts.setVisibility(View.GONE);
                    }
                    GameMenu.getMenu(aContext).Equation(true);
                    GameMenu.button1.setText("开发者模式：已关闭卡密验证系统");
                }
            });







        //显隐屏幕绘制信息的普通按钮的点击事件
        final Button ycDrawText = activity.findViewById(R.id.ycDrawText);
        ycDrawText.setOnClickListener(new View.OnClickListener() {
                boolean isKG=true;
                @Override
                public void onClick(View v) {

                    Resource.audio.playSoundEffect("DanJi1.ogg");
                    int index=0;
                    if (Tools.drawTexts != null) {

                        for (TextView drawText:Tools.drawTexts) {

                            if (drawText != null) {
                                ++index;
                                drawText.setVisibility(isKG ?View.GONE: View.VISIBLE);
                            }
                        }

                    }
                    if (index != 0) {
                        ycDrawText.setText((!isKG ?"隐藏": "显示") + "屏幕上绘制的所有信息");
                        Resource.dialog.showToast("[" + (isKG ?"已隐藏屏幕上的" + index + "个信息": "已在屏幕上绘制" + index + "个信息]"));
                        isKG = !isKG;
                    } else {
                        Resource.dialog.showToast("检测到屏幕上没有绘制信息+_+");
                    }



                }
            });




        //显示悬浮窗口区域的复选框的点击事件
        CheckBox showCK = activity.findViewById(R.id.showCK);
        showCK.setOnClickListener(new View.OnClickListener() {
                boolean isKG=true;
                @Override
                public void onClick(View v) {
                    Resource.audio.playSoundEffect("DanJi1.ogg");

                    //悬浮球
                    if (SuspendedBall.rootLayout != null) {
                        SuspendedBall.rootLayout.setBackground(isKG ?new ColorDrawable(0xFFFF00FF): new ColorDrawable(0));
                    }
                    //悬浮窗i
                    if (GameMenu.main != null) {
                        GameMenu.main.setBackground(isKG ?new ColorDrawable(0xFFFF00FF): GameMenu.mainBackground);
                        //GameMenu.updateView();
                    }
                    isKG = !isKG;

                }
            });


            
            
        //启动MIUI性能模式的复选框的点击事件
        CheckBox trueMiui = activity.findViewById(R.id.trueMiui);
        trueMiui.setOnClickListener(new View.OnClickListener() {

                @Override
                public void onClick(View v) {
                    Resource.audio.playSoundEffect("DanJi1.ogg");
                    Tools.trueMIUI(Main.activity);
                }
            });





        //拖动条公用对象
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
            LinearLayout.LayoutParams.MATCH_PARENT,
            LinearLayout.LayoutParams.WRAP_CONTENT);
        GradientDrawable background = new GradientDrawable();
        background.setCornerRadius(Tools.convertDpToPx(aContext, 8));
        background.setColor(0xCEFF8A00);// 背景颜色 其他搭配：0xCE6487FF
        background.setStroke(3, 0xFFFFFFFF);// 边框厚度与描边颜色 其他搭配：0xFFFFFFFF



        //设置窗口宽的拖动条的相关事件
        final SeekBar seekBar = activity.findViewById(R.id.ckK);
        seekBar.setLayoutParams(params);//设置布局参数
        seekBar.setPadding(30, 0, 30, 0);
        seekBar.setBackground(background);//设置拖动条背景
        // 设置滑块颜色
        seekBar.setThumbTintList(ColorStateList.valueOf(0xBF003FFF));//其他搭配颜色0xD000FF00
        // 设置滑条开启状态颜色
        seekBar.setProgressTintList(ColorStateList.valueOf(0xBF003FFF));//其他搭配颜色0xD000FF00
        seekBar.setMax(metricsWidth);//设置拖动条最大值为当前屏幕宽度
        seekBar.setMin(-2);//设置拖动条最小值
        seekBar.setProgress(M_Width);//设置拖动条默认进度
        final TextView textView=activity.findViewById(R.id.ckK_Text);
        textView.setText(Html.fromHtml("悬浮窗口 宽" + "：<font color='#00BF63'>" + M_Width + "px </font>(临时)"));

        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
                @Override
                public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                    // 当进度改变时调用此方法
                    //更新UI
                    textView.setText(Html.fromHtml("悬浮窗口 宽" + "：<font color='#00BF63'>" + progress + "px </font>(临时)"));      
                    //设置窗口宽度为当前值
                    GameMenu.wParams.width = progress;
                    //更新窗口
                    GameMenu.getMenu(aContext).updateView();

                }

                @Override
                public void onStartTrackingTouch(SeekBar seekBar) {
                    // 当开始拖动SeekBar时调用此方法

                    //只有当悬浮窗口存在布局时才动态调整
                    /*if(!GameMenu.isView){
                     Resource.dialog.showToast("未显示悬浮窗哦 可以点击悬浮球打开悬浮窗+_+");
                     //结束拖动
                     seekBar.setPressed(false);
                     return;
                     }*/
                }

                @Override
                public void onStopTrackingTouch(SeekBar seekBar) {
                    // 当停止拖动SeekBar时调用此方法
                    Resource.dialog.showToast("设置成功！注意：这是临时设置 不会保存哦^O^");

                }
            });






        //设置窗口高的拖动条的相关事件
        final SeekBar seekBar2 = activity.findViewById(R.id.ckG);
        seekBar2.setLayoutParams(params);//设置布局参数
        seekBar.setPadding(30, 0, 30, 0);
        seekBar2.setBackground(background);//设置拖动条背景
        // 设置滑块颜色
        seekBar2.setThumbTintList(ColorStateList.valueOf(0xBF003FFF));//其他搭配颜色0xD000FF00
        // 设置滑条开启状态颜色
        seekBar2.setProgressTintList(ColorStateList.valueOf(0xBF003FFF));//其他搭配颜色0xD000FF00
        seekBar2.setMax(metricsHeight);//设置拖动条最大值为当前屏幕高度
        seekBar2.setMin(-2);//设置拖动条最小值
        seekBar2.setProgress(M_Height);//设置拖动条默认进度

        final TextView textView2=activity.findViewById(R.id.ckG_Text);
        textView2.setText(Html.fromHtml("悬浮窗口 高" + "：<font color='#00BF63'>" + M_Height + "px </font>(临时)"));

        seekBar2.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
                @Override
                public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                    // 当进度改变时调用此方法
                    //更新UI
                    textView2.setText(Html.fromHtml("悬浮窗口 高" + "：<font color='#00BF63'>" + progress + "px </font>(临时)"));                 
                    //设置窗口宽度为当前值
                    GameMenu.wParams.height = progress;
                    //更新窗口
                    GameMenu.getMenu(aContext).updateView();
                }

                @Override
                public void onStartTrackingTouch(SeekBar seekBar) {
                    // 当开始拖动SeekBar时调用此方法

                    //只有当悬浮窗口存在布局时才动态调整
                    /* if(!GameMenu.isView){
                     Resource.dialog.showToast("未显示悬浮窗哦 可以点击悬浮球打开悬浮窗+_+");
                     //结束拖动
                     seekBar.setPressed(false);
                     return;
                     }*/
                }

                @Override
                public void onStopTrackingTouch(SeekBar seekBar) {
                    // 当停止拖动SeekBar时调用此方法
                    Resource.dialog.showToast("设置成功！注意：这是临时设置 不会保存哦^O^");

                }
            });






        //恢复悬浮窗口宽高的普通按钮的点击事件
        Button hfCK = activity.findViewById(R.id.hfCK);
        //hfCK.setBackground(background);

        hfCK.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Resource.audio.playSoundEffect("DanJi1.ogg"); 

                    //只有当悬浮窗口存在布局时才动态调整
                    /* if(!GameMenu.isView){
                     Resource.dialog.showToast("未显示悬浮窗哦 可以点击悬浮球打开悬浮窗+_+");
                     return;
                     }*/

                    seekBar.setProgress(M_Width);//设置拖动条1默认进度为当前窗口宽度
                    seekBar2.setProgress(M_Height);//设置拖动条2默认进度为当前窗口高度
                    Resource.dialog.showToast("[已恢复悬浮窗口宽高 仅临时恢复]");
                    //设置窗口宽度为默认值
                    GameMenu.wParams.width = M_Width;
                    //设置窗口宽度为默认值
                    GameMenu.wParams.height = M_Height;
                    //更新窗口
                    GameMenu.getMenu(aContext).updateView();

                }
            });




    }


}
