package com.ThunderGod.warehouse;
import com.ThunderGod.warehouse.*;
import android.widget.LinearLayout;
import android.content.Context;
import android.widget.TextView;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ScrollView;
import android.app.Activity;
import java.util.HashMap;
import java.util.Map;
public class TextButton {
    public static TextView TextButton1text;
    public static boolean pd1=false;

    public static LinearLayout TextButton(final Context context, LinearLayout view, String text, int W, int H, final Object fillet, final boolean bh, final boolean a2s, final OnClickListener click) {
        final Map<LinearLayout,Boolean> pd1=new HashMap<>();
		//final boolean pd1=false;
        final LinearLayout TextButton1=TView.TView(context, null, "CC", 0, W, H, "#ffffff", fillet, "RT", 0, null, null);
		final TextView TextButton1text = Ttext.Ttext(context, TextButton1, text, 20, "#000000", "CC", "#000000", 5, 1, 1);
		TextButton1.setOnClickListener(new View.OnClickListener() {
				@Override
				public void onClick(View view) {
                    
                    if (bh == true) {
                        if (pd1.get(TextButton1) == false) {
                            pd1.put(TextButton1, true);
                            local.ObjectAnimatorofInt(TextButton1text, 300, "textColor", roundRect.hexColor("#000000"), roundRect.hexColor("#9198e5"), false, true, "RESTART", 0);
                            local.UIZoom(TextButton1text, "TP", 1.02f, 1, 300);
                        } else {
                            pd1.put(TextButton1, false);
                            local.ObjectAnimatorofInt(TextButton1text, 300, "textColor", roundRect.hexColor("#9198e5"), roundRect.hexColor("#000000"), false, true, "REVERSE", 0);
                            local.UIZoom(TextButton1text, "TP", 1.02f, 1, 300);
                        }
                        if (click != null) {
                            click.onClick(view);
                        }
                    } else {
                        local.UIZoom(TextButton1text, "TP", 1.02f, 1, 300);
                        if (click != null) {
                            click.onClick(view);
                        }
                    }

				}});
                if(view!=null){
		view.addView(TextButton1);
        }
        if (a2s == true) {
            pd1.put(TextButton1, true);
            TextButton1text.setTextColor(roundRect.hexColor("#9198e5"));
        } else {
            pd1.put(TextButton1, false);
            TextButton1text.setTextColor(roundRect.hexColor("#000000"));
		}

		return TextButton1;
	}
}
