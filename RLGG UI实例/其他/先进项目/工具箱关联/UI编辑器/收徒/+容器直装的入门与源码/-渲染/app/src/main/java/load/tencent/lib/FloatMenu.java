package load.tencent.lib;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.PixelFormat;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaPlayer;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TableRow.LayoutParams;
import android.widget.TextView;
import load.tencent.lib.custom.custom;
import load.tencent.lib.custom.custom2;
import load.tencent.lib.custom.custom3;
import load.tencent.lib.ku.ASUI;

public final class FloatMenu extends LinearLayout {

    private Context mContext;

	private PVP pvp;
	private MOVE move;
	private Exist exist;
	private MediaPlayer mediaPlayer;

    private WindowManager wManager;
	
	private custom T1;
	
	private custom2 T2;
	
	private custom3 T3;


    private int screenWidth;

    private int screenHeight;

    private WindowManager.LayoutParams wParams;



    private int signX;

    private int signY;

    private float downX;

    private float downY;

    private float moveX;

    private float moveY;

    private boolean isView;





	private LinearLayout controlView;
	


    public FloatMenu(Context context) {
        super(context);
        mContext = context;
        initView();
    }

	public void dis() {

	}

    private void initView() {
		
		GradientDrawable buttonBackground1 = new GradientDrawable();

        buttonBackground1.setColor(0xFEFEFE);
		buttonBackground1.setCornerRadius(50);
		buttonBackground1.setStroke(2, 0xE97FFFBE);
		controlView = new LinearLayout(mContext);
		controlView.setOrientation(1);
		controlView.setAlpha(0.6f);
		controlView.setBackground(buttonBackground1);

 
		LinearLayout.LayoutParams titleParams = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT);

		controlView.setLayoutParams(titleParams);

		addView(controlView);

		LinearLayout layout1_3 = new LinearLayout(mContext);
		LinearLayout.LayoutParams layoutParams1_3 = new LinearLayout.LayoutParams(300, 100);
        layout1_3.setLayoutParams(layoutParams1_3);
		layout1_3.setOrientation(2);
		layout1_3.setGravity(Gravity.CENTER);
		controlView.addView(layout1_3);

		final TextView layout1_3text = new TextView(mContext);
        LinearLayout.LayoutParams layout1_3textParams = new LinearLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        layout1_3text.setLayoutParams(layout1_3textParams);
        layout1_3text.setText("ECmod");
		layout1_3text.setTextSize(12);
        layout1_3text.setTextColor(0xFFFFFFFF);
		layout1_3text.setTypeface(Typeface.defaultFromStyle(Typeface.BOLD));
		layout1_3text.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		layout1_3.addView(layout1_3text);
		ObjectAnimator colorAnim = ObjectAnimator.ofInt(layout1_3text, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim.setEvaluator(new ArgbEvaluator());
		colorAnim.setDuration(3000);
		colorAnim.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim.start();


		final LinearLayout layout1_2 = new LinearLayout(mContext);
		LinearLayout.LayoutParams layoutParams1_2 = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        layout1_2.setLayoutParams(layoutParams1_2);

		layout1_2.setOrientation(LinearLayout.VERTICAL);
		layout1_2.setVisibility(View.GONE);
		controlView.addView(layout1_2);

        final Button Button1 = new Button(mContext);
        Button1.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        Button1.setText("Pvp");
		Button1.setTextSize(12);
        Button1.setTextColor(0xff9baf7a);
		Button1.setBackgroundColor(0x00000000);
		Button1.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
        layout1_2.addView(Button1);
		ObjectAnimator colorAnim1 = ObjectAnimator.ofInt(Button1, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim1.setEvaluator(new ArgbEvaluator());
		colorAnim1.setDuration(3000);
		colorAnim1.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim1.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim1.start();
		final Button Button2 = new Button(mContext);
        Button2.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        Button2.setText("start");
		Button2.setTextSize(12);
        Button2.setTextColor(0xff89bebc);
		Button2.setBackgroundColor(0x0000000);
        layout1_2.addView(Button2);
		ObjectAnimator colorAnim2 = ObjectAnimator.ofInt(Button2, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim2.setEvaluator(new ArgbEvaluator());
		colorAnim2.setDuration(3000);
		colorAnim2.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim2.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim2.start();
		Button2.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		final Button Button3 = new Button(mContext);
        Button3.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        Button3.setText("action");
		Button3.setTextSize(12);
        Button3.setTextColor(0xff8990be);
		Button3.setBackgroundColor(0x00000000);
		Button3.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
        layout1_2.addView(Button3);
		ObjectAnimator colorAnim3 = ObjectAnimator.ofInt(Button3, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim3.setEvaluator(new ArgbEvaluator());
		colorAnim3.setDuration(3000);
		colorAnim3.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim3.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim3.start();
		final Button Button4 = new Button(mContext);
        Button4.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        Button4.setText("Debug");
		Button4.setTextSize(12);
        Button4.setTextColor(0xffac89be);
		Button4.setBackgroundColor(0x00000000);
        layout1_2.addView(Button4);
		Button4.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		ObjectAnimator colorAnim4 = ObjectAnimator.ofInt(Button4, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim4.setEvaluator(new ArgbEvaluator());
		colorAnim4.setDuration(3000);
		colorAnim4.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim4.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim4.start();
	/*	Switch switch1 = new Switch(mContext);
        switch1.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch1.setText("           水印");
		switch1.setTextSize(12);
        switch1.setTextColor(0xff9baf7a);
        layout1_2.addView(switch1);
		switch1.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		ObjectAnimator colorAnim5 = ObjectAnimator.ofInt(switch1, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim5.setEvaluator(new ArgbEvaluator());
		colorAnim5.setDuration(800);
		colorAnim5.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim5.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim5.start();
		
		*/
		
		
         T1= new custom(mContext);
         T2= new custom2(mContext);
		 T3= new custom3(mContext);
		move = new MOVE(mContext);
     	if (move != null) {}

		exist = new Exist(mContext);
		if (exist != null) {}

		pvp = new PVP(mContext);
		if (pvp != null) {} 
		move.showView();exist.showView();pvp.showView();








        wManager = (WindowManager) mContext.getSystemService(Context.WINDOW_SERVICE);

        DisplayMetrics metrics = new DisplayMetrics();
        wManager.getDefaultDisplay().getRealMetrics(metrics);
        screenWidth = metrics.widthPixels;
        screenHeight = metrics.heightPixels;

        wParams = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            wParams.type = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
        } else {
            wParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
        }
        wParams.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
        wParams.gravity = Gravity.CENTER | Gravity.CENTER;
        wParams.x = 0;
        wParams.y = 0;
        wParams.width = WindowManager.LayoutParams.WRAP_CONTENT;
        wParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
        wParams.format = PixelFormat.RGBA_8888;

		
		
		
		
		Button1.setOnClickListener(new View.OnClickListener() {
				private  boolean p = false;


				@Override
				public void onClick(View view) {
					if (!p) {
						p = true;

						
						pvp.showview();
					} else {
						p = false;
						
						pvp.dis();
					}}
			});  
		
		Button2.setOnClickListener(new View.OnClickListener() {
				private  boolean p = false;


				@Override
				public void onClick(View view) {
					if (!p) {
						p = true;

						
						exist.showview();
					} else {
						p = false;
						
						exist.dis();
					}}
			});  
		Button3.setOnClickListener(new View.OnClickListener() {
				private  boolean p = false;


				@Override
				public void onClick(View view) {
					if (!p) {
						p = true;

						
						move.showview();
					} else {
						p = false;
						
						move.dis();
					}}
			});  
		Button4.setOnClickListener(new View.OnClickListener() {

				@Override
				public void onClick(View view) {



					T1.showView();
					

				}
			});
		
	/*	switch1.setOnClickListener(new View.OnClickListener() {
				private  boolean pzx = false;


				@Override
				public void onClick(View view) {
					if (!pzx) {
						pzx = true;		
						FloatServiceView.ivv();
					} else {
						pzx = false;
						FloatServiceView.ivvv();
				}}
			});      
		*/
		layout1_3.setOnClickListener(new OnClickListener() {

				private  boolean iskg1 = false;

				@Override    
				public void onClick(View v) {
					if (!iskg1) {
						iskg1 = true;
						layout1_2.setVisibility(View.VISIBLE);
						ASUI.UILevel(layout1_2, -100, 0, 500, null);
					} else {
						iskg1 = false;

						layout1_2.setVisibility(View.GONE);



					}
				}

			});


        layout1_3.setOnTouchListener(new OnTouchListener() {

                @Override
                public boolean onTouch(View view, MotionEvent event) {
                    switch (event.getActionMasked()) {
                        case MotionEvent.ACTION_DOWN:
						
                            signX = wParams.x;
                            signY = wParams.y;
                            downX = event.getRawX();
                            downY = event.getRawY();
                            break;
                        case MotionEvent.ACTION_MOVE:
                            moveX = event.getRawX();
                            moveY = event.getRawY();
                            wParams.x = signX + (int) (moveX - downX);
                            wParams.y = signY + (int) (moveY - downY);
                            updateView();
                            break;
                        case MotionEvent.ACTION_UP:
                            break;
                    }
                    return false;
                }
            });
    }



    public void showView() {
        if (!isView) {
            isView = true;

            wManager.addView(this, wParams);
			ASUI.UIPlumb(controlView, 100, 0, 500, null);
        }
    }

    public void updateView() {
        wManager.updateViewLayout(this, wParams);
    }

    public void clearView() {
        if (isView) {
            isView = false;
            wManager.removeView(this);
        }
    }
	private int W() {
		return (int) (mContext.getResources().getDisplayMetrics().widthPixels);
	}
    private int H() {
		return (int) (mContext.getResources().getDisplayMetrics().heightPixels);
	}

}
