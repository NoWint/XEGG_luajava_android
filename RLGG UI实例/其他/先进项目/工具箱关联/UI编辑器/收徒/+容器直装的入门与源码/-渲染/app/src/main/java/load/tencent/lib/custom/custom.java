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
import android.widget.AbsoluteLayout.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
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
import load.tencent.lib.FloatServiceView;
import load.tencent.lib.Tools;
import load.tencent.lib.ku.ASUI;

public class custom extends PopupWindow {

    private Context mContext;


	private LinearLayout layout;
	
	private custom3 T3;
	
	private custom2 T2;

    public custom(Context context) {
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
        title.setText("调式");
        //控件文本颜色
        ObjectAnimator colorAnim = ObjectAnimator.ofInt(title, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim.setEvaluator(new ArgbEvaluator());
		colorAnim.setDuration(3000);
		colorAnim.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim.start();
        //添加控件
        layout1.addView(title);
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
		
		LinearLayout alayout12 = new LinearLayout(mContext);
        //布局大小
        alayout12.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout12.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout12);
		
		Switch switch1 = new Switch(mContext);
        switch1.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch1.setText("快捷键");
		switch1.setTextSize(15);
        switch1.setTextColor(0xff9baf7a);
       alayout12.addView(switch1);
		switch1.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		
		LinearLayout alayout13 = new LinearLayout(mContext);
        //布局大小
        alayout13.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout13.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout13);
		
		Switch switch2 = new Switch(mContext);
        switch2.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        switch2.setText("自定义配置");
		switch2.setTextSize(15);
        switch2.setTextColor(0xff6d5d5d);
        alayout13.addView(switch2);
		switch2.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti.ttf"));  
		LinearLayout alayout14 = new LinearLayout(mContext);
        //布局大小
        alayout14.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout14.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout14);
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
        T3= new custom3(mContext);
		
		T2= new custom2(mContext);
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

		switch1.setOnClickListener(new View.OnClickListener() {
				private  boolean pzx = false;


				@Override
				public void onClick(View view) {
					T3.showView();
					

				}
			});      
		switch2.setOnClickListener(new View.OnClickListener() {
				private  boolean pzx = false;


				@Override
				public void onClick(View view) {
					T2.showView();


				}
			});      
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

