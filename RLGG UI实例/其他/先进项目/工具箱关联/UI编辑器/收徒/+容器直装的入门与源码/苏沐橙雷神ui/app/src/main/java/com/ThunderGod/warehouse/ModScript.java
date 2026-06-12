package com.ThunderGod.warehouse;
import com.ThunderGod.warehouse.*;
import com.ThunderGod.warehouse.UI.*;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.PopupWindow;
import android.content.Context;
import android.app.Activity;
import android.util.DisplayMetrics;
import android.widget.Toast;
public class ModScript {
	/*颜色值RGB*/
	public static int MSR=255;
	public static int MSG=0;
	public static int MSB=0;

	
	public static PopupWindow ModScriptUI;
    public static void ModScript(final Activity context) {
		final LinearLayout ModScript1=TView.TView(context, null, "RT", 0, W(context), H(context), "#00000000", 0, "RT", 0, null, null);
		final TextView ModScripttexts= Ttext.Ttext(context, ModScript1,TGmixed.FontColor(ModScripttext()), 12, "#ffffff", "RT", "#000000", 0, 1, 1);
	    ModScriptUI = Tpopup.TCdv(ModScript1, ModScript1, "RT", false, false, false, false, W(context), H(context), "Tr", 0, 0);
		final Thread th1= new Thread(new Runnable() {
				@Override
				public void run() {
					while (true) {
						/*必须在主线程内更改文字*/
						context.runOnUiThread(new Runnable() {
								@Override
								public void run() {
									ModScripttexts.setText(TGmixed.FontColor(ModScripttext()));
								}});
						try {
							Thread.sleep(250);
						} catch (InterruptedException e) {
						}
					}
				}});
		th1.start();
		final Thread th= new Thread(new Runnable() {
				@Override
				public void run() {
					/*颜色变化算法*/
					while (true) {
						if (MSR >= 0 && MSB == 0) {
							MSR = MSR - 5;
							MSG = MSG + 5; 
						}
						if (MSG >= 0 && MSR == 0) {
							MSG = MSG - 5;
							MSB = MSB + 5;
						}
						if (MSB >= 0 && MSG == 0) {
							MSR = MSR + 5;
							MSB = MSB - 5;
						}
						//s4s.setText("测试");
						String c=rgb2Hex(MSR, MSG, MSB);
                        //try{
                        try {
                            ModScripttexts.setTextColor(roundRect.hexColor(c));
                            ModScripttexts.setShadowLayer(20, 10, 0, roundRect.hexColor(c));
                            // }catch(Error){
                        } catch (Throwable e) {
                            System.out.println(e);
                        }
                        //}
						try {
							Thread.sleep(100);
						} catch (InterruptedException e) {

						}
					}
				}});
		th.start();
	}

	public static String ModScripttext() {
		String Ss="§l";
		if (UIs.st1)Ss = Ss + "Alpaadm \n";
		//if (测试.jss)Ss = Ss + "SecondsDigging \n";
        //这是ModScript显示的文字写法照这上面的写
		return Ss;
	}
	/*RGB转16进制*/
	public static String rgb2Hex(int r, int g, int b) {
		return String.format("#%02X%02X%02X", r, g, b);
	}

	public static int W(Context context) {
		return (int) (context.getResources().getDisplayMetrics().widthPixels);
	}
	public static int H(Context context) {
		return (int) (context.getResources().getDisplayMetrics().heightPixels);
	}



}
