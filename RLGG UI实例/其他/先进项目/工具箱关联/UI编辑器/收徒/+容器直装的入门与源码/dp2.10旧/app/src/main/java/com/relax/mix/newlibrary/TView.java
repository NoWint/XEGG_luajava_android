package com.relax.mix.newlibrary;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.relax.mix.newlibrary.PostCallback;
import com.relax.vapev4.library.BlurUtil;
import com.relax.vapev4.library.SetShadows;
import com.relax.vapev4.library.local;
import dev.answer.horizon.library.AnswerUI.CardView.ACardView;

public class TView extends LinearLayout{
    private Context ct1;
    public TView(Context context){
        super(context);
        ct1=context;
    }

    /*父组件*/
    public TView children(View view){
        if (view instanceof LinearLayout){
            ((LinearLayout) view).addView(this);
        }if (view instanceof ScrollView){
            ((ScrollView) view).addView(this);
        }if (view instanceof ACardView) {
            ((ACardView) view).addView(this);
        }if (view instanceof FrameLayout){
            ((FrameLayout) view).addView(this);
        }if (view instanceof SetShadows){
            ((SetShadows) view).addView(this);
        }
        return this;
    }
    /*长宽*/
    public TView WH(Object W,Object H){
        if(W!=null&&H!=null){
        setLayoutParams(new LayoutParams((int)(W),(int)(H)));
        }
    return this;
    }
    /*颜色*/
    public TView setBgD(Object color,Object round,String f,Object s){
        setBackgroundDrawable(local.roundBG(color, round, f, s));
        return this;
    }
    /*图片*/
    public TView setBgP(Drawable background){
        setBackgroundDrawable(background);
        return this;
    }
    /*方向*/
    public TView ori(int ori){
        setOrientation(ori);
        return this;
    }
    @SuppressLint("RtlHardcoded")
    /*重心*/
    public TView gravity(String gravity){
        if (gravity.equals("CT")) {
            setGravity(Gravity.CENTER | Gravity.TOP);//重心
        } else if (gravity.equals("CC")) {
            setGravity(Gravity.CENTER);//重心
        } else if (gravity.equals("CB")) {
            setGravity(Gravity.CENTER | Gravity.BOTTOM);//重心
        } else if (gravity.equals("LT")) {
            setGravity(Gravity.LEFT | Gravity.TOP);//重心
        } else if (gravity.equals("LC")) {
            setGravity(Gravity.LEFT | Gravity.CENTER);//重心
        } else if (gravity.equals("LB")) {
            setGravity(Gravity.LEFT | Gravity.BOTTOM);//重心
        } else if (gravity.equals("RT")) {
            setGravity(Gravity.RIGHT | Gravity.TOP);//重心
        } else if (gravity.equals("RC")) {
            setGravity(Gravity.RIGHT | Gravity.CENTER);//重心
        } else if (gravity.equals("RB")) {
            setGravity(Gravity.RIGHT | Gravity.BOTTOM);//重心
		}

        return this;
    }
    /*点击*/
    public TView onClick(final OnClickListener click){
        setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View view) {
                    click.onClick(view);
                }
            });
         return this;
    }
    /*长按*/
    public TView onLongClick(final OnLongClickListener onlong){
        setOnLongClickListener(new OnLongClickListener() {
                @Override
                public boolean onLongClick(View view1) {
                    onlong.onLongClick(view1);
                    return true;
                }
            });
        return this;
    }
    public TView Blur(final int r){
        final View view=this;
        post(new Runnable() {
            @Override
            public void run() {
                setBackground(BlurUtil.Blur(ct1,view,r));
            }
        });
        return this;
    }
    public TView postOnceDelayed(final PostCallback postCallback,long duration){
        final View view=this;
        this.postDelayed(new Runnable() {
            @Override
            public void run() {
                postCallback.onPost(getWidth(),getHeight());
                view.removeCallbacks(this);
            }
        },duration);
        return this;
    }
    /*滑动布局*/
    public TView TViewSV(LinearLayout view,Object W,Object H,Object color,Object round){
        ScrollView SV=new ScrollView(getContext());
        if (view != null) {
            view.addView(SV);
        }
        if(W!=null&&H!=null){
            SV.setLayoutParams(new LayoutParams((int)(W),(int)(H)));
        }
        SV.setBackground(local.roundBG(color, round,"TB", 0));
        SV.setVerticalScrollBarEnabled(false);
        TView TGUI1s=new TView(getContext()).gravity("CC").WH(-1,-1).setBgD(color,round,"TB",0).ori(1);
        SV.addView(TGUI1s);
        return TGUI1s;
    }
    /*帧布局*/
    public static FrameLayout TViewF(Context context,LinearLayout view,Object W,Object H,Object color, Object round){
        FrameLayout framelayout=new FrameLayout(context); 
        framelayout.setBackgroundDrawable(local.roundBG(color, round, "TB", 0));
        if(W!=null&&H!=null){
            framelayout.setLayoutParams(new FrameLayout.LayoutParams((int)(W),(int)(H)));
        }
        if (view != null) {
            view.addView(framelayout);
        }
        return framelayout;
    }
    /*自定义阴影*/
    public static SetShadows SetShadows(Context context,LinearLayout children,int W,int H,int r,String c){
        SetShadows shadows=new SetShadows(context);
        shadows.WH(W,H);
        shadows.setRadius(r);
        shadows.setShadowlayerColor(c);
        shadows.setBackgroundDrawable(local.roundBG("#00000000",r,"TB", 0));
        shadows.setLayoutParams(new LayoutParams((int)(local.W()),(int)(local.H())));
        if (children!=null) {
            children.addView(shadows);
        }
        return shadows;
    }


}
