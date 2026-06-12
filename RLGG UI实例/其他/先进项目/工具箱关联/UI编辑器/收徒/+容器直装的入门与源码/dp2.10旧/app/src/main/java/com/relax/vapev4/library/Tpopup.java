package com.relax.vapev4.library;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.PopupWindow;

import java.util.Objects;

import dev.answer.horizon.library.AnswerUI.CardView.ACardView;

public class Tpopup extends PopupWindow{
    public Tpopup SF(boolean fa){
        setFocusable(fa);//可返回关闭
        return this;
    }
    public Tpopup ST(boolean ta){
        setTouchable(ta);//可触摸的
        return this;
    }
    public Tpopup SC(boolean ca){
        setClippingEnabled(ca);//允许弹出窗口超出屏幕范围
        return this;
    }
    public Tpopup SO(boolean oa){
        setOutsideTouchable(oa);//设置点击外部区域可以取消popupWindow
        return this;
    }
    /*动画*/
    public Tpopup Anim(String anim){
        if(anim==null || anim.equals("Di")){
            setAnimationStyle(android.R.style.Animation_Dialog);
        }else if(anim.equals("In")){
            setAnimationStyle(android.R.style.Animation_InputMethod);
        }else if(anim.equals("To")){
            setAnimationStyle(android.R.style.Animation_Toast);
        }else if(anim.equals("Tr")){
            setAnimationStyle(android.R.style.Animation_Translucent);
        }else if(anim.equals("Ac")){
            setAnimationStyle(android.R.style.Animation_Activity);
        }
        return this;
    }
    @SuppressLint("RtlHardcoded")
    /*窗口重心以及XY轴*/
    public Tpopup gravity(View view, String gravity, Object X, Object Y){
        if (view instanceof LinearLayout){
            setContentView((LinearLayout)(view));
        }else if (view instanceof ACardView){
            setContentView((ACardView)(view));
        }else if (view instanceof FrameLayout){
            setContentView((FrameLayout)(view));
        }else if (view instanceof SetShadows){
            setContentView((SetShadows)view);
        }
        /*显示方式*/

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            setWindowLayoutType(WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY);
        }else {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                setWindowLayoutType(WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);
            }
        }
  
        if(Objects.equals(gravity, "CT")){
            showAtLocation(view, Gravity.CENTER | Gravity.TOP, (Integer) X, (Integer) Y);
        }else if(Objects.equals(gravity, "CC")){
            showAtLocation(view, Gravity.CENTER, (Integer) X, (Integer) Y);
        }else if(Objects.equals(gravity, "CB")){
            showAtLocation(view, Gravity.CENTER | Gravity.BOTTOM, (Integer) X, (Integer) Y);
        }else if(Objects.equals(gravity, "LT")){
            showAtLocation(view, Gravity.LEFT | Gravity.TOP, (Integer) X, (Integer) Y);
        }else if(Objects.equals(gravity, "LC")){
            showAtLocation(view, Gravity.LEFT | Gravity.CENTER, (Integer) X, (Integer) Y);
        }else if(Objects.equals(gravity, "LB")){
            showAtLocation(view, Gravity.LEFT | Gravity.BOTTOM, (Integer) X, (Integer) Y);
        }else if(Objects.equals(gravity, "RT")){
            showAtLocation(view, Gravity.RIGHT | Gravity.TOP, (Integer) X, (Integer) Y);
        }else if(Objects.equals(gravity, "RC")){
            showAtLocation(view, Gravity.RIGHT | Gravity.CENTER, (Integer) X, (Integer) Y);
        }else if(Objects.equals(gravity, "RB")){
            showAtLocation(view, Gravity.RIGHT | Gravity.BOTTOM, (Integer) X, (Integer) Y);
        }
        return this;
    }
    /*长宽*/
    public Tpopup WH(Object W,Object H){        
        setWidth(W);
        setHeight(H);
        return this;
    }
}
