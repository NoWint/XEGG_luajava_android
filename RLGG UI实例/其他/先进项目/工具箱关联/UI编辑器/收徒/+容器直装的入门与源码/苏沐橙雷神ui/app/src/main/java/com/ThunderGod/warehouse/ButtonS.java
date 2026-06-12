package com.ThunderGod.warehouse;
import android.widget.LinearLayout;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.MotionEvent;
import android.widget.TextView;
public class ButtonS {
    public static LinearLayout ButtonS(Context context,LinearLayout view,String text,int W,int H,final String buttoncolor,int fillet,final OnClickListener click){
        final LinearLayout ButtonS1=TView.TView(context, null, "CC", 1,W, H, "#00000000", 0, "TB", 50,null,null);
        final LinearLayout ButtonS2=TView.TView(context, ButtonS1, "CC", 1,W-(int)(TGmixed.W(context)*0.01), H-(int)(TGmixed.H(context)*0.01),buttoncolor,fillet, "TB", 0,
            new View.OnClickListener(){  
                @Override
                public void onClick(View view) {
                //click.onClick(view);
                }}
        ,null);
        final TextView Buttontext= Ttext.Ttext(context,ButtonS2,text, 17, "#000000", "CC", "#000000", 5, 1, 1);
        ButtonS2.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    click.onClick(view);
                }
            });
        ButtonS2.setOnTouchListener(new View.OnTouchListener(){
                @Override
                public boolean onTouch(View view, MotionEvent event) {
                    int action = event.getAction();                    
                    if (action == MotionEvent.ACTION_DOWN) {
                        //点击
                        ButtonS2.setBackgroundDrawable(roundRect.roundBG("#e9e9e9", 50, "TB", 1));
                    } else if (action == MotionEvent.ACTION_UP) {
                        //松开  
                        ButtonS2.setBackgroundDrawable(roundRect.roundBG(buttoncolor, 50, "TB", 1));
                    } else if (action == MotionEvent.ACTION_MOVE) {
                        //移动
                        ButtonS2.setBackgroundDrawable(roundRect.roundBG("#e9e9e9", 50, "TB", 1));
                    }
                    return false;
                }
            });
        
        view.addView(ButtonS1);
        return ButtonS1;
     }
    
    
}
