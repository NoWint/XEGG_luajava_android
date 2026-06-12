package com.relax.mix.newlibrary;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Vibrator;
import android.view.MotionEvent;
import android.view.View;
import com.relax.vapev4.library.Tpopup;
import com.relax.vapev4.library.local;
import load.tencent.lib.GaussianBlur;
public class OpenModBth {
    public static String[] daycm=new String[]{"#ffffff","#f9f9f9","#f4f4f4","#e9e9e9","#000000","#9198e5"};
    private boolean moving=false;
    public static int opMPX=(int)(local.W() * 0.925);
    public static int opMPY=(int)(local.H() * 0.1);
    private Tpopup opGUI;
    private int i=1;
    @SuppressLint("ClickableViewAccessibility")
    public OpenModBth(final Context context) {
        TView op1=new TView(context).WH((int)(local.H() * 0.085), (int)(local.H() * 0.085)).gravity("CC").setBgD(daycm[0], 99, "TB", 0).onClick(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    
                    opGUI.dismiss();
                }
            });
        TView op2=new TView(context).WH((int)(local.H() * 0.055), (int)(local.H() * 0.055)).gravity("CC").setBgD(new String[]{"#e66465","#9198e5"}, 99, "RT", 0).children(op1);
        TView op3=new TView(context).WH((int)(local.H() * 0.03), (int)(local.H() * 0.03)).gravity("CC").setBgD(daycm[0], 99, "TB", 0).children(op2);

        op1.onLongClick(new View.OnLongClickListener() {
                @Override
                public boolean onLongClick(View view) {
                    moving = true;
                    Vibrator vibrator = (Vibrator) context.getSystemService(Context.VIBRATOR_SERVICE);
                    vibrator.vibrate(50L);
                    //local.ClickFX(context, opMPX + (int)(local.H() * 0.0425), opMPY + (int)(local.H() * 0.0425));
                    return true;
                }
            });
        op1.setOnTouchListener(new View.OnTouchListener() {
                private float lastX; //上一次位置的X.Y坐标
                private float lastY;

                @Override
                public boolean onTouch(View view, MotionEvent event) {
                    int action = event.getAction();
                    if (action == MotionEvent.ACTION_DOWN) {
                        //点击
                        lastX = (int) event.getRawX();
                        lastY = (int) event.getRawY();
                    } else if (action == MotionEvent.ACTION_MOVE && moving) {
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
                        opGUI.update(opMPX, opMPY, -1, -1);
                        lastX = (int) nowX;
                        lastY = (int) nowY;
                    } else if (action == MotionEvent.ACTION_UP) {
                        moving = false;
                    }
                    return false;
                }
            });
        opGUI = new Tpopup().WH((int)(local.H() * 0.085), (int)(local.H() * 0.085)).SF(false).ST(true).SC(true).SO(false).Anim("In").gravity(op1, "LT", opMPX, opMPY);
        opGUI.setElevation(5);
    }
}
