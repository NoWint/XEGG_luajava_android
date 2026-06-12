package load.tencent.lib.custom;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.widget.CompoundButton;
import android.widget.GridLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import load.tencent.lib.ku.ASUI;

public class custom3 extends PopupWindow {

    private Context mContext;


	private LinearLayout layout;
	

    public custom3(Context context) {
        super(context);
        this.mContext = context;
        initView();
    }

    private void initView() {

		//创建布局
		layout = new LinearLayout(mContext);
        //布局属性
        layout.setOrientation(LinearLayout.VERTICAL);
        //布局大小
        layout.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));

        //创建布局
        LinearLayout layout1 = new LinearLayout(mContext);
        //布局大小
        layout1.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离

        //添加布局
        layout.addView(layout1);

        //创建控件
        TextView title = new TextView(mContext);
        //控件大小
        title.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //控件属性
        title.setGravity(Gravity.CENTER);
        //控件文本内容
        title.setText("快捷键");
        //控件文本颜色
        
        layout1.addView(title);
		ObjectAnimator colorAnim = ObjectAnimator.ofInt(title, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim.setEvaluator(new ArgbEvaluator());
		colorAnim.setDuration(3000);
		colorAnim.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim.start();
		ScrollView scroll = new ScrollView(mContext);
        //布局大小
        scroll.setLayoutParams(new ScrollView.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //添加布局
        layout.addView(scroll);



		//创建布局
        LinearLayout layout2 = new LinearLayout(mContext);
        //布局大小
        layout2.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        layout2.setPadding(35, 35, 35, 35);
        //添加布局
        scroll.addView(layout2);
		layout2.setOrientation(LinearLayout.VERTICAL);
		
       
		LinearLayout alayout3 = new LinearLayout(mContext);
        //布局大小
        alayout3.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout3.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout3);
        //创建控件
        
		Switch switch1 = new Switch(mContext);
        switch1.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch1.setText("暗杀");
		switch1.setTextSize(15);
        
        alayout3.addView(switch1);
		switch1.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		
		LinearLayout alayout4 = new LinearLayout(mContext);
        //布局大小
        alayout4.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout4.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout4);
        //创建控件

		Switch switch2 = new Switch(mContext);
        switch2.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch2.setText("自瞄");
		switch2.setTextSize(15);
        
        alayout4.addView(switch2);
		switch2.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		
		LinearLayout alayout5 = new LinearLayout(mContext);
        //布局大小
        alayout5.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout5.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout5);
        //创建控件

		Switch switch3 = new Switch(mContext);
        switch3.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch3.setText("AC");
		switch3.setTextSize(15);
         
        alayout5.addView(switch3);
		switch3.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		
		LinearLayout alayout6 = new LinearLayout(mContext);
        //布局大小
        alayout6.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout6.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout6);
        //创建控件

		Switch switch4 = new Switch(mContext);
        switch4.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch4.setText("跳");
		switch4.setTextSize(15);
         
        alayout6.addView(switch4);
		switch4.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		
		LinearLayout alayout7 = new LinearLayout(mContext);
        //布局大小
        alayout7.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout7.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout7);
        //创建控件
		
		Switch switch5 = new Switch(mContext);
        switch5.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch5.setText("喷气背包");
		switch5.setTextSize(15);
      
        alayout7.addView(switch5);
		switch5.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		
		LinearLayout alayout8 = new LinearLayout(mContext);
        //布局大小
        alayout8.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout8.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout8);
        //创建控件

		Switch switch6 = new Switch(mContext);
        switch6.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch6.setText("原子运动");
		switch6.setTextSize(15);
         
        alayout8.addView(switch6);
		switch6.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		
		LinearLayout alayout9 = new LinearLayout(mContext);
        //布局大小
        alayout9.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout9.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout9);
        //创建控件

		Switch switch7 = new Switch(mContext);
        switch7.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch7.setText("兔子跳");
		switch7.setTextSize(15);
         
        alayout9.addView(switch7);
		switch7.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		
		
		Switch switch8 = new Switch(mContext);
        switch8.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch8.setText("冲刺");
		switch8.setTextSize(15);
         
        alayout8.addView(switch8);
		switch8.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		
		LinearLayout alayout10 = new LinearLayout(mContext);
        //布局大小
        alayout10.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout10.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout10);
        //创建控件
        
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
		ObjectAnimator colorAnim3 = ObjectAnimator.ofInt(switch3, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim3.setEvaluator(new ArgbEvaluator());
		colorAnim3.setDuration(3000);
		colorAnim3.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim3.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim3.start();
		ObjectAnimator colorAnim4 = ObjectAnimator.ofInt(switch4, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim4.setEvaluator(new ArgbEvaluator());
		colorAnim4.setDuration(3000);
		colorAnim4.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim4.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim4.start();
		ObjectAnimator colorAnim5 = ObjectAnimator.ofInt(switch5, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim5.setEvaluator(new ArgbEvaluator());
		colorAnim5.setDuration(3000);
		colorAnim5.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim5.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim5.start();
		ObjectAnimator colorAnim6 = ObjectAnimator.ofInt(switch6, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim6.setEvaluator(new ArgbEvaluator());
		colorAnim6.setDuration(3000);
		colorAnim6.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim6.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim6.start();
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
		
		

		GradientDrawable background = new GradientDrawable();
        background.setColor(0xffffffff);
        background.setCornerRadius(25);
		layout.setBackground(background);

        setContentView(layout);
		setBackgroundDrawable(new ColorDrawable(0x00000000));
		setWidth(900);
		setHeight(900);
		setFocusable(true);
       

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            setWindowLayoutType(WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY);
        } else {
            setWindowLayoutType(WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);
        }

		
		title.setOnClickListener(new OnClickListener() {    

				@Override    
				public void onClick(View v) {    
					dis();
				}    
			});    
/*		switch1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {

                @Override
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                    if (isChecked) {
						M1.showview();
					} else {
						M1.dis();
                    }
                }
			});
		switch2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {

                @Override
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                    if (isChecked) {
						M2.showview();
					} else {
						M2.dis();
                    }
                }
			});
		switch3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {

                @Override
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                    if (isChecked) {
						M3.showview();
					} else {
						M3.dis();
                    }
                }
			});
		switch4.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {

                @Override
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                    if (isChecked) {
						M4.showview();
					} else {
						M4.dis();
                    }
                }
			});
		switch5.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {

                @Override
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                    if (isChecked) {
						M5.showview();
					} else {
						M5.dis();
                    }
                }
			});
		switch6.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {

                @Override
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                    if (isChecked) {
						M6.showview();
					} else {
						M6.dis();
                    }
                }
			});
		switch7.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {

                @Override
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                    if (isChecked) {
						M7.showview();
					} else {
						M7.dis();
                    }
                }
			});

		*/
			}
		
			




    

	private void Execute(String cmd) {
        try {
            Runtime.getRuntime().exec(cmd);
        } catch (Exception e) {
            e.printStackTrace();
        }
	}

    private void showToast(String str) {
        Toast.makeText(mContext, str, Toast.LENGTH_LONG).show();
	}


	public  void dis(){
        ASUI.UIPlumb(layout, 0, -100, 150, null).setAnimationListener(new Animation.AnimationListener(){

                @Override
                public void onAnimationStart(Animation p1) {
                }

                @Override
                public void onAnimationEnd(Animation p1) {

					dismiss();                 
				}

                @Override
                public void onAnimationRepeat(Animation p1) {
                }
			});
	}

    public void showView() {
		ASUI.UIZoom(layout, 0, 100, 150, null);
        this.showAtLocation(this.getContentView(), Gravity.CENTER, 0, 0);
	}

    public void addTxtFile(String filename,String txt){
		try {
			File fs = new File("storage/emulated/0/" + filename);
			FileOutputStream outputStream =new FileOutputStream(fs);
			outputStream.write(txt.getBytes());//写入
			showToast("创建成功");
			outputStream.flush();
			outputStream.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
    }

}

