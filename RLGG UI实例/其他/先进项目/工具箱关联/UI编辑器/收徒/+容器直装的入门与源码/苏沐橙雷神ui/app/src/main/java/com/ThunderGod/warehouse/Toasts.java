package com.ThunderGod.warehouse;
import android.widget.Toast;
import android.app.Activity;
import com.ThunderGod.warehouse.*;
import android.widget.LinearLayout;
import android.view.View;
import android.content.Context;
import android.view.Gravity;
import android.widget.TextView;
public class Toasts {
   public static Toast Toasts(Context context,String text,String g){
	 Toast toast=Toast.makeText(context,text,Toast.LENGTH_SHORT);
	 LinearLayout toast1=TView.TView(context,null,"CC",0,null,null,"#ffffff",30,"RT",0,null,null);
	 TextView toast2=Ttext.Ttext(context,toast1," "+text+" ",13,"#000000","CC","#000000",1,0,0);
	 toast1.setElevation(80);
	 toast2.setPadding(30,30,30,30);
	 local.UIZoom(toast2,"TP",1.1f,1,400);
	 toast2.setTypeface(android.graphics.Typeface.MONOSPACE);
	 if(g=="T"){
	 toast.setGravity(Gravity.CENTER|Gravity.TOP,0,0);
	 }else if(g=="B"){
     toast.setGravity(Gravity.BOTTOM|Gravity.BOTTOM,0,200);
	 }else if(g=="Ts"){
	 toast.setGravity(Gravity.CENTER|Gravity.BOTTOM,0,0);
	 }
	 toast.setView(toast1);
     toast.show();
	 return toast;
   }
}
