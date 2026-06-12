package com.relax.vapev4.library;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.media.MediaPlayer;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/*
by:ThunderGod
Date:23/4/30
Time:16:50
*/
public class DragButton {
    public boolean canmove=false;
    public TView Drag;
    public TView Drag1;
    public TView Drag2;
    public TView Draga;
    public Ttext Dragtext;
    public static Map<LinearLayout,Boolean> Dragif=new HashMap<>();
    public static Map<LinearLayout,Boolean> Dragif2=new HashMap<>();

    public static Tpopup[] ButCDV=new Tpopup[999];

    public static int A;
    public static int Xs;
    public static int Ys;
    private MediaPlayer mediaPlayer;
    @SuppressLint("ClickableViewAccessibility")
    /*快捷按钮*/
    /*a每次填都是不一样的
    * text文本
    * W长度
    * H宽度
    * change：true为变化，false不变化
    * Dragif1 判断是t还是f
    * click是写点击事件的
    * X按钮X轴
    * Y按钮Y轴
    * */
    /*click写法例子*/
    /*1.change为true时的写法
    Android studio支持的写法
    * view -> {
            if (变量 == false) {
                变量 = true;
            }else {
                变量 = false;
            }}
     AIDE支持的写法
    * new View.OnClickListener(){
    @Override
    public void onClick(View view) {
    if (变量 == false) {
                变量 = true;
            }else {
                变量 = false;
            }
    }}
    *2.change为false时写法
    * view -> {
    }
    * new View.OnClickListener(){
    @Override
    public void onClick(View view) {
    }}
    * */
    public DragButton(final Context context,final int a,String text, int W, int H, final boolean change,boolean Dragif1,final View.OnClickListener click,final int X, final int Y){
        //final Map<LinearLayout,Boolean> Dragif=new HashMap<>();
        A=a;
        Xs=X;
        Ys=Y;
        if (ButCDV[a]!=null){
            ButCDV[a].dismiss();
            ButCDV[a]=null;
        }else if (ButCDV[a]==null) {
            Drag = new TView(context).gravity("CC").WH(W + (int) (local.H() * 0.08), H + (int) (local.H() * 0.08)).ori(0).setBgD("#00000000", 10, "TB", 0);
            Draga = new TView(context).gravity("CC").WH(W, H).ori(0).setBgD("#00000000", 10, "TB", 0).children(Drag);
            Drag1 = new TView(context).gravity("CC").WH(W, H).ori(0).setBgD("#e1e1e1", 10, "TB", 0).children(Draga);
            Dragtext = new Ttext(context).gravity("CC").Text(local.FontColor("§l"+text)).Size(15).Color("#e66465").children(Drag1);
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                //Draga.setElevation(10);
            }
            Drag1.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        if(change) {
                            if(!Boolean.TRUE.equals(Dragif.get(Drag1))){
                                on(context);
                                local.ObjectAnimator(Dragtext,"ofInt",200,"textColor",local.hexColor("#c1c1c1"),local.hexColor("#484848"),false,true,"RESTART",0);
                                local.ValueAnimatorAGB(Drag1,local.hexColor("#1e1e1e"),local.hexColor("#ffffff"),200,0,10,"TB");
                                Dragif.put(Drag1,true);
                            }else {
                                off(context);
                                local.ObjectAnimator(Dragtext,"ofInt",200,"textColor",local.hexColor("#484848"),local.hexColor("#c1c1c1"),false,true,"RESTART",0);
                                local.ValueAnimatorAGB(Drag1,local.hexColor("#ffffff"),local.hexColor("#1e1e1e"),200,0,10,"TB");
                                Dragif.put(Drag1,false);
                            }
                        }
                        if(click!=null) {
                            click.onClick(view);
                        }
                    }
            });
            if (!Dragif1) {
                Dragif.put(Drag1,false);
                Dragtext.setTextColor(local.hexColor("#c1c1c1"));
                Drag1.setBgD("#1e1e1e",10,"TB",0);
            }else{
                Dragif.put(Drag1,true);
                Dragtext.setTextColor(local.hexColor("#484848"));
                Drag1.setBgD("#ffffff",10,"TB",0);
            }
            Drag1.setOnTouchListener(new View.OnTouchListener() {
                private float lastX; //上一次位置的X.Y坐标
                private float lastY;
                private int opMPX = X;
                private int opMPY = Y;
                @Override
                public boolean onTouch(View view, MotionEvent event) {
                    int action = event.getAction();
                    if (action == MotionEvent.ACTION_DOWN) {
                        //点击
                        lastX = (int) event.getRawX();
                        lastY = (int) event.getRawY();
                    } else if (action == MotionEvent.ACTION_MOVE) {
                        //移动
                        //当前移动位置的X.Y坐标
                        float nowX = (int) event.getRawX();
                        float nowY = (int) event.getRawY();
                        // 计算XY坐标偏移量
                        //悬浮窗移动位置的相对值
                        float tranX = (int) (nowX) - (int) (lastX);//*-1/10;
                        float tranY = (int) (nowY) - (int) (lastY);//*-1/10;
                        opMPX += tranX;
                        opMPY += tranY;
                        ButCDV[a].update(opMPX, opMPY, -1, -1);
                        lastX = (int) nowX;
                        lastY = (int) nowY;
                    }
                    return false;
                }
            });
            ButCDV[a] = new Tpopup().WH(W + (int) (local.H() * 0.08), H + (int) (local.H() * 0.08)).SC(false).SO(false).SF(false).ST(true).Anim("Di").gravity(Drag, "CC", X, Y);
        }
    }
    private void on(Context context){
        mediaPlayer = new MediaPlayer();
        // 打开 assets 文件夹中的音乐文件
        AssetManager assetManager = context.getAssets();
        try {
            AssetFileDescriptor assetFileDescriptor = assetManager.openFd("sounds/on.mp3");
            // 将音乐文件设置为 MediaPlayer 对象的数据源
            mediaPlayer.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
            // 准备音乐文件的播放
            mediaPlayer.prepare();
            // 开始播放音乐
            mediaPlayer.start();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void off(Context context){
        mediaPlayer = new MediaPlayer();
        // 打开 assets 文件夹中的音乐文件
        AssetManager assetManager = context.getAssets();
        try {
            AssetFileDescriptor assetFileDescriptor = assetManager.openFd("sounds/off.mp3");
            // 将音乐文件设置为 MediaPlayer 对象的数据源
            mediaPlayer.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
            // 准备音乐文件的播放
            mediaPlayer.prepare();
            // 开始播放音乐
            mediaPlayer.start();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
     public static int addint=1;



    /*添加按钮传参的值与上面一致*/
    public DragButton addbutton(String text,int W, int H,final boolean change,boolean Dragif1,final View.OnClickListener click){

        if (ButCDV[A]==null){

        }else if (ButCDV[A]!=null) {
            int add=addint+=1;
            TView Dragb = new TView(Drag.getContext()).gravity("CC").WH(local.dip2px(2), H).ori(0).setBgD("#f4f4f4f4", 30, "TB", 0).children(Draga);
            Drag2 = new TView(Drag.getContext()).gravity("CC").WH(W, H).ori(0).setBgD("#FFFAFAFA", 30, "TB", 0).children(Draga);
            final Ttext Dragaddtext = new Ttext(Drag.getContext()).gravity("CC").Text(local.FontColor("§l" + text)).Size(15).Color("#9198e5").Shadow(5, 1, 1, "#ffffff").children(Drag2);
            Drag2.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view1) {
                    if (change) {
                        if (!Boolean.TRUE.equals(Dragif2.get(Drag2))) {
                            local.ObjectAnimator(Dragaddtext, "ofInt", 300, "textColor", local.hexColor("#000000"), local.hexColor("#9198e5"), false, true, "RESTART", 0);
                            local.ValueAnimatorAGB(Drag2,local.hexColor("#FFFAFAFA"),local.hexColor("#FFB2B2B2"),300,0,30,"TB");
                            Dragif2.put(Drag2, true);
                        } else {
                            local.ObjectAnimator(Dragaddtext, "ofInt", 300, "textColor", local.hexColor("#9198e5"), local.hexColor("#000000"), false, true, "RESTART", 0);
                            local.ValueAnimatorAGB(Drag1,local.hexColor("#FFB2B2B2"),local.hexColor("#FFFAFAFA"),300,0,30,"TB");
                            Dragif2.put(Drag2, false);
                        }
                    }
                    if (click != null) {
                        click.onClick(view1);
                    }
                }
            });
            if (!Dragif1) {
                Dragif2.put(Drag2, false);
                Dragaddtext.setTextColor(local.hexColor("#9198e5"));
                Drag2.setBgD("#FFB2B2B2",30,"TB",0);
            } else {
                Dragif2.put(Drag2, true);
                Dragaddtext.setTextColor(local.hexColor("#FFFAFAFA"));
                Drag2.setBgD("#FFFAFAFA",30,"TB",0);
            }
            Drag.setLayoutParams(new FrameLayout.LayoutParams(W * add + (int) (local.H() * 0.08) * add + local.dip2px(2), H + (int) (local.H() * 0.08)));
            Draga.setLayoutParams(new LinearLayout.LayoutParams(W * add + local.dip2px(2) * add, H));
            ButCDV[A].setWidth(W * add + (int) (local.H() * 0.08) * add);
            ButCDV[A].update(Xs, Ys, W * add + (int) (local.H() * 0.08) * add + local.dip2px(2), H + (int) (local.H() * 0.08));
        }
            return this;
    }
}
