package load.tencent.lib.custom;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.Log;
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
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import load.tencent.lib.Miscellaneous;
import load.tencent.lib.Tools;
import load.tencent.lib.ku.ASUI;
import com.AUY.launcher.Core.JNI;

public class custom2 extends PopupWindow {

    private Context mContext;


	private LinearLayout layout;



	

    public custom2(Context context) {
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
        title.setText("自定义区");
        //控件文本颜色
        
        //添加控件
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
		

        
LinearLayout alayout5 = new LinearLayout(mContext);
        //布局大小
        alayout5.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout5.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout5);
		
		final SeekBar SeekBar = new SeekBar(mContext);
        LinearLayout.LayoutParams SeekBarParams = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBar.setLayoutParams(SeekBarParams);
        SeekBar.setPadding(10, 10, 10, 10);
		SeekBar.setMin(1);
		SeekBar.setMax(10);
		SeekBar.setProgress(0);
		LinearLayout alayout6 = new LinearLayout(mContext);
        //布局大小
        alayout6.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout6.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout6);

		final TextView SeekBartext = new TextView(mContext);
        LinearLayout.LayoutParams SeekBartextParams = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBartext.setLayoutParams(SeekBartextParams);
        SeekBartext.setText("暗杀最大速度:1");
		SeekBartext.setTextSize(14);
        SeekBartext.setTextColor(0xFF000000);
		alayout5.addView(SeekBartext);
	    alayout6.addView(SeekBar);
		
		LinearLayout alayout7 = new LinearLayout(mContext);
        //布局大小
        alayout7.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout7.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout7);

		

		LinearLayout alayout8= new LinearLayout(mContext);
        //布局大小
        alayout8.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout8.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout8);

		final SeekBar SeekBar2 = new SeekBar(mContext);
        LinearLayout.LayoutParams SeekBarParams2 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBar2.setLayoutParams(SeekBarParams2);
        SeekBar2.setPadding(10, 10, 10, 10);
		SeekBar2.setMin(1);
		SeekBar2.setMax(10);
		SeekBar2.setProgress(0);
		LinearLayout alayout9 = new LinearLayout(mContext);
        //布局大小
        alayout9.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout9.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout9);

		final TextView SeekBartext2 = new TextView(mContext);
        LinearLayout.LayoutParams SeekBartextParams2 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBartext2.setLayoutParams(SeekBartextParams2);
        SeekBartext2.setText("环绕距离:1");
		SeekBartext2.setTextSize(14);
        SeekBartext2.setTextColor(0xFF000000);
		alayout8.addView(SeekBartext2);
	    alayout9.addView(SeekBar2);
		
		LinearLayout alayout10 = new LinearLayout(mContext);
        //布局大小
        alayout10.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout10.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout10);

		

		LinearLayout alayout11= new LinearLayout(mContext);
        //布局大小
        alayout11.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout11.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout11);

		final SeekBar SeekBar3 = new SeekBar(mContext);
        LinearLayout.LayoutParams SeekBarParams3 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBar3.setLayoutParams(SeekBarParams3);
        SeekBar3.setPadding(10, 10, 10, 10);
		SeekBar3.setMin(1);
		SeekBar3.setMax(10);
		SeekBar3.setProgress(0);
		LinearLayout alayout12 = new LinearLayout(mContext);
        //布局大小
        alayout12.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout12.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout12);

		final TextView SeekBartext3 = new TextView(mContext);
        LinearLayout.LayoutParams SeekBartextParams3 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBartext3.setLayoutParams(SeekBartextParams3);
        SeekBartext3.setText("环绕速度:1");
		SeekBartext3.setTextSize(14);
        SeekBartext3.setTextColor(0xFF000000);
		alayout11.addView(SeekBartext3);
	    alayout12.addView(SeekBar3);
		
		LinearLayout alayout13 = new LinearLayout(mContext);
        //布局大小
        alayout13.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout13.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout13);

		

		LinearLayout alayout14= new LinearLayout(mContext);
        //布局大小
        alayout14.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout14.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout14);

		final SeekBar SeekBar4 = new SeekBar(mContext);
        LinearLayout.LayoutParams SeekBarParams4 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBar4.setLayoutParams(SeekBarParams4);
        SeekBar4.setPadding(10, 10, 10, 10);
		SeekBar4.setMin(1);
		SeekBar4.setMax(10);
		SeekBar4.setProgress(0);
		LinearLayout alayout15 = new LinearLayout(mContext);
        //布局大小
        alayout15.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout15.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout15);

		final TextView SeekBartext4 = new TextView(mContext);
        LinearLayout.LayoutParams SeekBartextParams4 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBartext4.setLayoutParams(SeekBartextParams4);
        SeekBartext4.setText("原子速度:1");
		SeekBartext4.setTextSize(14);
        SeekBartext4.setTextColor(0xFF000000);
		alayout14.addView(SeekBartext4);
	    alayout15.addView(SeekBar4);
		
		LinearLayout alayout16 = new LinearLayout(mContext);
        //布局大小
        alayout16.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout16.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout16);

		
		LinearLayout alayout17= new LinearLayout(mContext);
        //布局大小
        alayout17.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout17.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout17);

		final SeekBar SeekBar5 = new SeekBar(mContext);
        LinearLayout.LayoutParams SeekBarParams5 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBar5.setLayoutParams(SeekBarParams5);
        SeekBar5.setPadding(10, 10, 10, 10);
		SeekBar5.setMin(1);
		SeekBar5.setMax(10);
		SeekBar5.setProgress(0);
		LinearLayout alayout18 = new LinearLayout(mContext);
        //布局大小
        alayout18.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout18.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout18);

		final TextView SeekBartext5 = new TextView(mContext);
        LinearLayout.LayoutParams SeekBartextParams5 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBartext5.setLayoutParams(SeekBartextParams5);
        SeekBartext5.setText("兔子跳速度:1");
		SeekBartext5.setTextSize(14);
        SeekBartext5.setTextColor(0xFF000000);
		alayout17.addView(SeekBartext5);
	    alayout18.addView(SeekBar5);
		
		LinearLayout alayout19= new LinearLayout(mContext);
        //布局大小
        alayout19.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout19.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout19);

		final SeekBar SeekBar6 = new SeekBar(mContext);
        LinearLayout.LayoutParams SeekBarParams6 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBar6.setLayoutParams(SeekBarParams6);
        SeekBar6.setPadding(10, 10, 10, 10);
		SeekBar6.setMin(1);
		SeekBar6.setMax(10);
		SeekBar6.setProgress(0);
		LinearLayout alayout20 = new LinearLayout(mContext);
        //布局大小
        alayout20.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout20.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout20);

		final TextView SeekBartext6 = new TextView(mContext);
        LinearLayout.LayoutParams SeekBartextParams6 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBartext6.setLayoutParams(SeekBartextParams6);
        SeekBartext6.setText("碰撞箱x:1");
		SeekBartext6.setTextSize(14);
        SeekBartext6.setTextColor(0xFF000000);
		alayout19.addView(SeekBartext6);
	    alayout20.addView(SeekBar6);
		
		LinearLayout alayout21= new LinearLayout(mContext);
        //布局大小
        alayout21.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout21.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout21);

		final SeekBar SeekBar7 = new SeekBar(mContext);
        LinearLayout.LayoutParams SeekBarParams7 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBar7.setLayoutParams(SeekBarParams7);
        SeekBar7.setPadding(10, 10, 10, 10);
		SeekBar7.setMin(2);
		SeekBar7.setMax(10);
		SeekBar7.setProgress(0);
		LinearLayout alayout22 = new LinearLayout(mContext);
        //布局大小
        alayout22.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout22.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout22);

		final TextView SeekBartext7 = new TextView(mContext);
        LinearLayout.LayoutParams SeekBartextParams7 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBartext7.setLayoutParams(SeekBartextParams7);
        SeekBartext7.setText("碰撞箱y:2");
		SeekBartext7.setTextSize(14);
        SeekBartext7.setTextColor(0xFF000000);
		alayout21.addView(SeekBartext7);
	    alayout22.addView(SeekBar7);
		
		LinearLayout alayout23= new LinearLayout(mContext);
        //布局大小
        alayout23.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout23.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout23);

		final SeekBar SeekBar8 = new SeekBar(mContext);
        LinearLayout.LayoutParams SeekBarParams8 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBar8.setLayoutParams(SeekBarParams8);
        SeekBar8.setPadding(10, 10, 10, 10);
		SeekBar8.setMin(1);
		SeekBar8.setMax(3);
		SeekBar8.setProgress(0);
		LinearLayout alayout24 = new LinearLayout(mContext);
        //布局大小
        alayout24.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout24.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout24);

		final TextView SeekBartext8 = new TextView(mContext);
        LinearLayout.LayoutParams SeekBartextParams8 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBartext8.setLayoutParams(SeekBartextParams8);
        SeekBartext8.setText("暗杀模式\n1骑2锁3绕:1");
		SeekBartext8.setTextSize(14);
        SeekBartext8.setTextColor(0xFF000000);
		alayout23.addView(SeekBartext8);
	    alayout24.addView(SeekBar8);
	    
	    		LinearLayout alayout25 = new LinearLayout(mContext);
        //布局大小
        alayout25.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout25.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout25);

		

		LinearLayout alayout26= new LinearLayout(mContext);
        //布局大小
        alayout26.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout26.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout26);

		final SeekBar SeekBar9 = new SeekBar(mContext);
        LinearLayout.LayoutParams SeekBarParams9 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBar9.setLayoutParams(SeekBarParams9);
        SeekBar9.setPadding(10, 10, 10, 10);
		SeekBar9.setMin(1);
		SeekBar9.setMax(2);
		SeekBar9.setProgress(0);
		LinearLayout alayout27 = new LinearLayout(mContext);
        //布局大小
        alayout27.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout27.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout27);

		final TextView SeekBartext9 = new TextView(mContext);
        LinearLayout.LayoutParams SeekBartextParams9 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBartext9.setLayoutParams(SeekBartextParams9);
        SeekBartext9.setText("自瞄模式\n1静态2动态:1");
		SeekBartext9.setTextSize(14);
        SeekBartext9.setTextColor(0xFF000000);
		alayout26.addView(SeekBartext9);
	    alayout27.addView(SeekBar9);
	    
	    	    		LinearLayout alayout28 = new LinearLayout(mContext);
        //布局大小
        alayout28.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout28.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout28);

		

		LinearLayout alayout29= new LinearLayout(mContext);
        //布局大小
        alayout29.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout29.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout29);

		final SeekBar SeekBar10 = new SeekBar(mContext);
        LinearLayout.LayoutParams SeekBarParams10 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBar10.setLayoutParams(SeekBarParams10);
        SeekBar10.setPadding(10, 10, 10, 10);
		SeekBar10.setMin(1);
		SeekBar10.setMax(10);
		SeekBar10.setProgress(0);
		LinearLayout alayout30 = new LinearLayout(mContext);
        //布局大小
        alayout30.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout30.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout30);

		final TextView SeekBartext10 = new TextView(mContext);
        LinearLayout.LayoutParams SeekBartextParams10 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBartext10.setLayoutParams(SeekBartextParams10);
        SeekBartext10.setText("高跳距离:1");
		SeekBartext10.setTextSize(14);
        SeekBartext10.setTextColor(0xFF000000);
		alayout29.addView(SeekBartext10);
	    alayout30.addView(SeekBar10);
	    
		    	    		LinearLayout alayout31 = new LinearLayout(mContext);
        //布局大小
        alayout31.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout31.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout31);

		

		LinearLayout alayout32= new LinearLayout(mContext);
        //布局大小
        alayout32.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout32.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout32);

		final SeekBar SeekBar11 = new SeekBar(mContext);
        LinearLayout.LayoutParams SeekBarParams11 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBar11.setLayoutParams(SeekBarParams11);
        SeekBar11.setPadding(10, 10, 10, 10);
		SeekBar11.setMin(1);
		SeekBar11.setMax(10);
		SeekBar11.setProgress(0);
		LinearLayout alayout33 = new LinearLayout(mContext);
        //布局大小
        alayout33.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout33.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout33);

		final TextView SeekBartext11 = new TextView(mContext);
        LinearLayout.LayoutParams SeekBartextParams11 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBartext11.setLayoutParams(SeekBartextParams11);
        SeekBartext11.setText("远跳距离:1");
		SeekBartext11.setTextSize(14);
        SeekBartext11.setTextColor(0xFF000000);
		alayout32.addView(SeekBartext11);
	    alayout33.addView(SeekBar11);
/*		
				    	    		LinearLayout alayout34 = new LinearLayout(mContext);
        //布局大小
        alayout34.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout34.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout34);

		

		LinearLayout alayout35= new LinearLayout(mContext);
        //布局大小
        alayout35.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout35.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout35);

		final SeekBar SeekBar12 = new SeekBar(mContext);
        LinearLayout.LayoutParams SeekBarParams12 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBar12.setLayoutParams(SeekBarParams12);
        SeekBar12.setPadding(10, 10, 10, 10);
		SeekBar12.setMin(1);
		SeekBar12.setMax(10);
		SeekBar12.setProgress(0);
		LinearLayout alayout36 = new LinearLayout(mContext);
        //布局大小
        alayout36.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        //布局与控件外部距离
        alayout36.setPadding(35, 35, 35, 35);
        //添加布局
        layout2.addView(alayout36);

		final TextView SeekBartext12 = new TextView(mContext);
        LinearLayout.LayoutParams SeekBartextParams12 = new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        SeekBartext12.setLayoutParams(SeekBartextParams12);
        SeekBartext12.setText("加速速度:1");
		SeekBartext12.setTextSize(14);
        SeekBartext12.setTextColor(0xFF000000);
		alayout35.addView(SeekBartext12);
	    alayout36.addView(SeekBar12);
		*/

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
			SeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {


				@Override
				public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
					Log.e("xyh", "onProgressChanged: " + progress + "");

					int Size = progress;

JNI.aszd(Size);
					SeekBartext.setText("暗杀最大速度:" + Size);		
					
					
				}
				@Override
				public void onStartTrackingTouch(SeekBar seekBar) {
				}

				@Override
				public void onStopTrackingTouch(SeekBar seekBar) {

				}
			});
		SeekBar2.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {


				@Override
				public void onProgressChanged(SeekBar seekBar2, int progress, boolean fromUser) {
					Log.e("xyh", "onProgressChanged: " + progress + "");

					int Size2 = progress;

JNI.hrjl(Size2);
					SeekBartext2.setText("环绕距离:" + Size2);		
	/*
	public static native void aszd(int a); //暗杀最大速度

public static native void hrjl(int a); //环绕距离

public static native void hrsd(int a); //环绕速度

public static native void yzsd(int a); //原子速度

public static native void tzsd(int a); //兔子速度

public static native void pzxx(int a); //碰撞箱x

public static native void pzxy(int a); //碰撞箱y

public static native void asmode(int a); //暗杀模式

public static native void zmmode(int a); //自瞄模式
					*/				


				}
				@Override
				public void onStartTrackingTouch(SeekBar seekBar2) {
				}

				@Override
				public void onStopTrackingTouch(SeekBar seekBar2) {

				}
			});
		SeekBar3.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {


				@Override
				public void onProgressChanged(SeekBar seekBar3, int progress, boolean fromUser) {
					Log.e("xyh", "onProgressChanged: " + progress + "");

					int Size3 = progress;

JNI.hrsd(Size3);
					SeekBartext3.setText("环绕速度:" + Size3);		
					
					

				}
				@Override
				public void onStartTrackingTouch(SeekBar seekBar3) {
				}

				@Override
				public void onStopTrackingTouch(SeekBar seekBar3) {

				}
			});
		SeekBar4.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {


				@Override
				public void onProgressChanged(SeekBar seekBar4, int progress, boolean fromUser) {
					Log.e("xyh", "onProgressChanged: " + progress + "");

					int Size4 = progress;

JNI.yzsd(Size4);
					SeekBartext4.setText("原子速度:" + Size4);		
					
					
				}
				@Override
				public void onStartTrackingTouch(SeekBar seekBar4) {
				}

				@Override
				public void onStopTrackingTouch(SeekBar seekBar4) {

				}
			});
		SeekBar5.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {


				@Override
				public void onProgressChanged(SeekBar seekBar5, int progress, boolean fromUser) {
					Log.e("xyh", "onProgressChanged: " + progress + "");

					int Size5 = progress;

JNI.tzsd(Size5);
					SeekBartext5.setText("兔子跳速度:" + Size5);		
					
					

				}
				@Override
				public void onStartTrackingTouch(SeekBar seekBar5) {
				}

				@Override
				public void onStopTrackingTouch(SeekBar seekBar5) {

				}
			});
		SeekBar6.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {


				@Override
				public void onProgressChanged(SeekBar seekBar6, int progress, boolean fromUser) {
					Log.e("xyh", "onProgressChanged: " + progress + "");

					int Size6 = progress;

JNI.pzxx(Size6);
					SeekBartext6.setText("碰撞箱x:" + Size6);		
					
					

				}
				@Override
				public void onStartTrackingTouch(SeekBar seekBar6) {
				}

				@Override
				public void onStopTrackingTouch(SeekBar seekBar6) {

				}
			});
			
		SeekBar7.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {


				@Override
				public void onProgressChanged(SeekBar seekBar7, int progress, boolean fromUser) {
					Log.e("xyh", "onProgressChanged: " + progress + "");

					int Size7 = progress;

JNI.pzxy(Size7);
					SeekBartext7.setText("碰撞箱y:" + Size7);		
					
					

				}
				@Override
				public void onStartTrackingTouch(SeekBar seekBar7) {
				}

				@Override
				public void onStopTrackingTouch(SeekBar seekBar7) {

				}
			});
		SeekBar8.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {


				@Override
				public void onProgressChanged(SeekBar seekBar8, int progress, boolean fromUser) {
					Log.e("xyh", "onProgressChanged: " + progress + "");

					int Size8 = progress;

JNI.asmode(Size8);
					SeekBartext8.setText("暗杀模式\n1骑2锁3绕:" + Size8);		
					
					
				}
				@Override
				public void onStartTrackingTouch(SeekBar seekBar8) {
				}

				@Override
				public void onStopTrackingTouch(SeekBar seekBar8) {

				}
			});
			
			SeekBar9.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {


				@Override
				public void onProgressChanged(SeekBar seekBar9, int progress, boolean fromUser) {
					Log.e("xyh", "onProgressChanged: " + progress + "");

					int Size9 = progress;

JNI.zmmode(Size9);
					SeekBartext9.setText("自瞄模式\n1静态2动态:" + Size9);		
					
					
				}
				@Override
				public void onStartTrackingTouch(SeekBar seekBar9) {
				}

				@Override
				public void onStopTrackingTouch(SeekBar seekBar9) {

				}
			});
			
			
			
		SeekBar10.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {


				@Override
				public void onProgressChanged(SeekBar seekBar10, int progress, boolean fromUser) {
					Log.e("xyh", "onProgressChanged: " + progress + "");

					int Size10 = progress;

JNI.gtgd(Size10);
					SeekBartext10.setText("高跳距离:" + Size10);		
					
					
				}
				@Override
				public void onStartTrackingTouch(SeekBar seekBar10) {
				}

				@Override
				public void onStopTrackingTouch(SeekBar seekBar10) {

				}
			});
		
		SeekBar11.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {


				@Override
				public void onProgressChanged(SeekBar seekBar11, int progress, boolean fromUser) {
					Log.e("xyh", "onProgressChanged: " + progress + "");

					int Size11 = progress;

JNI.ytcd(Size11);
					SeekBartext11.setText("远跳距离:" + Size11);		
					
					
				}
				@Override
				public void onStartTrackingTouch(SeekBar seekBar11) {
				}

				@Override
				public void onStopTrackingTouch(SeekBar seekBar11) {

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

