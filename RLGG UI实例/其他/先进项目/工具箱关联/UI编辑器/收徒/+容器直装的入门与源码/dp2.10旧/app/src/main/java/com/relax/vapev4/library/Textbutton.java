package com.relax.vapev4.library;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import java.util.HashMap;
import java.util.Map;

public class Textbutton
{
    public static Ttext Text;
    public static boolean tbpd=false;
    public static TView Textbutton1;
    public static LinearLayout Textbutton(Context context,String text,LinearLayout view,boolean tbpd1,int W,int H,final View.OnClickListener click){
        final Map<LinearLayout,Boolean> tbpd=new HashMap<>();
        Textbutton1 = new TView(context).gravity("CC").ori(0).WH(W,H).setBgD("#00000000",90,"TB",0).onClick(
                new View.OnClickListener(){
                @Override
                public void onClick(View view){
                           if(tbpd.get(Textbutton1)==false) {
                               local.ObjectAnimator(Text,"ofInt",300,"textColor",local.hexColor("#000000"),local.hexColor("#9198e5"),false,true,"RESTART",0);
                               tbpd.put(Textbutton1,true);
                           }else{
                               local.ObjectAnimator(Text,"ofInt",300,"textColor",local.hexColor("#9198e5"),local.hexColor("#000000"),false,true,"RESTART",0);
                               tbpd.put(Textbutton1,false);
                           }
                           if (click != null) {
                               click.onClick(view);
                           }

        }});
        Text = new Ttext(context).gravity("CC").Text(local.FontColor("§l"+text)).Size(20).Color("#000000").Shadow(5,1,1,"#ffffff").children(Textbutton1);
        if(view != null){
            view.addView(Textbutton1);
        }
        if (!tbpd1) {
            tbpd.put(Textbutton1,false);
            Text.setTextColor(local.hexColor("#000000"));
        }else{
            tbpd.put(Textbutton1,true);
            Text.setTextColor(local.hexColor("#9198e5"));
        }
            return  Textbutton1;
    }
}
