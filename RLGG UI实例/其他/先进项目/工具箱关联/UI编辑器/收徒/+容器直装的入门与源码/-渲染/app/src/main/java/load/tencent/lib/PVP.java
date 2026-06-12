package load.tencent.lib;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.PixelFormat;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import load.tencent.lib.Miscellaneous;
import load.tencent.lib.ku.ASUI;
import com.AUY.launcher.Core.JNI;


public final class PVP extends LinearLayout {

    private Context mContext;
	public static int Size=0;
	public static int Size2=0;
	
 

    private WindowManager wManager;

    private int screenWidth;

    private int screenHeight;

    private WindowManager.LayoutParams wParams;

    
	public static boolean bq1 = false;
	
    private int signX;

    private int signY;

    private float downX;

    private float downY;

    private float moveX;

    private float moveY;

    private boolean isView;
   
public static boolean chongb = false;
	


	private LinearLayout controlView;

	private PopupWindow chongcdv;


	

    public PVP(Context context) {
        super(context);
        mContext = context;
        initView();
    }

	public void showview() {
		setVisibility(VISIBLE);
		ASUI.UIPlumb(controlView,70,0,500,null);
	}

	public void dis() {
		setVisibility(GONE);
	}

    private void initView() {
		setVisibility(GONE);
		GradientDrawable buttonBackground1 = new GradientDrawable();

        buttonBackground1.setColor(0xFF000000);
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
		LinearLayout.LayoutParams layoutParams1_3 = new LinearLayout.LayoutParams(350, 100);
        layout1_3.setLayoutParams(layoutParams1_3);
		layout1_3.setOrientation(LinearLayout.HORIZONTAL);
		layout1_3.setGravity(Gravity.CENTER);
		
		controlView.addView(layout1_3);

		final TextView layout1_3text = new TextView(mContext);
        LinearLayout.LayoutParams layout1_3textParams = new LinearLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        layout1_3text.setLayoutParams(layout1_3textParams);
        layout1_3text.setText("⚔ PVP");
		layout1_3text.setTextSize(12);
        
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
		
		        CheckBox switch12 = new CheckBox(mContext);
        switch12.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch12.setText("初始化\n不打开全功能无效");
		switch12.setTextSize(12);
		switch12.setTextColor(0xFF000000);
        layout1_2.addView(switch12);
		switch12.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf")); 

        CheckBox switch1 = new CheckBox(mContext);
        switch1.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch1.setText("碰撞箱");
		switch1.setTextSize(12);
        layout1_2.addView(switch1);
		switch1.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf")); 
		
		CheckBox switch11 = new CheckBox(mContext);
        switch11.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch11.setText("激流");
		switch11.setTextSize(12);
        layout1_2.addView(switch11);
		switch11.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		
		CheckBox switch2 = new CheckBox(mContext);
        switch2.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch2.setText("AC");
		switch2.setTextSize(12);
        layout1_2.addView(switch2);
		switch2.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf")); 
		
		CheckBox switch10 = new CheckBox(mContext);
        switch10.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch10.setText("自瞄");
		switch10.setTextSize(12);
        layout1_2.addView(switch10);
		switch10.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		
		
				CheckBox switch7 = new CheckBox(mContext);
        switch7.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch7.setText("暗杀");
		switch7.setTextSize(12);
        layout1_2.addView(switch7);
		switch7.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		
	

		CheckBox switch8 = new CheckBox(mContext);
        switch8.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch8.setText("创手");
		switch8.setTextSize(12);
        layout1_2.addView(switch8);
		switch8.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		
		CheckBox switch13 = new CheckBox(mContext);
        switch13.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch13.setText("绕cps");
		switch13.setTextSize(12);
		switch13.setTextColor(0xFF000000);
        layout1_2.addView(switch13);
		switch13.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf")); 
		
		
		ObjectAnimator colorAnim1 = ObjectAnimator.ofInt(switch1, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim1.setEvaluator(new ArgbEvaluator());
		colorAnim1.setDuration(3000);
		colorAnim1.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim1.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim1.start();
		ObjectAnimator colorAnim2 = ObjectAnimator.ofInt(switch2, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim2.setEvaluator(new ArgbEvaluator());
		colorAnim2.setDuration(3000);
		colorAnim2.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim2.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim2.start();
		ObjectAnimator colorAnim7 = ObjectAnimator.ofInt(switch7, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim7.setEvaluator(new ArgbEvaluator());
		colorAnim7.setDuration(3000);
		colorAnim7.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim7.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim7.start();
		ObjectAnimator colorAnim8 = ObjectAnimator.ofInt(switch8, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim8.setEvaluator(new ArgbEvaluator());
		colorAnim8.setDuration(3000);
		colorAnim8.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim8.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim8.start();
					ObjectAnimator colorAnim10= ObjectAnimator.ofInt(switch10, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim10.setEvaluator(new ArgbEvaluator());
		colorAnim10.setDuration(3000);
		colorAnim10.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim10.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim10.start();
					ObjectAnimator colorAnim11= ObjectAnimator.ofInt(switch11, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim11.setEvaluator(new ArgbEvaluator());
		colorAnim11.setDuration(3000);
		colorAnim11.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim11.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim11.start();
		ObjectAnimator colorAnim12= ObjectAnimator.ofInt(switch12, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim12.setEvaluator(new ArgbEvaluator());
		colorAnim12.setDuration(3000);
		colorAnim12.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim12.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim12.start();
				ObjectAnimator colorAnim13= ObjectAnimator.ofInt(switch13, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim13.setEvaluator(new ArgbEvaluator());
		colorAnim13.setDuration(3000);
		colorAnim13.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim13.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim13.start();
		
		
		
        							 
		
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
		
		
		switch12.setOnClickListener(new View.OnClickListener() {
				

	
				@Override
				public void onClick(View view) {
						Toast.makeText(mContext, JNI.backcall(27), Toast.LENGTH_LONG).show();					
				}
			});      
			switch1.setOnClickListener(new View.OnClickListener() {
				

	
				@Override
				public void onClick(View view) {
						Toast.makeText(mContext, JNI.hitbox(), Toast.LENGTH_LONG).show();					
				}
			});      
		switch2.setOnClickListener(new View.OnClickListener() {
				


				@Override
				public void onClick(View view) {
Toast.makeText(mContext, JNI.ac(), Toast.LENGTH_LONG).show();
					}
			});      
	
		
	
        
		switch7.setOnClickListener(new View.OnClickListener() {
				


				@Override
				public void onClick(View view) {
Toast.makeText(mContext, JNI.as(), Toast.LENGTH_LONG).show();
					}
			});     
			switch8.setOnClickListener(new View.OnClickListener() {
				


				@Override
				public void onClick(View view) {
Toast.makeText(mContext, JNI.cs(), Toast.LENGTH_LONG).show();
					}
			});     
		
					switch10.setOnClickListener(new View.OnClickListener() {
				


				@Override
				public void onClick(View view) {
Toast.makeText(mContext, JNI.zm(), Toast.LENGTH_LONG).show();
					}
			});     
			
					switch11.setOnClickListener(new View.OnClickListener() {
				


				@Override
				public void onClick(View view) {
Toast.makeText(mContext, JNI.jl(), Toast.LENGTH_LONG).show();
					}
			});     
			
			switch13.setOnClickListener(new View.OnClickListener() {
				


				@Override
				public void onClick(View view) {
Toast.makeText(mContext, JNI.rcps(), Toast.LENGTH_LONG).show();
					}
			});     
			
		
		layout1_3.setOnClickListener(new OnClickListener() {

				private  boolean iskg1 = false;

				@Override    
				public void onClick(View v) {
					if (!iskg1) {
						iskg1 = true;
				      
						
						ASUI.UIPlumb(layout1_2,-100,0,400,null);
						layout1_2.setVisibility(View.VISIBLE);
						
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

	private void showToast(String p0) {
		        Toast.makeText(mContext, p0, Toast.LENGTH_SHORT).show();
	} 
	
    public void showView() {
        if (!isView) {
            isView = true;
			
            wManager.addView(this, wParams);
			ASUI.UIPlumb(controlView,100,0,500,null);
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
	private int W(){
	return (int) (mContext.getResources().getDisplayMetrics().widthPixels);
		}
    private int H(){
	return (int) (mContext.getResources().getDisplayMetrics().heightPixels);
		}

}
