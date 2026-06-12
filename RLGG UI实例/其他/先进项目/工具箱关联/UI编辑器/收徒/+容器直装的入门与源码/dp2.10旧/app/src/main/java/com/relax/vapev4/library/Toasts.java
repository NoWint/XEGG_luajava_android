package com.relax.vapev4.library;
import android.graphics.Typeface;
import android.os.Build;
import android.widget.Toast;
import android.content.Context;
import android.view.Gravity;

import java.util.Objects;

public class Toasts {
    public static Toast Toasts(Context context,String text,String g){
        Toast toast=Toast.makeText(context,text,Toast.LENGTH_SHORT);
        TView toast1=new TView(context).gravity("CC").WH(null,null).ori(0).setBgD("#ffffff",30,"TB",0);
        Ttext toast2=new Ttext(context).Text(" "+text+" ").Size(13).Color("#000000").gravity("CC").Shadow(1,1,1,"#f4f4f4").children(toast1);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            toast1.setElevation(80);
        }
        toast2.setPadding(30,30,30,30);
        local.UIZoom(toast2,"TP",1.1f,1,400);
        toast2.setTypeface(Typeface.MONOSPACE);
        if(Objects.equals(g, "T")){
            toast.setGravity(Gravity.CENTER|Gravity.TOP,0,0);
        }else if(Objects.equals(g, "B")){
            toast.setGravity(Gravity.BOTTOM,0,200);
        }else if(Objects.equals(g, "Ts")){
            toast.setGravity(Gravity.CENTER|Gravity.BOTTOM,0,0);
        }
        toast.setView(toast1);
        toast.show();
        return toast;
    }
}
