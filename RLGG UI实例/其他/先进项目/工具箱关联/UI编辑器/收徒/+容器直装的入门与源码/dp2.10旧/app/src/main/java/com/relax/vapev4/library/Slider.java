package com.relax.vapev4.library;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;

import dev.answer.horizon.library.AnswerUI.CardView.ACardView;

public class Slider extends View {
    private Paint tpaint;
    private Paint hpaint;
    private Paint upaint;
    private int pg=64;
    private int rx=32;
    private int maxprogress=100;
    private int progress=0;
    private int width=(int)(local.W()*0.5);
    private int thumbcolor=local.hexColor("#ffffff");
    private int progresscolor=local.hexColor("#9198e5");
    private int radius=6;
    private int shadowlayercolor=local.hexColor("#00000000");
    private int progressbackgroundcolor=local.hexColor("#f4f4f4");
    private OnSeekBarChangeListener onSeekBarChangeListener;
    public Slider(Context context) {
        super(context);
        init();
    }
    public Slider(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }
    public Slider(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }
    private void init(){
        tpaint=new Paint();
        hpaint=new Paint();
        upaint=new Paint();
    }
    @Override
    protected void onDraw(Canvas canvas){
        tpaint.setColor(progressbackgroundcolor);
        hpaint.setColor(progresscolor);
        upaint.setColor(thumbcolor);
        upaint.setShadowLayer(radius,0,0,shadowlayercolor);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            canvas.drawRoundRect(0,0, getWidth(), getHeight(),90,90,tpaint);
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            canvas.drawRoundRect(0,0,pg,getHeight(),90,90,hpaint);
        }
        canvas.drawCircle(rx,getHeight()/2,17,upaint);
    }
    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        widthMeasureSpec = width;
        heightMeasureSpec = (int)(local.H()*0.06);
        setMeasuredDimension(widthMeasureSpec,heightMeasureSpec);
    }
    public Slider onSeekBarChangeListener(OnSeekBarChangeListener on){
        onSeekBarChangeListener=on;
        return this;
    }
    public Slider setProgress(int p){
        float f=(float)(width)/maxprogress;
        float x=f*(float)(p);
        pg=Math.max(64, Math.min(Math.round(x), width));
        rx=Math.max(32, Math.min(Math.round(x)-32, width - 32));
        invalidate();
        return this;
    }
    public Slider setMax(int m){
        maxprogress=m;
        invalidate();
        return this;
    }
    public Slider setWidth(int w){
        width=w;
        invalidate();
        return this;
    }
    public int getProgress(){
        return this.progress;
    }
    public Slider setThumbColor(int color){
        thumbcolor=color;
        invalidate();
        return this;
    }
    public Slider setThumbShadowLayer(int r, int color){
        radius=r;
        shadowlayercolor=color;
        invalidate();
        return this;
    }
    public Slider setProgressColor(int color){
        progresscolor=color;
        invalidate();
        return this;
    }
    public Slider setProgressBackgroundColor(int color){
        progressbackgroundcolor=color;
        invalidate();
        return this;
    }
    public Slider children(View view){
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
    public interface OnSeekBarChangeListener {
        void onProgressChanged(Slider seekBar, int progress);
    }
    @Override
    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getAction()) {
            case MotionEvent.ACTION_DOWN:
            case MotionEvent.ACTION_MOVE:
                float x = event.getX();
                float f=(float)(width)/maxprogress;
                if (x < 0) {
                    progress = 0;
                } else if (x > getWidth()) {
                    progress = maxprogress;
                } else {
                    progress =(int)(x/f);
                }
                // 根据手指的横坐标来更新Switch的圆形按钮的位置
                pg = (int) Math.max(64, Math.min(event.getX(), getWidth()));
                rx = (int) Math.max(32, Math.min(event.getX()-32, getWidth() - 32));
                invalidate();
                if (onSeekBarChangeListener != null) {
                    onSeekBarChangeListener.onProgressChanged(this, progress);
                }
                return true;
            case MotionEvent.ACTION_UP:
            default:
                return super.onTouchEvent(event);
        }
    }
    
}
