package com.ThunderGod.warehouse;
import android.widget.TextView;
import android.app.Activity;
import com.ThunderGod.warehouse.*;
import android.view.Gravity;
import android.view.View;
import android.widget.LinearLayout;
import android.content.Context;
public class Ttext {
    public static TextView Ttext(Context activity,LinearLayout view,Object text,int size,String color,String gravity,String color2,int radius,int x,int y){
		TextView textView = new TextView(activity);
		if(gravity=="LT"){
			textView.setGravity(Gravity.LEFT|Gravity.TOP);
		}else if(gravity=="LC"){
			textView.setGravity(Gravity.LEFT|Gravity.CENTER);
		}else if(gravity=="LB"){
			textView.setGravity(Gravity.LEFT|Gravity.BOTTOM);
		}else if(gravity=="CT"){
			textView.setGravity(Gravity.CENTER|Gravity.TOP);
		}else if(gravity=="CC"){
			textView.setGravity(Gravity.CENTER|Gravity.CENTER);
		}else if(gravity=="CB"){
			textView.setGravity(Gravity.CENTER|Gravity.TOP);
		}else if(gravity=="RT"){
			textView.setGravity(Gravity.RIGHT|Gravity.TOP);
		}else if(gravity=="RC"){
			textView.setGravity(Gravity.RIGHT|Gravity.CENTER);
		}else if(gravity=="RB"){
			textView.setGravity(Gravity.RIGHT|Gravity.BOTTOM);
		}
    /*
		if(text!=null){
		textView.setText((String)(text));
		}
    */
    if(text instanceof android.text.Spanned){
        textView.setText((android.text.Spanned)(text));
        }else{
        textView.setText((String)(text));
        }
		if(!"null".equals(String.valueOf(size))){
		textView.setTextSize(size);
		}
		if(color!=null){
		textView.setTextColor(roundRect.hexColor(color));
		}
		if(view!=null){
		view.addView(textView);
		}
		if(color2!=null){
		textView.setShadowLayer(radius, x, y,roundRect.hexColor(color2));
		}
	    return textView;
	}
}
