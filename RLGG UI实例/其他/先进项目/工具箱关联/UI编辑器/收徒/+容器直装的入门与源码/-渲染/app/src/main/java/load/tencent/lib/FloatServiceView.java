package load.tencent.lib;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.PixelFormat;
import android.graphics.Typeface;
import android.os.Build;
import android.os.IBinder;
import android.view.Gravity;
import android.view.WindowManager;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.view.View;

public class FloatServiceView extends Service {

    private Context mContext;



	private WindowManager wManager;

	private WindowManager.LayoutParams wParams;

	private FloatMenu menu;



	private static TextView WaterMark;

	private TextView WaterMark1;

	public static void setText(String p0) {
	}

    @Override
    public IBinder onBind(Intent Intent) {
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        this.mContext = this;
		initView1();
		initView();




		menu = new FloatMenu(mContext);
		if (menu != null) {
			menu.showView();

				}
	}



	public static void ivvv() {
        WaterMark.setVisibility(View.GONE);
	}
    public  static void ivv() {
        WaterMark.setVisibility(View.VISIBLE);
	}
	public static void iv() {
        WaterMark.setVisibility(View.GONE);
	}
    public  static void i() {
        WaterMark.setVisibility(View.VISIBLE);
	}
	private void initView() {
		wManager = (WindowManager) mContext.getSystemService(Context.WINDOW_SERVICE);
        wParams = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            wParams.type = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
        } else {
            wParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
        }
        wParams.flags = WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL | WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE | WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE | WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN | WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS | WindowManager.LayoutParams.FLAG_FULLSCREEN;
        wParams.gravity = Gravity.CENTER | Gravity.CENTER;
        wParams.x = 0;
        wParams.y = 0;
        wParams.width = WindowManager.LayoutParams.WRAP_CONTENT;
        wParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
        wParams.format = PixelFormat.RGBA_8888;

		WaterMark = new TextView(mContext);
		LayoutParams params = new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
		WaterMark.setLayoutParams(params);
		WaterMark.setText("AUY mod\n用户:"+用户);
		ObjectAnimator colorAnim = ObjectAnimator.ofInt(WaterMark, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim.setEvaluator(new ArgbEvaluator());
		colorAnim.setDuration(3000);
		colorAnim.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim.start();
		WaterMark.setTextSize(50);
		WaterMark.setTextColor(0xa4db6dff);
		WaterMark.setTypeface(Typeface.defaultFromStyle(Typeface.BOLD));
		WaterMark.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti2.ttf"));  

		wManager.addView(WaterMark, wParams);
		WaterMark.setVisibility(View.GONE);
	}
	private void initView1() {
		wManager = (WindowManager) mContext.getSystemService(Context.WINDOW_SERVICE);
        wParams = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            wParams.type = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
        } else {
            wParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
        }
        wParams.flags = WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL | WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE | WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE | WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN | WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS | WindowManager.LayoutParams.FLAG_FULLSCREEN;
        wParams.gravity = Gravity.CENTER | Gravity.CENTER;
        wParams.x = 950;
        wParams.y = -450;
        wParams.width = WindowManager.LayoutParams.WRAP_CONTENT;
        wParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
        wParams.format = PixelFormat.RGBA_8888;

		WaterMark1 = new TextView(mContext);
		LayoutParams params = new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
		WaterMark1.setLayoutParams(params);
		WaterMark1.setText("ECmod");
		ObjectAnimator colorAnim1 = ObjectAnimator.ofInt(WaterMark1, "TextColor", 0x88333833, 0x88ca0007, 0x880333dc, 0x88089905);
		colorAnim1.setEvaluator(new ArgbEvaluator());
		colorAnim1.setDuration(3000);
		colorAnim1.setRepeatCount(ValueAnimator.INFINITE);
		colorAnim1.setRepeatMode(ValueAnimator.REVERSE);
		colorAnim1.start();
		WaterMark1.setTextSize(20);
		WaterMark1.setTextColor(0xa4db6dff);
		WaterMark1.setTypeface(Typeface.defaultFromStyle(Typeface.BOLD));
		WaterMark1.setTypeface(Typeface.createFromAsset(mContext.getAssets(),"ziti2.ttf"));  

		wManager.addView(WaterMark1, wParams);
	}


    @Override
    public void onDestroy() {
        super.onDestroy();
        if (menu != null) {
            menu.clearView();
        }
    }
	private String 用户=Tools.读取文件("storage/emulated/0/用户.txt");
}






	





















