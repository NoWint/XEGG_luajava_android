package com.relax.mix.newlibrary;
import android.animation.LayoutTransition;
import android.content.Context;
import android.graphics.Canvas;
import android.view.Gravity;
import android.widget.LinearLayout;
import com.relax.vapev4.library.Ttext;
import com.relax.vapev4.library.local;
import com.relax.vapev4.library.Tpopup;
public class Notice{
    private TView n1;

    private Ttext description;

    private Ttext title;
    public Notice(Context context){
        n1=new TView(context).ori(1);
        LinearLayout.LayoutParams n1s=new LinearLayout.LayoutParams(-2,-2);
        n1s.gravity=Gravity.BOTTOM;
        n1.setLayoutParams(n1s);
        LayoutTransition transition = new LayoutTransition();
        n1.setLayoutTransition(transition);
        Tpopup nP1= new Tpopup().SO(false).SC(false).SF(false).ST(false).WH(-2,-2).gravity(n1,"RB",0,0);
    }
    public Notice make(String titleText,boolean b){
        final TView[] n2=new TView[1];
        n2[0] = new TView(n1.getContext()).ori(0).WH(-2, local.dip2px(60)).setBgD("#CA1B191A",local.dip2px(6),"TB",0);
        LinearLayout.LayoutParams n=new LinearLayout.LayoutParams(-2,local.dip2px(60));
        n.gravity= Gravity.CENTER|Gravity.RIGHT;
        n.setMargins(local.dip2px(10),local.dip2px(10),local.dip2px(10),local.dip2px(10));
        n2[0].setLayoutParams(n);
        n2[0].setElevation(local.dip2px(8));
        n2[0].setPadding(0,local.dip2px(10),0,local.dip2px(10));
        n2[0].postOnceDelayed(new PostCallback() {
            @Override
            public void onPost(int width, int height) {
                if (n1.getChildCount() > 0){
                    for (int i = 0;i < n1.getChildCount(); i++){
                        if (n1.getChildAt(i)==n2[0]){
                            n1.removeViewAt(i);
                        }
                    }
                }
            }
        },Math.max(2500L * n1.getChildCount(),2500L));
        String color;
        if (!b){
            color="#FFFFFFFF";
        }else {
            color="#FFFFFFFF";
        }
        TView state = new TView(n1.getContext()).WH(local.dip2px(10),local.dip2px(10)).setBgD(color,local.dip2px(10),"TB",0).children(n2[0]);
        LinearLayout.LayoutParams s = new LinearLayout.LayoutParams(local.dip2px(10),local.dip2px(10));
        s.gravity=Gravity.CENTER;
        s.leftMargin=local.dip2px(10);
        state.setLayoutParams(s);
        TView textContainer = new TView(n1.getContext()).ori(1).children(n2[0]);
        LinearLayout.LayoutParams t = new LinearLayout.LayoutParams(-2,-2);
        t.gravity=Gravity.CENTER;
        t.leftMargin=local.dip2px(10);
        t.rightMargin=local.dip2px(10);
        textContainer.setLayoutParams(t);
        title = new Ttext(n1.getContext()).Text("Module - "+titleText).Size(14).Color("#FFFFFFFF").children(textContainer);
        title.setSingleLine(true);
        if(b==true){
            description = new Ttext(n1.getContext()).Text("Enabled").Size(12).Color("#FFFFFFFF").children(textContainer);
        }else{
            description = new Ttext(n1.getContext()).Text("Disable").Size(12).Color("#FFFFFFFF").children(textContainer);
        }
        description.setSingleLine(true);
        if (n1.getChildCount() > 0){
            if (n1.getChildCount() * local.dip2px(80) + local.dip2px(80) > local.H()){
                n1.removeViewAt(0);
            }
        }
        n1.addView(n2[0]);
        return this;
    }
}
