package com.ThunderGod.warehouse;
import com.ThunderGod.warehouse.*;
import android.widget.LinearLayout;
import android.content.Context;
import android.view.View;
import java.util.Map;
import java.util.HashMap;
import android.view.View.OnClickListener;
public class Switch {
    public static boolean swpd=false;
    public static LinearLayout Switch(Context context, LinearLayout view, boolean swpd1, final OnClickListener click) {
        final Map<LinearLayout,Boolean> swpd=new HashMap<>();
        final LinearLayout Switch=TView.TView(context, null, "CC", 0, (int)(TGmixed.W(context) * 0.1), (int)(TGmixed.H(context) * 0.14), "#00000000", 90, "RT", 0, null, null);
        final LinearLayout Switch1=TView.TView(context, Switch, "LC", 0, (int)(TGmixed.W(context) * 0.05), (int)(TGmixed.H(context) * 0.06), "#f4f4f4", 90, "RT", 0, null, null);
        final LinearLayout Switch2s=TView.TView(context, Switch1, "LC", 0, 10, (int)(TGmixed.H(context) * 0.05), "#00000000", 90, "RT", 0, null, null);
        final LinearLayout Switch2=TView.TView(context, Switch1, "CC", 0, (int)(TGmixed.H(context) * 0.03), (int)(TGmixed.H(context) * 0.03), "#aaaaaa", 99, "RT", 0,
            new View.OnClickListener(){
                @Override
                public void onClick(View view) {
                    if (swpd.get(Switch) == false) {
                        local.ObjectAnimatorofFloat(view, 300, "translationX", 0, 60, false, false, "RESTART", 0);
                        local.ValueAnimatorAGB(Switch1, roundRect.hexColor("#f4f4f4"), roundRect.hexColor("#9198e5"), 500, 0, 90, "RT");
                        local.ValueAnimatorAGB(view, roundRect.hexColor("#aaaaaa"), roundRect.hexColor("#f4f4f4"), 500, 0, 90, "RT");
                        swpd.put(Switch, true);
                    } else {
                        local.ObjectAnimatorofFloat(view, 300, "translationX", 60, 0, false, false, "RESTART", 0);
                        local.ValueAnimatorAGB(Switch1, roundRect.hexColor("#9198e5"), roundRect.hexColor("#f4f4f4"), 500, 0, 90, "RT");
                        local.ValueAnimatorAGB(view, roundRect.hexColor("#f4f4f4"), roundRect.hexColor("#aaaaaa"), 500, 0, 90, "RT");
                        swpd.put(Switch, false);
                    }
                    if (click != null) {
                        click.onClick(view);
                    }
                }}
            , null);
        final LinearLayout Switch3=TView.TView(context, Switch1, "LC", 0, (int)(TGmixed.W(context) * 0.015), 10 , "#57a8a8a8", 90, "RT", 0, null, null);
        if (view != null) {
            view.addView(Switch);
        }
        Switch1.setOnClickListener(new View.OnClickListener() {

                @Override
                public void onClick(View view) {
                    if (swpd.get(Switch) == false) {
                        local.ObjectAnimatorofFloat(Switch2, 300, "translationX", 0, 60, false, false, "RESTART", 0);
                        local.ValueAnimatorAGB(Switch1, roundRect.hexColor("#f4f4f4"), roundRect.hexColor("#9198e5"), 500, 0, 90, "RT");
                        local.ValueAnimatorAGB(Switch2, roundRect.hexColor("#aaaaaa"), roundRect.hexColor("#f4f4f4"), 500, 0, 90, "RT");
                        swpd.put(Switch, true);
                    } else {
                        local.ObjectAnimatorofFloat(Switch2, 300, "translationX", 60, 0, false, false, "RESTART", 0);
                        local.ValueAnimatorAGB(Switch1, roundRect.hexColor("#9198e5"), roundRect.hexColor("#f4f4f4"), 500, 0, 90, "RT");
                        local.ValueAnimatorAGB(Switch2, roundRect.hexColor("#f4f4f4"), roundRect.hexColor("#aaaaaa"), 500, 0, 90, "RT");
                        swpd.put(Switch, false);
                    }
                    if (click != null) {
                        click.onClick(view);
                    }
                }
            });
        Switch1.setElevation(12);
        Switch2.setElevation(12);
        if (swpd1 == false) {            
            local.ObjectAnimatorofFloat(Switch2, 300, "translationX", 60, 0, false, false, "RESTART", 0);
            //local.ValueAnimatorAGB(Switch1,roundRect.hexColor("#9198e5"), roundRect.hexColor("#f4f4f4"), 900, 0, 90, "RT");
            //local.ValueAnimatorAGB(Switch2,roundRect.hexColor("#f4f4f4"), roundRect.hexColor("#aaaaaa"), 900, 0, 90, "RT");
            Switch1.setBackgroundDrawable(roundRect.roundBGS(roundRect.hexColor("#f4f4f4"), 90, "RT", 0));
            Switch2.setBackgroundDrawable(roundRect.roundBGS(roundRect.hexColor("#aaaaaa"), 90, "RT", 0));
            swpd.put(Switch, false);
        } else {
            local.ObjectAnimatorofFloat(Switch2, 300, "translationX", 0, 60, false, false, "RESTART", 0);
            //local.ValueAnimatorAGB(Switch1,roundRect.hexColor("#f4f4f4"), roundRect.hexColor("#9198e5"), 900, 0, 90, "RT");
            //local.ValueAnimatorAGB(Switch2,roundRect.hexColor("#aaaaaa"), roundRect.hexColor("#f4f4f4"), 900, 0, 90, "RT");
            Switch1.setBackgroundDrawable(roundRect.roundBGS(roundRect.hexColor("#9198e5"), 90, "RT", 0));
            Switch2.setBackgroundDrawable(roundRect.roundBGS(roundRect.hexColor("#f4f4f4"), 90, "RT", 0));
            swpd.put(Switch, true);
        }
        return Switch;
    }


}
