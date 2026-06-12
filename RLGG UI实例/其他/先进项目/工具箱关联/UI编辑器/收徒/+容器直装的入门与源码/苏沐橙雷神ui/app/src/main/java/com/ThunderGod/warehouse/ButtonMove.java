package com.ThunderGod.warehouse;
import com.ThunderGod.warehouse.*;
import android.widget.LinearLayout;
import android.content.Context;
import android.widget.PopupWindow;
import android.view.View;
import android.content.res.Configuration;
import android.view.MotionEvent;
import android.widget.TextView;
import android.view.View.OnClickListener;
import java.util.HashMap;
import java.util.Map;
public class ButtonMove {
	//public static Context context;
	private static boolean canmovew = false;
	private static boolean pd=false;
	int X;   
    int Y;
    public static PopupWindow ButtonMove(final Context context, String text, final int W, final int H, final int MoveX, final int MoveY, final boolean sfyszb, final boolean a2, final OnClickListener click) {
		final int X=MoveX;
		final int Y=MoveY;
        final Map<LinearLayout,Boolean> pd=new HashMap<>();
	    //PopupWindow ButCdv1=ButCdv;
		final LinearLayout ButtonMove=TView.TView(context, null, "CC", 0, W + (int)(H(context) * 0.08), H + (int)(H(context) * 0.08), "#00000000", 30, "RT", 0, null, null);
		final LinearLayout ButtonMove1=TView.TView(context, ButtonMove, "CC", 0, W, H, "#ffffff", 30, "RT", 0, null, null);
		final TextView buttontext=Ttext.Ttext(context, ButtonMove1, text, 15, "#000000", "CC", "#000000", 3, 1, 1);

		ButtonMove1.setOnClickListener(new View.OnClickListener() {
				@Override
				public void onClick(View view) {
					if (sfyszb == true) {
						//setClickListener(set,ButtonMove1);
						if (pd.get(ButtonMove1) == false) {
							pd.put(ButtonMove1, true);
							local.ObjectAnimatorofInt(buttontext, 300, "textColor", roundRect.hexColor("#000000"), roundRect.hexColor("#9198e5"), false, true, "RESTART", 0);
							local.UIZoom(buttontext, "TP", 1.1f, 1, 300);
						} else {
							pd.put(ButtonMove1, false);
							local.ObjectAnimatorofInt(buttontext, 300, "textColor", roundRect.hexColor("#9198e5"), roundRect.hexColor("#000000"), false, true, "REVERSE", 0);
							local.UIZoom(buttontext, "TP", 1.1f, 1, 300);
						}

						if (click != null) {
							click.onClick(view);
						}
					} else {
						//setClickListener(set, ButtonMove1);
						local.UIZoom(buttontext, "TP", 1.1f, 1, 300);
						click.onClick(view);
					}
				}
			});

		if (a2 == true) {
			//setClickListener(set,ButtonMove1);
            pd.put(ButtonMove1, true);
            buttontext.setTextColor(roundRect.hexColor("#9198e5"));
        } else {
            pd.put(ButtonMove1, false);
            buttontext.setTextColor(roundRect.hexColor("#000000"));
        }

		ButtonMove1.setElevation(20);
		local.UIFadein(ButtonMove, 0, 100, 400);
		local.UIPlumb(ButtonMove, 20, 0, 400);
		local.UIZoom(ButtonMove, "TP", 1.1f, 1, 400);
		final PopupWindow ButCdv=Tpopup.TCdv(ButtonMove, ButtonMove, "CC", false, true, true, false, W + (int)(H(context) * 0.08), H + (int)(H(context) * 0.08), "In", X, Y);
		ButtonMove1.setOnLongClickListener(new View.OnLongClickListener() {
				@Override
				public boolean onLongClick(View view) {

					canmovew = true;
					return false;
				}
			});
		ButtonMove1.setOnTouchListener(new View.OnTouchListener(){
				private float lastX; //上一次位置的X.Y坐标
				private float lastY;
				private float nowX;  //当前移动位置的X.Y坐标
				private float nowY;
				private float tranX; //悬浮窗移动位置的相对值
				private float tranY;
				private int X1=X;
				private int Y1=Y;
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
						X1 += tranX;
						Y1 += tranY;
						ButCdv.update(X1, Y1, -1, -1);
						lastX = (int)nowX;
						lastY = (int)nowY;		
					}
					return false;
				}
			});

		return ButCdv;
	}

	public static int W(Context context) {
		return (int) (context.getResources().getDisplayMetrics().widthPixels);
	}
	public static int H(Context context) {
		return (int) (context.getResources().getDisplayMetrics().heightPixels);
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
}
