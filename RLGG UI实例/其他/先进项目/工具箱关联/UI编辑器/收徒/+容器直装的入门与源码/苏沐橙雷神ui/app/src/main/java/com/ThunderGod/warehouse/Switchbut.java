package com.ThunderGod.warehouse;
import com.ThunderGod.warehouse.*;
import android.widget.LinearLayout;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
public class Switchbut {
    public static LinearLayout Switchbut(Context context,LinearLayout view1,String text,boolean swb,final OnClickListener click){
        final LinearLayout swbui1=TView.TView(context, view1, "CC", 0, (int)(TGmixed.W(context) * 0.51), (int)(TGmixed.H(context) * 0.16),"#00000000", 40, "RT", 0, null, null);
        final LinearLayout swbui2=TView.TView(context, swbui1, "CC", 0, (int)(TGmixed.W(context) * 0.5), (int)(TGmixed.H(context) * 0.14),"#ffffff", 40, "RT", 0, null, null);
        final LinearLayout swbui3=TView.TView(context, swbui2, "CC", 0, (int)(TGmixed.W(context) * 0.1), (int)(TGmixed.H(context) * 0.14),"#ffffff", 40, "RT", 0, null, null);
        final LinearLayout swbui4=TView.TView(context, swbui2, "CC", 0, (int)(TGmixed.W(context) * 0.3), (int)(TGmixed.H(context) * 0.14),"#ffffff", 40, "RT", 0, null, null);
        TextView swbuitext=Ttext.Ttext(context,swbui3,TGmixed.FontColor("§l"+text),20,"#000000","CC","#000000",5,0,0);
        Switch.Switch(context,swbui2,swb,new View.OnClickListener(){
                @Override
                public void onClick(View view) {
                    if (click != null) {
                        click.onClick(view);
                    }
                }}
        );
        swbui2.setElevation(10);
        return swbui1;
    }
    
    
}
