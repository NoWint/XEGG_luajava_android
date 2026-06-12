package com.relax.vapev4.library;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

import java.util.Deque;
import java.util.LinkedList;
/*
by:ThunderGod
Date:23/4/28
Time:22:45
Animator by:苏沐橙，源起，源落。
*/
public class Notice {
    private Tpopup noticepop;
    private TView notice;
    public Notice(Context context){
        final Deque<LinearLayout> noticeQ=new LinkedList<>();
        notice=new TView(context).WH(-2,1000).setBgD("#00000000",0,"TB",0).gravity("RB").ori(1);
        /*
        noticeadd = new RelativeLayout(context);
        noticeadd.setLayoutParams(new ViewGroup.LayoutParams(-2,1000));
        noticeadd.setGravity(Gravity.BOTTOM);
        notice.addView(noticeadd);
        */
        noticepop = new Tpopup().WH(-2,1000).SC(true).SO(false).SF(false).ST(false).Anim("Tr").gravity(notice,"RB",0,local.dip2px(10));
    }
    private Deque<LinearLayout> noticeQ=new LinkedList<>();
    public Notice Noticeadd(String text,boolean bo){
        final TView notice1=new TView(notice.getContext()).WH((int)(local.W()*0.32),(int)(local.H()*0.08)).setBgD("#00000000",0,"TB",0).gravity("CC").ori(1).Blur(4);
        TView notice2=new TView(notice.getContext()).WH((int)(local.W()*0.3),(int)(local.H()*0.07)).setBgD("#11000000",local.dip2px(2),"TB",0).gravity("CC").ori(1).children(notice1);
        FrameLayout notice3=TView.TViewF(notice1.getContext(),notice2,(int)(local.W()*0.3),(int)(local.H()*0.07),"#11000000",local.dip2px(2));
        TView notice4=new TView(notice.getContext()).WH((int)(local.W()*0.3),(int)(local.H()*0.07)).setBgD("#00000000",local.dip2px(2),"TB",0).gravity("RC").ori(1);
        final TView notice4s=new TView(notice.getContext()).WH(0,(int)(local.H()*0.07)).setBgD("#000000",local.dip2px(2),"TB",0).gravity("RC").ori(1).children(notice4);
        notice3.addView(notice4);
        noticeQ.addLast(notice1);
        /*true*/
        if (bo) {
            TView noticetrue1 = new TView(notice.getContext()).WH((int) (local.H() * 0.1), (int) (local.H() * 0.07)).setBgD("#00000000", 10, "TB", 0).gravity("CC").ori(1);
            TView noticetrue2 = new TView(notice.getContext()).WH((int) (local.H() * 0.08), (int) (local.H() * 0.07)).setBgD("#00000000", 99, "TB", 0).gravity("CC").ori(1).children(noticetrue1);
            Ttext noticetrue3 = new Ttext(notice.getContext()).gravity("CC").Text(local.FontColor("§l√")).Size(14).Color("#6c6c6c").Shadow(1, 1, 1, "#000000").children(noticetrue2);
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                noticetrue2.setElevation(10);
            }
            notice3.addView(noticetrue1);
            local.UIFadein(noticetrue2,0,100,800);
        }
        if (!bo) {
            /*flase*/
            TView noticefalse1 = new TView(notice.getContext()).WH((int) (local.H() * 0.1), (int) (local.H() * 0.07)).setBgD("#00000000", 10, "TB", 0).gravity("CC").ori(1);
            TView noticefalse2 = new TView(notice.getContext()).WH((int) (local.H() * 0.08), (int) (local.H() * 0.07)).setBgD("#00000000", 99, "TB", 0).gravity("CC").ori(1).children(noticefalse1);
            Ttext noticeflase3 = new Ttext(notice.getContext()).gravity("CC").Text(local.FontColor("§l㐅")).Size(14).Color("#6c6c6c").Shadow(1, 1, 1, "#000000").children(noticefalse2);
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                noticefalse2.setElevation(10);
            }
            notice3.addView(noticefalse1);
            local.UIFadein(noticefalse2,0,100,800);
        }
        TView notice3s=new TView(notice.getContext()).WH((int)(local.W()*0.3),(int)(local.H()*0.07)).setBgD("#00000000",local.dip2px(2),"TB",0).gravity("CC").ori(1).children(notice3);

        TView notice5=new TView(notice.getContext()).WH((int)(local.W()*0.2),(int)(local.H()*0.07)).setBgD("#00000000",local.dip2px(2),"TB",0).gravity("CC").ori(1);
        notice3s.addView(notice5);
        Ttext noticetext=new Ttext(notice.getContext()).gravity("LC").Text(local.FontColor("§lDinosaurF-插件:")).Size(10).Color("#ffffffff").Shadow(1,1,1,"#e66465");
        Ttext noticetext1=new Ttext(notice.getContext()).gravity("LC").Text(local.FontColor("§l"+text+":")+""+bo).Size(8).Color("#cccccc").Shadow(1,1,1,"#e66465");
        notice5.addView(noticetext);
        notice5.addView(noticetext1);

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            notice2.setElevation(10);
        }
        notice.addView(notice1);
        local.ValueAnimator("ofFloat",(int)(local.W()*0.32),0,200,0,false,false,new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
                float values = (float) animation.getAnimatedValue();
                notice1.setX(values);
            }
        });

        local.ValueAnimator("ofFloat",(int)(local.H()*0.07),0,200,0,false,false,new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
                float values = (float) animation.getAnimatedValue();
                notice1.setTranslationY(values);
            }
        });

        /*notice进度动画*/
        local.ValueAnimator("ofInt",0,(int)(local.W()*0.3),600,0,false,false,new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
                int values = (int) animation.getAnimatedValue();
                notice4s.setLayoutParams(new LinearLayout.LayoutParams(values,(int)(local.H()*0.07)));
            }
        });
        /*删除notice*/

        new Handler(Looper.getMainLooper()).postDelayed(new Runnable(){

            @Override
            public void run()
            {
                if(noticeQ.size()>0) {
                    final LinearLayout removenotice = noticeQ.pollFirst();
                    local.ValueAnimator( "ofFloat", 0, (int) (local.W() * 0.32), 150, 0, false, false, new ValueAnimator.AnimatorUpdateListener() {
                        @Override
                        public void onAnimationUpdate(ValueAnimator animation) {
                            float values = (float) animation.getAnimatedValue();
                            removenotice.setX(values);
                        }
                    });
                    /*
                    local.ValueAnimator( "ofFloat", 0, (int) (local.H() * 0.07), 150, 0, false, false, new ValueAnimator.AnimatorUpdateListener() {
                        @Override
                        public void onAnimationUpdate(ValueAnimator animation) {
                            float values = (float) animation.getAnimatedValue();
                            removenotice.setTranslationY(values);
                        }
                    });
                    
                     */

                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable(){
                        @Override
                        public void run() {
                            notice.removeView(removenotice);
                        }
                    }, 150);
                }
                if (noticeQ.size()==0){
                    local.ValueAnimator( "ofFloat", 0, (int) (local.W() * 0.22), 150, 0, false, false, new ValueAnimator.AnimatorUpdateListener() {
                        @Override
                        public void onAnimationUpdate(ValueAnimator animation) {
                            float values = (float) animation.getAnimatedValue();
                            notice1.setX(values);
                        }
                    });
                    /*
                    local.ValueAnimator( "ofFloat", 0, (int) (local.H() * 0.12), 150, 0, false, false, new ValueAnimator.AnimatorUpdateListener() {
                        @Override
                        public void onAnimationUpdate(ValueAnimator animation) {
                            float values = (float) animation.getAnimatedValue();
                            notice1.setTranslationY(values);
                        }
                    });
                    */
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable(){
                        @Override
                        public void run() {
                            notice.removeView(notice1);
                        }
                    }, 150);
                }
                }
        }, 3000);

        return this;
    }
}
