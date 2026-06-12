package com.ThunderGod.warehouse;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ViewSwitcher;
import android.view.animation.ScaleAnimation;
import android.view.animation.AlphaAnimation;
import android.view.animation.RotateAnimation;
import android.view.ViewTreeObserver;
import android.animation.Animator;
import android.view.ViewAnimationUtils;
import android.widget.Toast;
import android.content.Context;
import android.animation.ObjectAnimator;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import com.ThunderGod.warehouse.*;
import android.widget.PopupWindow;
import android.os.Handler;
import android.os.Looper;
import android.view.animation.OvershootInterpolator;
public class local {
	//by ThunderGod
	//移动
	public static TranslateAnimation UIMove(final View view, Object type, int x1, int x2, int y1, int y2, int time) {
		int tp = Animation.RELATIVE_TO_SELF;
		TranslateAnimation translateAnimation = new TranslateAnimation(tp, (int)(x1 * 0.01), tp, (int)(x2 * 0.01), tp, (int)(y1 * 0.01), tp, (int)(y2 * 0.01));
		if (type == "FS" || type == null) {
			tp = Animation.RELATIVE_TO_SELF;
		} else
		if (type == "TP") {
			tp = Animation.RELATIVE_TO_PARENT;
		} else
		if (type == "EA") {
			tp = Animation.ABSOLUTE;
        }
		translateAnimation.setDuration(time);
        translateAnimation.setRepeatCount(0);
		//translateAnimation.setRepeatMode(Animation.REVERSE);
		//translateAnimation.setZAdjustment(Animation.ZORDER_TOP);//设置永远在最顶端，不被其他控件遮挡
		if (view != null) {
			view.startAnimation(translateAnimation);
		}
		return translateAnimation;
	}
	//旋转
	public static RotateAnimation UIRotate(final View view, Object type, int A, int B, float x, float y, int time) {
		int tp = Animation.RELATIVE_TO_SELF;
		if (type == "FS" || type == null) {
			tp = Animation.RELATIVE_TO_SELF;
		} else
		if (type == "TP") {
			tp = Animation.RELATIVE_TO_PARENT;
		} else
		if (type == "EA") {
			tp = Animation.ABSOLUTE;
		}
		RotateAnimation rotateAnimation = new RotateAnimation(A, B, tp, x , tp, y);
		rotateAnimation.setDuration(time);//设置周期
		rotateAnimation.setRepeatCount(0);//设置次数
		rotateAnimation.setRepeatMode(Animation.REVERSE);
		//启动动画
		view.startAnimation(rotateAnimation);
		return rotateAnimation;
	}
	//收缩
	public static ScaleAnimation UIShrink(final View view, Object type, float x1, float x2, float y1, float y2, float x, float y, int time) {
		int tp = Animation.RELATIVE_TO_PARENT;
		if (type == "FS" || type == null) {
			tp = Animation.RELATIVE_TO_SELF;
		} else if (type == "TP") {
			tp = Animation.RELATIVE_TO_PARENT;
		} else if (type == "EA") {
			tp = Animation.ABSOLUTE;
		}
		ScaleAnimation scaleAnimation = new ScaleAnimation(x1, x2, y1, y2, tp, x, tp, y);
		scaleAnimation.setDuration(time);
		scaleAnimation.setRepeatCount(0);
		scaleAnimation.setFillAfter(true);
		scaleAnimation.setRepeatMode(Animation.REVERSE);
		scaleAnimation.setZAdjustment(Animation.ZORDER_TOP);//设置永远在最顶端，不被其他控件遮挡
		if (view != null) {
			view.startAnimation(scaleAnimation);
		}
		return scaleAnimation;
	}
	//淡化
	public static AlphaAnimation UIFadein(final View view, int A, int B, int time) {
	    AlphaAnimation alphaAnimation = new AlphaAnimation((int)(A * 0.01), (int)(B * 0.01));
		alphaAnimation.setDuration(time);
		alphaAnimation.setRepeatCount(0);
		alphaAnimation.setRepeatMode(Animation.REVERSE);//设置相反运行模式
		alphaAnimation.setFillAfter(true);//设置是否显示动画运行完成后状态
		//启动动画
		view.startAnimation(alphaAnimation);
		return alphaAnimation;
	}
	//缩放
	public static ScaleAnimation UIZoom(final View view, String type, float In, float out, int time) {
		return UIShrink(view, type, In, out, In, out, 0.5f, 0.5f, time);
	};
	//水平
	public static TranslateAnimation UILevel(View view, String type, int In, int out, int time) {
		return UIMove(view, type, In, out, 0, 0, time);
	};
	//垂直
	public static TranslateAnimation UIPlumb(View view, final int In, int out, int time) {
		return UIMove(view, "TP", 0, 0, In, out, time);
	};
	//揭露
    public static ViewTreeObserver.OnGlobalLayoutListener UIReveal(final LinearLayout view, final int x, final int y, final int startRadius, final int endRadius, final int time) {

		final ViewTreeObserver.OnGlobalLayoutListener layoutListener = new ViewTreeObserver.OnGlobalLayoutListener() {
			@Override
			public void onGlobalLayout() {
				Animator animator = ViewAnimationUtils.createCircularReveal(view, x, y, Float.valueOf(startRadius), Float.valueOf(endRadius));
				animator.setDuration(time);//动画持续的时长
				animator.start();
				view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
			}};
		view.setVisibility(android.view.View.VISIBLE);
		view.getViewTreeObserver().addOnGlobalLayoutListener(layoutListener);
		return layoutListener;
	}
	//属性动画
	public static ObjectAnimator ObjectAnimatorofFloat(View view, int time, String Animationmode, int value1, int value2, boolean repeat, boolean flat, String mode, int frequency) {
		ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(view, Animationmode, value1, value2);  
		objectAnimator.setDuration(time);
		objectAnimator.setRepeatCount(frequency);
		if (repeat == true) {
			objectAnimator.setRepeatCount(android.animation.ObjectAnimator.INFINITE);
		}

		if (flat == true) {
			objectAnimator.setEvaluator(new ArgbEvaluator());
		};

		if (mode == "RESTART" | mode == null) {
			objectAnimator.setRepeatMode(android.animation.ValueAnimator.RESTART);
		}
		if (mode == "REVERSE") {
			objectAnimator.setRepeatMode(android.animation.ValueAnimator.REVERSE);
		}
        objectAnimator.setInterpolator(new OvershootInterpolator());//动画会超过目标值一些，然后再弹回来
		objectAnimator.start();
		return objectAnimator;
	}
	public static ObjectAnimator ObjectAnimatorofInt(View view, int time, String Animationmode, int value1, int value2, boolean repeat, boolean flat, String mode, int frequency) {
		ObjectAnimator objectAnimator = ObjectAnimator.ofInt(view, Animationmode, value1, value2);  
		objectAnimator.setDuration(time);
		objectAnimator.setRepeatCount(frequency);
		if (repeat == true) {
			objectAnimator.setRepeatCount(android.animation.ObjectAnimator.INFINITE);
		}
		if (flat == true) {
			objectAnimator.setEvaluator(new ArgbEvaluator());
		}
		if (mode == "RESTART") {
			objectAnimator.setRepeatMode(android.animation.ValueAnimator.RESTART);
		}
		if (mode == "REVERSE") {
			objectAnimator.setRepeatMode(android.animation.ValueAnimator.REVERSE);
		}
		objectAnimator.start();
		return objectAnimator;
	}
	public static ValueAnimator ValueAnimatorAGB(final View view, Object value1, Object value2, int time, int frequency, final int fillet, final String f) {
		ValueAnimator valueAnimator = ValueAnimator.ofInt(value1, value2);
		valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
				@Override
				public void onAnimationUpdate(ValueAnimator animation) {
					int values = (int) animation.getAnimatedValue();
					view.setBackgroundDrawable(roundRect.roundBGS(values, fillet, f, 0));
				}
			});
		valueAnimator.setDuration(time);
		valueAnimator.setRepeatCount(frequency);
		valueAnimator.setEvaluator(new ArgbEvaluator());
		valueAnimator.start();
		return valueAnimator;
	}
	public static ValueAnimator ValueAnimator(final View view, Object value1, Object value2, int time, int frequency, ValueAnimator.AnimatorUpdateListener set) {
		ValueAnimator valueAnimator = ValueAnimator.ofInt(value1, value2);
		addUpdateListeners(set, valueAnimator);
		valueAnimator.setDuration(time);
		valueAnimator.setRepeatCount(frequency);
		valueAnimator.setEvaluator(new ArgbEvaluator());
		valueAnimator.start();
		return valueAnimator;
	}

	public static void addUpdateListeners(final ValueAnimator.AnimatorUpdateListener add, ValueAnimator vt) {
		if (add != null) {
			vt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
					@Override
					public void onAnimationUpdate(ValueAnimator animation) {
						//int values = (int) animation.getAnimatedValue();
						add.onAnimationUpdate(animation);
					}
				});
		}
	}
    public static void ClickFX(Context context,final int X,final int Y){
        final PopupWindow FXc;
        final LinearLayout FXB=TView.TView(context, null, "CC", 0, (int)(TGmixed.W(context)), (int)(TGmixed.H(context)),"#afffffff", 0, "RT", 0, null, null);
        FXc = Tpopup.TCdv(FXB, FXB, "CC", false, true, true, false, (int)(TGmixed.W(context)), (int)(TGmixed.H(context)),null,0,0);
        UIReveal(FXB,X,Y,0,(int)(TGmixed.H(context)*1.2),1000);
        UIFadein(FXB,100,0,1000);
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable(){
                @Override
                public void run() {
                FXc.dismiss();
                }
            }, 1000);
    }

    





}


