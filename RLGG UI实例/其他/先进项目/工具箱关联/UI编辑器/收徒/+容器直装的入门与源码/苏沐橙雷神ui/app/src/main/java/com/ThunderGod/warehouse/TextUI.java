package com.ThunderGod.warehouse;
import com.ThunderGod.warehouse.*;
import android.widget.LinearLayout;
import android.app.Activity;
import android.widget.PopupWindow;
import android.content.Context;
import android.view.View;
import android.widget.TextView;
public class TextUI {
    public static PopupWindow TextUIs;
  public static void TextUI(Context context,String text,String string){
      final LinearLayout TextUI1=TView.TView(context, null, "CC", 1,(int)(TGmixed.W(context)), (int)(TGmixed.H(context)), "#22000000", 0, "TB", 0,
          new View.OnClickListener(){  
              @Override
              public void onClick(View view) {
                  //TextUIs.dismiss();
              }}
      ,null);
      final LinearLayout TextUI2=TView.TView(context, TextUI1, "CC", 1,(int)(TGmixed.W(context)*0.45), (int)(TGmixed.H(context)*0.8), "#ffffff", 50, "TB", 0,
      new View.OnClickListener(){  
              @Override
              public void onClick(View view) {
                 
              }}
              ,null);
      final LinearLayout TextUI3=TView.TView(context, TextUI2, "CC", 1,(int)(TGmixed.W(context)*0.45), (int)(TGmixed.H(context)*0.09), "#ffffff", 50, "TB", 0,null,null);
      final LinearLayout TextUI3s=TView.TView(context, TextUI2, "CC", 1,(int)(TGmixed.W(context)*0.4), 10, "#FFE5E5E5", 50, "TB", 0,null,null);
      final LinearLayout TextUI4=TView.TView(context, TextUI2, "CC", 1,(int)(TGmixed.W(context)*0.45), (int)(TGmixed.H(context)*0.58), "#ffffff", 50, "TB", 0,null,null);
      LinearLayout TextUI5=TView.TViewSV(context,TextUI4,(int)(TGmixed.W(context)*0.45),(int)(TGmixed.H(context)*0.56),"#00000000",50, "TB", 0);
      final TextView texts= Ttext.Ttext(context,TextUI3,TGmixed.FontColor("§l"+text), 20, "#9198e5", "CC", "#9198e5", 5, 1, 1);
      final TextView text1= Ttext.Ttext(context,TextUI5,string, 15, "#000000", "CC", "#000000", 0, 1, 1);
      ButtonS.ButtonS(context,TextUI2,"确定",(int)(TGmixed.W(context)*0.44), (int)(TGmixed.H(context)*0.1),"#f4f4f4",50,
          new View.OnClickListener(){  
              @Override
              public void onClick(View view) {
              TextUIs.dismiss();
              }}
              );
      TextUI2.setElevation(30);
      local.UIFadein(TextUI1, 0, 100, 400);
      local.UIPlumb(TextUI1, 20, 0, 400);
      local.UIZoom(TextUI1, "TP", 1.05f, 1, 400);
      TextUIs=Tpopup.TCdv(TextUI1, TextUI1, "CC", true, true, false, false, TGmixed.W(context), TGmixed.H(context), "Di", 0, 0);
   }
    
    
}
