package com.ThunderGod.warehouse;
import android.widget.Toast;
import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.view.Gravity;
import android.widget.PopupWindow;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Queue;
import java.util.LinkedList;
import java.util.PriorityQueue;
import java.util.List;




public class Notice {
    
    public static List<PopupWindow> list=new ArrayList<>();
    public static int cs=0;
    public static PopupWindow Notices;
    public static void Notice(final Context context,String text){
        cs=cs+1;
        list.add(Notices);
        final LinearLayout Notice1=TView.TView(context,null,"CC",1,(int)(TGmixed.W(context) * 0.16),(int)(TGmixed.H(context) * 0.15),"#00000000",30,"RT",0,null,null);
        final LinearLayout Notice2=TView.TView(context,Notice1,"CC",1,(int)(TGmixed.W(context) * 0.15),(int)(TGmixed.H(context) * 0.1),"#ffffff",30,"RT",0,null,null);
        TextView toast2=Ttext.Ttext(context,Notice2,TGmixed.FontColor("§l"+" "+text+" "),18,"#000000","CC","#000000",1,0,0);
        Notice2.setElevation(10);
        //local.UIZoom(Notice1, "TP", 1.1f, 1, 400);
        local.UIShrink(Notice1, "TP", 0, 1, 0, 1, 1, 1, 200);
        Notices = Tpopup.TCdv(Notice1, Notice1, "RB", false, false, false, false,(int)(TGmixed.W(context) * 0.16),(int)(TGmixed.H(context) * 0.1), null, 50, list.size()*120);
        if(list.size()>=1){
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable(){
                    @Override
                    public void run() {
                            Notices.dismiss();
                        
                        for(int i =0; i < list.size(); i++){
                            if(list.get(i)!=null){
                               list.get(i).dismiss();
                            }
                        }                        
                    cs=0;
                    list.clear();
                    }
                }, 1500);
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable(){
                @Override
                public void run() {
                    for(int i =0; i < list.size(); i++){
                        if(list.get(i)!=null){
                            list.get(i).dismiss();
                            Notices.update(50, 120, (int)(TGmixed.W(context) * 0.16),109);
                        }
                        
                    }
                }
            }, 1000);
        }
}
