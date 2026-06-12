package com.ThunderGod.warehouse;
import android.app.Activity;
import android.view.Window;
import android.view.WindowManager;
import android.view.View;
import android.os.Build;
import android.content.Context;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.view.View.OnLongClickListener;
import java.util.Collection;
import java.util.Arrays;
import java.util.Iterator;

public class TGmixed {
    //隐藏状态栏等
    public static void hideStatusBar(Activity activity) {
        if (activity == null) return;
        Window window = activity.getWindow();
        if (window == null) return;
        window.setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                        WindowManager.LayoutParams.FLAG_FULLSCREEN);
        window.getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_FULLSCREEN | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN | View.SYSTEM_UI_FLAG_LAYOUT_STABLE);
        WindowManager.LayoutParams lp = window.getAttributes();
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            lp.layoutInDisplayCutoutMode = WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
        }
        window.setAttributes(lp);
    }
		//获取屏幕大小
    public static int W(Context context) {
        return (int) (context.getResources().getDisplayMetrics().widthPixels);
		}
    public static int H(Context context) {
        return (int) (context.getResources().getDisplayMetrics().heightPixels);
		}

		//点击事件调用
    public static void setClickListener(final OnClickListener click, LinearLayout v) {
        if (click != null) {
            v.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        click.onClick(view);
                    }
                });
        }
    }
		//长按事件调用			
    public static void setlongClickListener(final OnLongClickListener onlong, LinearLayout v) {
        if (onlong != null) {
            v.setOnLongClickListener(new View.OnLongClickListener() {
                    @Override
                    public boolean onLongClick(View view1) {
                        onlong.onLongClick(view1);
                        return true;
                    }
                });
        }	
    }
    //文本颜色 by:Answer
    public static String[][] Color =new String[][]{
        {" "," &nbsp;"},
        {"\n","<br/>"},
        {"§l","</b><b>"},
        {"§m","</del><del>"},
        {"§n","</ins><ins>"},
        {"§o","</i><i>"},
        {"§r","</font></b></del></ins></i>"},
        {"§0","</font><font color=#000000>"},
        {"§1","</font><font color=#0000AA>"},
        {"§2","</font><font color=#00AA00>"},
        {"§3","</font><font color=#00AAAA>"},
        {"§4","</font><font color=#AA0000>"},
        {"§5","</font><font color=#AA00AA>"},
        {"§6","</font><font color=#FFAA00>"},
        {"§7","</font><font color=#cccccc>"},
        {"§8","</font><font color=#555555>"},
        {"§9","</font><font color=#5555FF>"},
        {"§a","</font><font color=#55FF55>"},
        {"§b","</font><font color=#55FFFF>"},
        {"§c","</font><font color=#FF5555>"},
        {"§d","</font><font color=#FF55FF>"},
        {"§e","</font><font color=#FFFF55>"},
        {"§f","</font><font color=#FFFFFF>"}
    };
    
    public static String join(Iterator it, String str) {
        if (!it.hasNext()) {
            return "";
        }
        String start = it.next().toString();
        if (!it.hasNext()) {
            return start;
        }
        StringBuilder sb = new StringBuilder(64).append(start);
        while (it.hasNext()) {
            sb.append(str);
            sb.append(it.next());
        }
        return sb.toString();
    }

    public static String join(Collection collection, String str) {
        return join(collection.iterator(), str);
    }


    public static String join(String[] strArr, String str) {
        return join(Arrays.asList(strArr), str);
    }


    public static android.text.Spanned FontColor(String text) {
        for (int e = 0; e < Color.length; e++) {
            text = join(text.split(Color[e][0]), Color[e][1]);
        }
        return android.text.Html.fromHtml(text);
    }



}
