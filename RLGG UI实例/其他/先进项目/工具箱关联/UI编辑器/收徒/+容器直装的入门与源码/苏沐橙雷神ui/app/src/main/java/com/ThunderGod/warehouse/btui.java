package com.ThunderGod.warehouse;
import android.widget.LinearLayout;
import com.ThunderGod.warehouse.*;
import android.content.Context;
import android.widget.TextView;
import android.view.View;
import java.util.Map;
import java.util.HashMap;
import android.view.View.OnClickListener;
public class btui {
    public static boolean btpd=false;
    //public static LinearLayout btui5;
    public static TextView btui1text;
    public static LinearLayout btui(Context context,final LinearLayout view1,String text,final boolean btbh,boolean btpd1,final OnClickListener click){
        final Map<LinearLayout,Boolean> btpd=new HashMap<>();
        final LinearLayout btui1=TView.TView(context, view1, "CC", 0, (int)(TGmixed.W(context) * 0.51), (int)(TGmixed.H(context) * 0.16),"#00000000", 40, "RT", 0, null, null);
        final LinearLayout btui2=TView.TView(context, btui1, "CC", 0, (int)(TGmixed.W(context) * 0.5), (int)(TGmixed.H(context) * 0.14),"#ffffff", 40, "RT", 0, null, null);
        final LinearLayout btui3=TView.TView(context, btui2, "CC", 0, (int)(TGmixed.W(context) * 0.1), (int)(TGmixed.H(context) * 0.14),"#00000000", 40, "RT", 0, null, null);
        TextView btuitext=Ttext.Ttext(context,btui3,TGmixed.FontColor("§l"+text),20,"#000000","CC","#000000",5,0,0);
        final LinearLayout btui4=TView.TView(context, btui2, "CC", 0, (int)(TGmixed.W(context) * 0.28), (int)(TGmixed.H(context) * 0.14),"#00000000", 40, "RT", 0, null, null);
        final LinearLayout btui5=TView.TView(context, btui2, "CC", 0, (int)(TGmixed.W(context) * 0.11), (int)(TGmixed.H(context) * 0.11),"#f4f4f4", 40, "RT", 0, null, null);
        
        btui1text=Ttext.Ttext(context,btui5,TGmixed.FontColor("§l关闭"),20,"#000000","CC","#000000",5,0,0);
        btui2.setElevation(10);
        btui5.setElevation(10);
        btui5.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if(btbh==true){
                    if(btpd.get(btui1) == false){
                        btpd.put(btui1, true);
                        btui5.setBackgroundDrawable(roundRect.roundBG(new String []{"#ADFFF3","#E4FFC9"}, 40, "LR", 0));
                        btui1text.setText((android.text.Spanned)(TGmixed.FontColor("§l开启")));
                        local.UIPlumb(view1,-200,0,300);
                    }else{
                        btpd.put(btui1, false);
                        btui5.setBackgroundDrawable(roundRect.roundBG("#f4f4f4", 40, "LR", 0));
                        btui1text.setText((android.text.Spanned)(TGmixed.FontColor("§l关闭")));
                        local.UIPlumb(view1,-200,0,300);
                    }
                    }
                    if (click != null) {
                        click.onClick(view);
                    }
                }
            });
            if(btpd1==false){
            btpd.put(btui1, false);
            btui5.setBackgroundDrawable(roundRect.roundBG("#f4f4f4", 40, "LR", 0));
            btui1text.setText((android.text.Spanned)(TGmixed.FontColor("§l关闭")));
            }else{
            btpd.put(btui1, true);
            btui5.setBackgroundDrawable(roundRect.roundBG(new String []{"#ADFFF3","#E4FFC9"}, 40, "LR", 0));
            btui1text.setText((android.text.Spanned)(TGmixed.FontColor("§l开启")));
            }
        return btui1;
    }
    
    
}
