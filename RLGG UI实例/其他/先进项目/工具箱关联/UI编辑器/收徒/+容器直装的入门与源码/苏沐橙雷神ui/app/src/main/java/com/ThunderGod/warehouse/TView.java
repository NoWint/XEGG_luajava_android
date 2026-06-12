package com.ThunderGod.warehouse;
import android.widget.LinearLayout;
import android.content.Context;
import android.view.View;
import android.graphics.drawable.GradientDrawable;
import android.graphics.Color;
import android.view.Gravity;
import android.app.Activity;
import android.view.View.OnClickListener;
import android.widget.Toast;
import java.util.Set;
import com.ThunderGod.warehouse.*;
import android.view.View.OnLongClickListener;
import android.widget.ScrollView;
import android.os.IBinder;
public class TView {
    public static LinearLayout TView(Context activity, LinearLayout view, String gravity, int ori, Object W, Object H, Object color, Object round, String f, Object s, View.OnClickListener set, View.OnLongClickListener set1) {

		//public static void AViewS(){
		LinearLayout layout = new LinearLayout(activity);
		if (view != null) {
			view.addView(layout);
		}
		//if(!"null".equals(String.valueOf(W))&&!"null".equals(String.valueOf(H))){
		if(W!=null&&H!=null){
		layout.setLayoutParams(new LinearLayout.LayoutParams((int)(W),(int)(H)));
        }
		
		layout.setBackgroundDrawable(roundRect.roundBG(color, round, f, s));

		setClickListener(set, layout);
		setlongClickListener(set1, layout);
		if (gravity == "CT") {
			layout.setGravity(Gravity.CENTER | Gravity.TOP);//重心
		} else if (gravity == "CC") {
			layout.setGravity(Gravity.CENTER | Gravity.CENTER);//重心
		} else if (gravity == "CB") {
			layout.setGravity(Gravity.CENTER | Gravity.BOTTOM);//重心
		} else if (gravity == "LT") {
			layout.setGravity(Gravity.LEFT | Gravity.TOP);//重心
		} else if (gravity == "LC") {
			layout.setGravity(Gravity.LEFT | Gravity.CENTER);//重心
		} else if (gravity == "LB") {
			layout.setGravity(Gravity.LEFT | Gravity.BOTTOM);//重心
		} else if (gravity == "RT") {
			layout.setGravity(Gravity.RIGHT | Gravity.TOP);//重心
		} else if (gravity == "RC") {
			layout.setGravity(Gravity.RIGHT | Gravity.CENTER);//重心
		} else if (gravity == "RT") {
			layout.setGravity(Gravity.RIGHT | Gravity.BOTTOM);//重心
		}

		if (ori == 0) {
			layout.setOrientation(0);
		} else {
			layout.setOrientation(1);
		}
		return layout;
	}
  public static LinearLayout TViewSV(Context context,LinearLayout view,Object W,Object H,Object color,Object round,String f,Object s){
      ScrollView SV=new ScrollView(context);
      if (view != null) {
          view.addView(SV);
          }
       if(W!=null&&H!=null){
          SV.setLayoutParams(new LinearLayout.LayoutParams((int)(W),(int)(H)));
          }
       SV.setBackgroundDrawable(roundRect.roundBG(color, round, f, s));
       //SV.fullScroll(ScrollView.FOCUS_UP);//滚动到顶部
       SV.setVerticalScrollBarEnabled(false);
       final LinearLayout TGUI1s=TView.TView(context,null, "CC", 1,-1,-1,color,round, "RT", 0, null, null);
       SV.addView(TGUI1s);
      return TGUI1s;
  }
  
  
  
  
  
  
	private static void setClickListener(final OnClickListener click, LinearLayout v) {
		if (click != null) {
			v.setOnClickListener(new View.OnClickListener() {
					@Override
					public void onClick(View view) {
						click.onClick(view);
					}
				});
		}
	}
	private static void setlongClickListener(final OnLongClickListener onlong, LinearLayout v) {
		if (onlong != null) {
			v.setOnLongClickListener(new View.OnLongClickListener() {
					@Override
					public boolean onLongClick(View view1) {
						onlong.onLongClick(view1);
						return true;
					}
				});
		}	
	}
	
}
	

