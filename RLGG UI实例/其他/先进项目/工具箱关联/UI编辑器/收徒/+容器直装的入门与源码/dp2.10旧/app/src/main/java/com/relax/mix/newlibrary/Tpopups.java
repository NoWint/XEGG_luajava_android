package com.relax.mix.newlibrary;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.view.Gravity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import com.relax.vapev4.library.SetShadows;
import dev.answer.horizon.library.AnswerUI.CardView.ACardView;
import java.util.Objects;

public abstract class Tpopups extends PopupWindow{
    public Tpopups SF(boolean fa){
        setFocusable(fa);//可返回关闭
        return this;
    }
    public Tpopups ST(boolean ta){
        setTouchable(ta);//可触摸的
        return this;
    }
    public Tpopups SC(boolean ca){
        setClippingEnabled(ca);//允许弹出窗口超出屏幕范围
        return this;
    }
    public Tpopups SO(boolean oa){
        setOutsideTouchable(oa);//设置点击外部区域可以取消popupWindow
        return this;
    }
    /*动画*/
    public Tpopups Anim(String anim){
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
    public Tpopups gravity(View view, String gravity, Object X, Object Y){
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
/*
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            setWindowLayoutType(WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY);
        }else {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                setWindowLayoutType(WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);
            }
        }

 */
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
    /*pop关闭后运行的内容*/
    public Tpopups DisRun(final OnDismissListener disrun){
        setOnDismissListener(new OnDismissListener() {
            @Override
            public void onDismiss() {
                disrun.onDismiss();
            }
        });
        return this;
    }
    /*长宽*/
    public Tpopups WH(Object W, Object H){
        setWidth((Integer) W);
        setHeight((Integer) H);
        return this;
    }

    public abstract void onDraw(Canvas canvas,int width,int height);
}
