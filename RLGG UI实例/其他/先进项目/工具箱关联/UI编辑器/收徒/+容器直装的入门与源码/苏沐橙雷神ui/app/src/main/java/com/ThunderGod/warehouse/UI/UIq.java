package com.ThunderGod.warehouse.UI;
import android.os.Handler;
import android.os.Looper;
import android.content.Context;
import com.ThunderGod.warehouse.UI.*;
import android.app.Activity;
import com.ThunderGod.warehouse.TextUI;
public class UIq {
    public static String string="本UI是雷定制的UI但是没有给我发钱\n"+
    "所以我把本UI的源码扬了\n"+
    "任何人都能使用，但如果要使用本UI并进行售卖\n"+
    "仅需骂QQ:474074934十句\n"+
    "即可截图找我授权\n"+
    "作者QQ:2702353980"
    ;
    public static void ceshikaiq(final Activity context){
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable(){
                @Override
                public void run() {
                    UI.UI(context);
                    TextUI.TextUI(context,"关于本库",string);
                }
			}, 1000);
        
    }
    
    
}
