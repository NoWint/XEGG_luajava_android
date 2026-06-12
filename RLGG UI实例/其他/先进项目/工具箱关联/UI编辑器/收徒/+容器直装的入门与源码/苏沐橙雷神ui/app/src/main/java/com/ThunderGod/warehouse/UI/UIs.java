package com.ThunderGod.warehouse.UI;
import android.widget.LinearLayout;
import com.ThunderGod.warehouse.*;
import com.ThunderGod.warehouse.UI.*;
import android.content.Context;
import android.widget.PopupWindow;
import android.view.View;
import android.widget.Toast;
import android.widget.TextView;
import android.app.Activity;
import android.widget.ProgressBar;
public class UIs {
    public static boolean pvp=true;
    public static boolean move=false;
    public static boolean player=false;
    public static boolean interfaces=false;
    
    public static boolean gj1=false;
    public static boolean gj2=false;
    
    public static boolean yd1=false;
    
    public static boolean pl1=false;
    
    public static boolean st1=false;

    

    public static PopupWindow FPUIb;
    public static LinearLayout FPUI4;
    // public static LinearLayout FPUI6;

    public static void FPUI(final Activity context) {
        //final int mode=1;
        final LinearLayout FPUI=TView.TView(context, null, "CC", 1, (int)(TGmixed.W(context)), (int)(TGmixed.H(context)), "#22000000", 0, "RT", 0, null, 
            new View.OnLongClickListener(){
                @Override
                public boolean onLongClick(View view1) {
                    FPUIb.dismiss();
                    UI.UI(context);
                    return true;
                }}
        );
        final LinearLayout FPUI1=TView.TView(context, FPUI, "CC", 1, (int)(TGmixed.W(context) * 0.7), (int)(TGmixed.H(context) * 0.88), "#ffffff", 40, "RT", 0, null, null);
        final LinearLayout FPUI2=TView.TView(context, FPUI1, "CC", 1, (int)(TGmixed.W(context) * 0.7), (int)(TGmixed.H(context) * 0.1), "#ffffff", 40, "RT", 0, null, null);
        final LinearLayout FPUI3=TView.TView(context, FPUI1, "CC", 0, (int)(TGmixed.W(context) * 0.7), (int)(TGmixed.H(context) * 0.75), "#00000000", 40, "RT", 0, null, null);
        final TextView FP4atext14= Ttext.Ttext(context, null , "攻击", 20, "#000000", "CC", "#000000", 0, 1, 1);
        final TextView FPtext= Ttext.Ttext(context, FPUI2 , "Alpaadm", 20, "#000000", "CC", "#000000", 0, 1, 1);

        final LinearLayout FPUI4=TView.TView(context, FPUI3, "CC", 1, (int)(TGmixed.W(context) * 0.17), (int)(TGmixed.H(context) * 0.75), "#00000000", 40, "RT", 0, null, null);

        final LinearLayout FPUI4a=TView.TView(context, FPUI4, "CC", 0, (int)(TGmixed.W(context) * 0.16), (int)(TGmixed.H(context) * 0.175), "#00000000", 40, "RT", 0, null, null);
        final TextView FP4atext= Ttext.Ttext(context, FPUI4a , TGmixed.FontColor("§l攻击"), 20, "#000000", "CC", "#000000", 0, 1, 1);

        final LinearLayout FPUI4b=TView.TView(context, FPUI4, "CC", 0, (int)(TGmixed.W(context) * 0.16), (int)(TGmixed.H(context) * 0.175), "#00000000", 40, "RT", 0, null, null);
        final TextView FP4btext= Ttext.Ttext(context, FPUI4b , TGmixed.FontColor("§l移动"), 20, "#000000", "CC", "#000000", 0, 1, 1);


        final LinearLayout FPUI4c=TView.TView(context, FPUI4, "CC", 0, (int)(TGmixed.W(context) * 0.16), (int)(TGmixed.H(context) * 0.175), "#00000000", 40, "RT", 0, null, null);
        final TextView FP4ctext= Ttext.Ttext(context, FPUI4c , TGmixed.FontColor("§l生存"), 20, "#000000", "CC", "#000000", 0, 1, 1);

        final LinearLayout FPUI4d=TView.TView(context, FPUI4, "CC", 0, (int)(TGmixed.W(context) * 0.16), (int)(TGmixed.H(context) * 0.175), "#00000000", 40, "RT", 0, null, null);
        final TextView FP4dtext= Ttext.Ttext(context, FPUI4d , TGmixed.FontColor("§l界面"), 20, "#000000", "CC", "#000000", 0, 1, 1);

        final LinearLayout FPUI5=TView.TView(context, FPUI3, "CC", 0, (int)(TGmixed.W(context) * 0.53), (int)(TGmixed.H(context) * 0.75), "#f4f4f4", 40, "RT", 0, null, null);
        final LinearLayout FPUI6=TView.TView(context, FPUI5, "CC", 0, (int)(TGmixed.W(context) * 0.52), (int)(TGmixed.H(context) * 0.73), "#ffffff", 40, "RT", 0, null, null);

        //攻击
        final LinearLayout FPUI7=TView.TView(context, null, "CC", 0, (int)(TGmixed.W(context) * 0.52), (int)(TGmixed.H(context) * 0.73), "#ffffff", 40, "RT", 0, null, null);

        final LinearLayout FPUI7s=TView.TViewSV(context, FPUI7, (int)(TGmixed.W(context) * 0.51), (int)(TGmixed.H(context) * 0.72), "#00000000", 40, "RT", 0);

        Switchbut.Switchbut(context,FPUI7s,"测试",gj1,new View.OnClickListener(){  
                @Override
                public void onClick(View view) {
                    if (gj1 == false) {
                        gj1 = true;
                    } else {
                        gj1 = false;
                    }
                }});

        //移动
        final LinearLayout FPUI8=TView.TView(context, null, "CC", 0, (int)(TGmixed.W(context) * 0.52), (int)(TGmixed.H(context) * 0.73), "#ffffff", 40, "RT", 0, null, null);

        final LinearLayout FPUI8s=TView.TViewSV(context, FPUI8, (int)(TGmixed.W(context) * 0.51), (int)(TGmixed.H(context) * 0.72), "#00000000", 40, "RT", 0);

        Switchbut.Switchbut(context,FPUI8s,"测试",yd1,new View.OnClickListener(){  
                @Override
                public void onClick(View view) {
                    if (yd1 == false) {
                        yd1 = true;
                    } else {
                        yd1 = false;
                    }
                }});
          
        
        //生存
        final LinearLayout FPUI9=TView.TView(context, null, "CC", 0, (int)(TGmixed.W(context) * 0.52), (int)(TGmixed.H(context) * 0.73), "#ffffff", 40, "RT", 0, null, null);

        final LinearLayout FPUI9s=TView.TViewSV(context, FPUI9, (int)(TGmixed.W(context) * 0.51), (int)(TGmixed.H(context) * 0.72), "#00000000", 40, "RT", 0);

        Switchbut.Switchbut(context,FPUI9s,"测试",pl1,new View.OnClickListener(){  
                @Override
                public void onClick(View view) {
                    if (pl1 == false) {
                        pl1 = true;
                    } else {
                        pl1 = false;
                    }
                }});
        //界面
        final LinearLayout FPUIx=TView.TView(context, null, "CC", 0, (int)(TGmixed.W(context) * 0.52), (int)(TGmixed.H(context) * 0.73), "#ffffff", 40, "RT", 0, null, null);

        final LinearLayout FPUIxs=TView.TViewSV(context, FPUIx, (int)(TGmixed.W(context) * 0.51), (int)(TGmixed.H(context) * 0.72), "#00000000", 40, "RT", 0);

        Switchbut.Switchbut(context,FPUIxs,"ModScript",st1,new View.OnClickListener(){  
                @Override
                public void onClick(View view) {
                    if (st1 == false) {
                        st1 = true;
                        ModScript.ModScript(context);
                        Notice.Notice(context,"ModScript:开启");
                    } else {
                        st1 = false;
                        ModScript.ModScriptUI.dismiss();
                        Notice.Notice(context,"ModScript:关闭");
                    }
                }});
        //攻击
        FPUI4a.setOnClickListener(new View.OnClickListener() {

                @Override
                public void onClick(View view) {
                    if (move == true) {
                        FPUI6.removeView(FPUI8);
                        local.ObjectAnimatorofInt(FP4btext, 500, "textColor", roundRect.hexColor("#9198e5"), roundRect.hexColor("#000000"), false, true, "RESTART", 0);
                        FP4btext.setTextColor(roundRect.hexColor("#000000"));
                        move = false;
                    }
                    if(player==true){
                        FPUI6.removeView(FPUI9);
                        local.ObjectAnimatorofInt(FP4ctext, 500, "textColor", roundRect.hexColor("#9198e5"), roundRect.hexColor("#000000"), false, true, "RESTART", 0);
                        FP4ctext.setTextColor(roundRect.hexColor("#000000"));
                        player = false;
                    }
                    if(interfaces==true){
                        FPUI6.removeView(FPUIx);
                        local.ObjectAnimatorofInt(FP4dtext, 500, "textColor", roundRect.hexColor("#9198e5"), roundRect.hexColor("#000000"), false, true, "RESTART", 0);
                        FP4dtext.setTextColor(roundRect.hexColor("#000000"));
                        interfaces = false;
                    }
                    if (pvp == false) {
                        FPUI6.addView(FPUI7);
                        local.UIPlumb(FPUI7, -200, 0, 300);
                        local.ObjectAnimatorofInt(FP4atext, 500, "textColor", roundRect.hexColor("#000000"), roundRect.hexColor("#9198e5"), false, true, "RESTART", 0);
                        FP4atext.setTextColor(roundRect.hexColor("#9198e5"));
                        pvp = true;
                    }

                }
            });
        //移动
        FPUI4b.setOnClickListener(new View.OnClickListener() {

                @Override
                public void onClick(View view) {
                    if (pvp == true) {
                        FPUI6.removeView(FPUI7);
                        local.ObjectAnimatorofInt(FP4atext, 500, "textColor", roundRect.hexColor("#9198e5"), roundRect.hexColor("#000000"), false, true, "RESTART", 0);
                        FP4atext.setTextColor(roundRect.hexColor("#000000"));
                        pvp = false;
                    }
                    if(player==true){
                        FPUI6.removeView(FPUI9);
                        local.ObjectAnimatorofInt(FP4ctext, 500, "textColor", roundRect.hexColor("#9198e5"), roundRect.hexColor("#000000"), false, true, "RESTART", 0);
                        FP4ctext.setTextColor(roundRect.hexColor("#000000"));
                        player = false;
                    }
                    if(interfaces==true){
                        FPUI6.removeView(FPUIx);
                        local.ObjectAnimatorofInt(FP4dtext, 500, "textColor", roundRect.hexColor("#9198e5"), roundRect.hexColor("#000000"), false, true, "RESTART", 0);
                        FP4dtext.setTextColor(roundRect.hexColor("#000000"));
                        interfaces = false;
                    }
                    if (move == false) {
                        FPUI6.addView(FPUI8);
                        local.UIPlumb(FPUI8, -200, 0, 300);
                        local.ObjectAnimatorofInt(FP4btext, 500, "textColor", roundRect.hexColor("#000000"), roundRect.hexColor("#9198e5"), false, true, "RESTART", 0);
                        FP4btext.setTextColor(roundRect.hexColor("#9198e5"));
                        move = true;
                    }

                }
            });
        //玩家
        FPUI4c.setOnClickListener(new View.OnClickListener() {

                @Override
                public void onClick(View view) {
                    if (pvp == true) {
                        FPUI6.removeView(FPUI7);
                        local.ObjectAnimatorofInt(FP4atext, 500, "textColor", roundRect.hexColor("#9198e5"), roundRect.hexColor("#000000"), false, true, "RESTART", 0);
                        FP4atext.setTextColor(roundRect.hexColor("#000000"));
                        pvp = false;
                    }
                    if (move == true) {
                        FPUI6.removeView(FPUI8);
                        local.ObjectAnimatorofInt(FP4btext, 500, "textColor", roundRect.hexColor("#9198e5"), roundRect.hexColor("#000000"), false, true, "RESTART", 0);
                        FP4btext.setTextColor(roundRect.hexColor("#000000"));
                        move = false;
                    }
                    if(interfaces==true){
                        FPUI6.removeView(FPUIx);
                        local.ObjectAnimatorofInt(FP4dtext, 500, "textColor", roundRect.hexColor("#9198e5"), roundRect.hexColor("#000000"), false, true, "RESTART", 0);
                        FP4dtext.setTextColor(roundRect.hexColor("#000000"));
                        interfaces = false;
                    }
                    if (player == false) {
                        FPUI6.addView(FPUI9);
                        local.UIPlumb(FPUI9, -200, 0, 300);
                        local.ObjectAnimatorofInt(FP4ctext, 500, "textColor", roundRect.hexColor("#000000"), roundRect.hexColor("#9198e5"), false, true, "RESTART", 0);
                        FP4ctext.setTextColor(roundRect.hexColor("#9198e5"));
                        player = true;
                    }

                }
            });
        //界面
        FPUI4d.setOnClickListener(new View.OnClickListener() {

                @Override
                public void onClick(View view) {
                    if (pvp == true) {
                        FPUI6.removeView(FPUI7);
                        local.ObjectAnimatorofInt(FP4atext, 500, "textColor", roundRect.hexColor("#9198e5"), roundRect.hexColor("#000000"), false, true, "RESTART", 0);
                        FP4atext.setTextColor(roundRect.hexColor("#000000"));
                        pvp = false;
                    }
                    if (move == true) {
                        FPUI6.removeView(FPUI8);
                        local.ObjectAnimatorofInt(FP4btext, 500, "textColor", roundRect.hexColor("#9198e5"), roundRect.hexColor("#000000"), false, true, "RESTART", 0);
                        FP4btext.setTextColor(roundRect.hexColor("#000000"));
                        move = false;
                    }
                    if(player==true){
                        FPUI6.removeView(FPUI9);
                        local.ObjectAnimatorofInt(FP4ctext, 500, "textColor", roundRect.hexColor("#9198e5"), roundRect.hexColor("#000000"), false, true, "RESTART", 0);
                        FP4ctext.setTextColor(roundRect.hexColor("#000000"));
                        player = false;
                    }
                    if (interfaces == false) {
                        FPUI6.addView(FPUIx);
                        local.UIPlumb(FPUIx, -200, 0, 300);
                        local.ObjectAnimatorofInt(FP4dtext, 500, "textColor", roundRect.hexColor("#000000"), roundRect.hexColor("#9198e5"), false, true, "RESTART", 0);
                        FP4dtext.setTextColor(roundRect.hexColor("#9198e5"));
                        interfaces = true;
                    }

                }
            });
        if (pvp == true) {
            FPUI6.addView(FPUI7);
            FP4atext.setTextColor(roundRect.hexColor("#9198e5"));
        }
        if (move == true) {
            FPUI6.addView(FPUI8);
            FP4btext.setTextColor(roundRect.hexColor("#9198e5"));
        }
        if (player == true) {
            FPUI6.addView(FPUI9);
            FP4ctext.setTextColor(roundRect.hexColor("#9198e5"));
        }
        if (interfaces == true) {
            FPUI6.addView(FPUIx);
            FP4dtext.setTextColor(roundRect.hexColor("#9198e5"));
        }
        local.UIFadein(FPUI, 0, 100, 400);
        local.UIPlumb(FPUI, 20, 0, 400);
        local.UIZoom(FPUI, "TP", 1.05f, 1, 400);
        FPUIb = Tpopup.TCdv(FPUI, FPUI, "CC", false, true, true, false, (int)(TGmixed.W(context)), (int)(TGmixed.H(context)), "Di", 0, 0);
    }


}
