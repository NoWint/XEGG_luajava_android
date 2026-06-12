package com.relax.vapev4.library;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.widget.LinearLayout;

public class Switchbut {
    public TView but;
    public TView but1;
    public TView but3;
    public Switchbut (Context context, LinearLayout view,String text,boolean pd,final View.OnClickListener click){
        but = new TView(context).WH((int)(local.W()*0.5),(int)(local.H()*0.16)).setBgD("#00000000",90,"TB",0).gravity("CC").children(view);
        but1 = new TView(context).WH((int)(local.W()*0.49),(int)(local.H()*0.14)).setBgD("#ffffff",50,"TB",0).gravity("CC").children(but).ori(0);
        TView but2 = new TView(context).WH((int)(local.W()*0.1),(int)(local.H()*0.14)).setBgD("#ffffff",50,"TB",0).gravity("CC").children(but1);
        but3 = new TView(context).WH((int)(local.W()*0.3),(int)(local.H()*0.14)).setBgD("#ffffff",50,"TB",0).gravity("CC").children(but1);
        Ttext buttext = new Ttext(context).gravity("CC").Text(text).Size(20).Color("#000000").Shadow(5,1,1,"#ffffff").children(but2);
        TView but4 = new TView(context).WH((int) (local.W() * 0.08), (int) (local.H() * 0.14)).setBgD("#ffffff", 50, "TB", 0).gravity("CC").children(but1);
        new TSwitch(context).children(but4).setCheck(pd).OnClick(
                new View.OnClickListener(){
                    @Override
                    public void onClick(View view){
                        if (click != null) {
                            click.onClick(view);
                        }
                    }
                }
        );
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            but1.setElevation(10);
        }
    }
    public Switchbut setW(Object W){
        but.setLayoutParams(new LinearLayout.LayoutParams((int)(W),(int)(local.H()*0.16)));
        but1.setLayoutParams(new LinearLayout.LayoutParams((int)(W)-(int)(local.W()*0.01),(int)(local.H()*0.14)));
        but3.setLayoutParams(new LinearLayout.LayoutParams((int)(W)-(int)(local.W()*0.2),(int)(local.H()*0.14)));
        return this;
    }
}
