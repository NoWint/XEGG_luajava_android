package com.ThunderGod.warehouse;
import android.widget.PopupWindow;
import android.widget.LinearLayout;
import android.view.Gravity;
import android.view.View;

public class Tpopup {

	public static PopupWindow TCdv(View decorView,LinearLayout layout,String gravity,Boolean fa,Boolean ta,Boolean ca,Boolean oa,Object w, Object h,String anim,Object X,Object Y) {
    final PopupWindow popupWindow = new PopupWindow(layout,android.widget.RelativeLayout.LayoutParams.WRAP_CONTENT,android.widget.RelativeLayout.LayoutParams.WRAP_CONTENT);
	popupWindow.setContentView(layout);
	if(anim==null || anim=="Di"){
	popupWindow.setAnimationStyle(android.R.style.Animation_Dialog);
    }else if(anim=="In"){
	popupWindow.setAnimationStyle(android.R.style.Animation_InputMethod);
	}else if(anim=="To"){
	popupWindow.setAnimationStyle(android.R.style.Animation_Toast);
	}else if(anim=="Tr"){
	popupWindow.setAnimationStyle(android.R.style.Animation_Translucent);
	}else if(anim=="Ac"){
	popupWindow.setAnimationStyle(android.R.style.Animation_Activity);
    }
	popupWindow.setFocusable(fa);//可返回关闭
	popupWindow.setTouchable(ta);//可触摸的
	popupWindow.setClippingEnabled(ca);//允许弹出窗口超出屏幕范围
	popupWindow.setOutsideTouchable(oa);//设置点击外部区域可以取消popupWindow
	if(w!=null){
	popupWindow.setWidth(w);
	}
	if(h!=null){
	popupWindow.setHeight(h);
	}
	if(gravity=="CT"){
    popupWindow.showAtLocation(decorView, Gravity.CENTER | Gravity.TOP,X,Y);
	}else if(gravity=="CC"){
	popupWindow.showAtLocation(decorView, Gravity.CENTER | Gravity.CENTER,X,Y);
	}else if(gravity=="CB"){
	popupWindow.showAtLocation(decorView, Gravity.CENTER | Gravity.BOTTOM,X,Y);
	}else if(gravity=="LT"){
	popupWindow.showAtLocation(decorView, Gravity.LEFT | Gravity.TOP,X,Y);
	}else if(gravity=="LC"){
	popupWindow.showAtLocation(decorView, Gravity.LEFT | Gravity.CENTER,X,Y);
	}else if(gravity=="LB"){
	popupWindow.showAtLocation(decorView, Gravity.LEFT | Gravity.BOTTOM,X,Y);
	}else if(gravity=="RT"){
	popupWindow.showAtLocation(decorView, Gravity.RIGHT | Gravity.TOP,X,Y);
	}else if(gravity=="RC"){
	popupWindow.showAtLocation(decorView, Gravity.RIGHT | Gravity.CENTER,X,Y);
	}else if(gravity=="RB"){
	popupWindow.showAtLocation(decorView, Gravity.RIGHT | Gravity.BOTTOM,X,Y);
	}
	
	return popupWindow;
	}
}
