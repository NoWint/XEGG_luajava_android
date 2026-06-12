package com.relax.vapev4.library;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;

import dev.answer.horizon.library.AnswerUI.CardView.ACardView;

public class Button{
    private ACardView Button;
    private Ttext btext;
    public Button(Context context){
        Button = new ACardView(context);
        Button.setLayoutParams(new ViewGroup.LayoutParams((int)(local.W()*0.1),(int)(local.H()*0.1)));
        Button.setClickable(true);
        Button.setCardElevation(10);
    }
    public Button Elevation(float v){
        Button.setCardElevation(v);
        return this;
    }
    public Button Radius(float v){
        Button.setRadius(v);
        return this;
    }
    public Button WH(int W,int H){
        Button.setLayoutParams(new ViewGroup.LayoutParams(W,H));
        return this;
    }
    public Button SBG(String color,int radius,String f,Object s){
        Button.setBackground(local.roundBG(color,radius,f,s));
        Button.setCardBackgroundColor(local.hexColor(color));
        return this;
    }
    public Button OnClick(final View.OnClickListener onclick){
        Button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onclick.onClick(v);
            }
        });
        return this;
    }
    public Button Ripple(boolean b){
        Button.setRipple(b);
        return this;
    }
    public Button children(TView view){
        view.addView(Button);
        return this;
    }
    public Button Text(Object text){
        btext = new Ttext(Button.getContext()).Text(text);
        //btext.children(Button);
        Button.addView(btext);
        return this;
    }
    public Button TextColor(String color){
        btext.setTextColor(local.hexColor(color));
        return this;
    }
    public Button Show(int radius,int x,int y,String color){
        btext.setShadowLayer(radius,x,y,local.hexColor(color));
        return this;
    }
    public Button Textsize(int s){
        btext.Size(s);
        return this;
    }
    public Button TextGravity(String gravity){
        btext.gravity(gravity);
        return this;
    }
}
