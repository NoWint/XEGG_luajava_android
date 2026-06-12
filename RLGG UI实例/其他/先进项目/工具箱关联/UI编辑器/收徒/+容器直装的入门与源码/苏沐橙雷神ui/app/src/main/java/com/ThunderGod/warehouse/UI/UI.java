package com.ThunderGod.warehouse.UI;
import android.widget.LinearLayout;
import com.ThunderGod.warehouse.*;
import com.ThunderGod.warehouse.UI.UIs;
import android.content.Context;
import android.widget.TextView;
import android.view.View;
import android.widget.PopupWindow;
import android.view.MotionEvent;
import com.ThunderGod.warehouse.MainActivity;
import android.os.Vibrator;
import android.app.Activity;
public class UI {
    public static int opMPX,opMPY;
    /*
    private static Context context;
    public static int opMPX=(int)(TGmixed.W(context) * 0.925);
    public static int opMPY=(int)(TGmixed.H(context) * 0.1);
    */
    public static PopupWindow UIS;
    private static boolean canmovew = false;
    //public static int opMPX=0;
    //public static int opMPY=0;
    
    public static void UI(final Activity context){
        
        opMPX=(int)(TGmixed.W(context) * 0.925f);
        opMPY=(int)(TGmixed.H(context) * 0.1f);
        
    final LinearLayout UI=TView.TView(context, null, "CC", 1, (int)(TGmixed.H(context) * 0.1), (int)(TGmixed.H(context) * 0.1),"#00000000", 99, "RT", 0, null, null);
    final LinearLayout UI1=TView.TView(context, UI, "CC", 1, (int)(TGmixed.H(context) * 0.07), (int)(TGmixed.H(context) * 0.07),new String[]{"#d9ded8","#ebc0fd"}, 99, "RT", 0, 
        new View.OnClickListener(){
             @Override
            public void onClick(View view) {
            //UI1.UI1(context);
            UIs.FPUI(context);
            UIS.dismiss();
               }}
        , null);
    final LinearLayout UI2=TView.TView(context, UI1, "CC", 1, (int)(TGmixed.H(context) * 0.03), (int)(TGmixed.H(context) * 0.03),"#ffffff", 99, "RT", 0, null, null);
    UI1.setElevation(12);
    UIS = Tpopup.TCdv(UI, UI, "LT", false, true, true, false, (int)(TGmixed.H(context) * 0.1), (int)(TGmixed.H(context) * 0.1), "Di", opMPX, opMPY);
    UI1.setOnLongClickListener(new View.OnLongClickListener() {
                @Override
                public boolean onLongClick(View view) {
                    canmovew = true;
                    Vibrator vibrator = (Vibrator)context.getSystemService(context.VIBRATOR_SERVICE);//this.VIBRATOR_SERVICE
                    //数组的patter[0]表示静止的时间，patter[1]代表的是震动的时间，然后数组的patter[2]表示静止的时间，patter[3]代表的是震动的时间……依次类推下去  
                    vibrator.vibrate(40);
                local.ClickFX(context,opMPX+(int)(TGmixed.H(context)*0.0425),opMPY+(int)(TGmixed.H(context)*0.0425));
                    return false;
                }
			});
    UI1.setOnTouchListener(new View.OnTouchListener(){
                private float lastX; //上一次位置的X.Y坐标
                private float lastY;
                private float nowX;  //当前移动位置的X.Y坐标
                private float nowY;
                private float tranX; //悬浮窗移动位置的相对值
                private float tranY;
                //private int X1=opMPX;
                //private int Y1=opMPY;
                @Override
                public boolean onTouch(View view, MotionEvent event) {
                    int action = event.getAction();
                    if (action == MotionEvent.ACTION_DOWN) {
                        //点击
                        lastX = (int)event.getRawX();
                        lastY = (int)event.getRawY();
                    } else 
                    if (action == MotionEvent.ACTION_MOVE && canmovew) {
                        //移动
                        nowX = (int)event.getRawX();
                        nowY = (int)event.getRawY();
                        // 计算XY坐标偏移量
                        tranX = (int)(nowX) - (int)(lastX);//*-1/10;
                        tranY = (int)(nowY) - (int)(lastY);//*-1/10;
                        opMPX += tranX;
                        opMPY += tranY;
                        UIS.update(opMPX, opMPY, -1, -1);
                        lastX = (int)nowX;
                        lastY = (int)nowY;
                        //opMPX=X1;
                        //opMPY=X1;
                    }
                    return false;
                }
			});
   }
}


