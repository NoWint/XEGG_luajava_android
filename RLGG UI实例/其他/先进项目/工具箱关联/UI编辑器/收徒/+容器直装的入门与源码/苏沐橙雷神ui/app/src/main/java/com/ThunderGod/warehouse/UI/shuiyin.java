package com.ThunderGod.warehouse.UI;
import android.widget.LinearLayout;
import com.ThunderGod.warehouse.*;
import android.content.Context;
import android.widget.PopupWindow;
import android.widget.TextView;
public class shuiyin {
    public static PopupWindow syUIb;
    public static void shuiyin(Context context){
        final LinearLayout syUI=TView.TView(context, null, "CC", 1, (int)(TGmixed.W(context)), (int)(TGmixed.H(context)),"#00000000", 0, "RT", 0, null,null);
        TextView text=Ttext.Ttext(context,syUI,TGmixed.FontColor("§lForeverPermanent"),60,"#ffffbc9d","CC","#000000",0,0,0);
        syUIb = Tpopup.TCdv(syUI, syUI, "CC", false, false, false, false, (int)(TGmixed.W(context)), (int)(TGmixed.H(context)), "Di", 0, 0);
    }
    
    
}
