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
import android.widget.TextView;
import android.widget.Toast;
import load.tencent.lib.Miscellaneous;
import load.tencent.lib.ku.ASUI;
import com.AUY.launcher.Core.JNI;


public class Exist extends LinearLayout {
public static int Size;
    private Context mContext;

 

    private WindowManager wManager;

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
	

    public Exist(Context context) {
        super(context);
        mContext = context;
        initView();
    }

	public void dis() {
		setVisibility(GONE);
	}

	public void showview() {
		setVisibility(VISIBLE);
		ASUI.UIPlumb(controlView,70,0,400,null);
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
        layout1_3text.setText("⚙ 初始化");
		layout1_3text.setTextSize(12);
        ObjectAnimator colorAnim = ObjectAnimator.ofInt(layout1_3text, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim.setEvaluator(new ArgbEvaluator());
		colorAnim.setDuration(3000);
		colorAnim.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim.start();
		layout1_3text.setTypeface(Typeface.defaultFromStyle(Typeface.BOLD));
		layout1_3text.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		layout1_3.addView(layout1_3text);
		
	
		final LinearLayout layout1_2 = new LinearLayout(mContext);
		LinearLayout.LayoutParams layoutParams1_2 = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        layout1_2.setLayoutParams(layoutParams1_2);
	
		layout1_2.setOrientation(LinearLayout.VERTICAL);
		layout1_2.setVisibility(View.GONE);
		controlView.addView(layout1_2);
		

        CheckBox switch1 = new CheckBox(mContext);
        switch1.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        
        
        switch1.setText("备用初始化-搜索玩家");
		switch1.setTextSize(12);
        switch1.setTextColor(0xff9baf7a);
        layout1_2.addView(switch1);
		switch1.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		ObjectAnimator colorAnim1 = ObjectAnimator.ofInt(switch1, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim1.setEvaluator(new ArgbEvaluator());
		colorAnim1.setDuration(3000);
		colorAnim1.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim1.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim1.start();
		
		CheckBox switch2 = new CheckBox(mContext);
        switch2.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch2.setText("备用初始化-获取数量");
		switch2.setTextSize(12);
        switch2.setTextColor(0xff89bebc);
        layout1_2.addView(switch2);
		ObjectAnimator colorAnim2 = ObjectAnimator.ofInt(switch2, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim2.setEvaluator(new ArgbEvaluator());
		colorAnim2.setDuration(3000);
		colorAnim2.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim2.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim2.start();
		switch2.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		CheckBox switch4 = new CheckBox(mContext);
        switch4.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch4.setText("备用初始化-开始筛选");
		switch4.setTextSize(12);
        switch4.setTextColor(0xff8990be);
        layout1_2.addView(switch4);
		ObjectAnimator colorAnim4 = ObjectAnimator.ofInt(switch4, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim4.setEvaluator(new ArgbEvaluator());
		colorAnim4.setDuration(3000);
		colorAnim4.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim4.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim4.start();
		switch4.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		CheckBox switch3= new CheckBox(mContext);
        switch3.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch3.setText("备用初始化-下一个");
		switch3.setTextSize(12);
        switch3.setTextColor(0xffac89be);
        layout1_2.addView(switch3);
		switch3.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		ObjectAnimator colorAnim3 = ObjectAnimator.ofInt(switch3, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim3.setEvaluator(new ArgbEvaluator());
		colorAnim3.setDuration(3000);
		colorAnim3.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim3.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim3.start();
        CheckBox switch5= new CheckBox(mContext);
        switch5.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch5.setText("备用初始化-确定获取成功");
		switch5.setTextSize(12);
        switch5.setTextColor(0xffac89be);
        layout1_2.addView(switch5);
		switch5.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		ObjectAnimator colorAnim5 = ObjectAnimator.ofInt(switch5, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim5.setEvaluator(new ArgbEvaluator());
		colorAnim5.setDuration(3000);
		colorAnim5.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim5.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim5.start();
	/*	CheckBox switch6= new CheckBox(mContext);
        switch6.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch6.setText("遁地逃逸");
		switch6.setTextSize(12);
        switch6.setTextColor(0xffac89be);
        layout1_2.addView(switch6);
		switch6.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		ObjectAnimator colorAnim6 = ObjectAnimator.ofInt(switch6, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim6.setEvaluator(new ArgbEvaluator());
		colorAnim6.setDuration(3000);
		colorAnim6.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim6.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim6.start();
		CheckBox switch7= new CheckBox(mContext);
        switch7.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch7.setText("穿墙");
		switch7.setTextSize(12);
        switch7.setTextColor(0xffac89be);
        layout1_2.addView(switch7);
		switch7.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		ObjectAnimator colorAnim7 = ObjectAnimator.ofInt(switch7, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim7.setEvaluator(new ArgbEvaluator());
		colorAnim7.setDuration(3000);
		colorAnim7.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim7.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim7.start();
		CheckBox switch8= new CheckBox(mContext);
        switch8.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch8.setText("激流加速");
		switch8.setTextSize(12);
        switch8.setTextColor(0xffac89be);
        layout1_2.addView(switch8);
		switch8.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		ObjectAnimator colorAnim8 = ObjectAnimator.ofInt(switch8, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim8.setEvaluator(new ArgbEvaluator());
		colorAnim8.setDuration(3000);
		colorAnim8.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim8.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim8.start();
	
		
*/
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
		

  
		layout1_3.setOnClickListener(new OnClickListener() {

				private  boolean iskg1 = false;

				@Override    
				public void onClick(View v) {
					if (!iskg1) {
						iskg1 = true;
				      
						layout1_2.setVisibility(View.VISIBLE);
						
		ASUI.UIPlumb(layout1_2,-100,0,400,null);
							
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
		switch1.setOnClickListener(new View.OnClickListener() {
				


				@Override
				public void onClick(View view) {
Toast.makeText(mContext, JNI.bystart(), Toast.LENGTH_LONG).show();
					}
			});     
		switch2.setOnClickListener(new View.OnClickListener() {


				@Override
				public void onClick(View view) {
Toast.makeText(mContext, JNI.bystart2(), Toast.LENGTH_LONG).show();
					}
			});      
		switch4.setOnClickListener(new View.OnClickListener() {


				@Override
				public void onClick(View view) {
Toast.makeText(mContext, JNI.bystart3(), Toast.LENGTH_LONG).show();
					}
			});      
		switch3.setOnClickListener(new View.OnClickListener() {


				@Override
				public void onClick(View view) {
Toast.makeText(mContext, JNI.bystart4(), Toast.LENGTH_LONG).show();
					}
			});      
			switch5.setOnClickListener(new View.OnClickListener() {
				private  boolean pzx = false;


				@Override
				public void onClick(View view) {
Toast.makeText(mContext, JNI.bystart5(), Toast.LENGTH_LONG).show();
					}
			});
	/*		switch6.setOnClickListener(new View.OnClickListener() {
				private  boolean pzx = false;


				@Override
				public void onClick(View view) {
					if (!pzx) {
						pzx = true;				
						Miscellaneous.RunShell("data/user/0/com.Fast.Box.Pro/lib/lib46.so");		
					} else {
						pzx = false;
						Miscellaneous.RunShell("data/user/0/com.Fast.Box.Pro/lib/lib23.so");						
					}}
			});
			switch7.setOnClickListener(new View.OnClickListener() {
				private  boolean pzx = false;


				@Override
				public void onClick(View view) {
					if (!pzx) {
						pzx = true;				
						Miscellaneous.RunShell("data/user/0/com.Fast.Box.Pro/lib/lib47.so");		
					} else {
						pzx = false;
						Miscellaneous.RunShell("data/user/0/com.Fast.Box.Pro/lib/lib23.so");						
					}}
			});
			switch8.setOnClickListener(new View.OnClickListener() {
				private  boolean pzx = false;


				@Override
				public void onClick(View view) {
					if (!pzx) {
						pzx = true;				
						Miscellaneous.RunShell("data/user/0/com.Fast.Box.Pro/lib/lib48.so");	
						showToast("开启成功[配合杀戮]");	
					} else {
						pzx = false;
						Miscellaneous.RunShell("data/user/0/com.Fast.Box.Pro/lib/lib49.so");
						showToast("关闭成功");						
					}}
			});
	*/		
			
			
			
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
			private void showToast(String str) {

			        Toast.makeText(mContext, str, Toast.LENGTH_SHORT).show();
			}
}
