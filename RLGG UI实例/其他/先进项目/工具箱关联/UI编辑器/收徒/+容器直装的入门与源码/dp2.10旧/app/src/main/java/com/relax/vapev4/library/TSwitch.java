package com.relax.vapev4.library;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;

import dev.answer.horizon.library.AnswerUI.CardView.ACardView;

public class TSwitch extends View {
    private Paint Tpaint;
    private Paint Hpaint;
    private Paint Bpaint;
    private int ButtonColor = local.hexColor("#aaaaaa");
    private int ButtonColors = local.hexColor("#aaaaaa");
    private int Buttonopen = local.hexColor("#f4f4f4");
    private int BackgroundColor = local.hexColor("#f4f4f4");
    private int BackgroundColors = local.hexColor("#f4f4f4");
    private int Backgroundopen = local.hexColor("#9198e5");
    private int ButtonShadow = local.hexColor("#000000");
    private int BackgroundShadow = local.hexColor("#000000");
    private int ButtonShadowRadius = 6;
    private int BackgroundShadowRadius = 10;
    private float mButtonX = (int)(local.W()*0.032);
    private boolean SwitchOn;
    private OnClickListener onClickListener;

    public TSwitch(Context context) {
        super(context);
        init();
    }
    public TSwitch(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public TSwitch(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }
    private void init(){
        Tpaint=new Paint();
        Hpaint=new Paint();
        Bpaint=new Paint();
        Bpaint.setColor(local.hexColor("#00000000"));
        Tpaint.setAntiAlias(true);
        Hpaint.setAntiAlias(true);
    }
    @Override
    protected void onDraw(Canvas canvas){
        Tpaint.setColor(BackgroundColor);
        Hpaint.setColor(ButtonColor);
        Tpaint.setShadowLayer(BackgroundShadowRadius,0,0,BackgroundShadow);
        Hpaint.setShadowLayer(ButtonShadowRadius,0,0,ButtonShadow);
        if (!isInEditMode()) {
            setLayerType(View.LAYER_TYPE_SOFTWARE, null);
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            canvas.drawRoundRect(0, 0, getWidth(), getHeight(), 90, 90, Bpaint);
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            canvas.drawRoundRect((int)(local.W()*0.02), (int)(local.H()*0.04), (int)(local.W()*0.07), (int)(local.H()*0.1), 90, 90, Tpaint);
        }
        canvas.drawCircle(mButtonX, getHeight()/2, 16, Hpaint);
    }
    public TSwitch setCheck(Boolean b){
        this.SwitchOn=b;
        if (b){
            mButtonX=(int) (local.W() * 0.058);
            ButtonColor=Buttonopen;
            BackgroundColor=Backgroundopen;
        }
        return this;
    }
    public TSwitch setBackgroundShadow(String color){
        this.BackgroundShadow=local.hexColor(color);
        return this;
    }
    public TSwitch setButtonShadow(String color){
        ButtonShadow=local.hexColor(color);
        return this;
    }
    public TSwitch setBackgroundShadowRadius(int r){
        BackgroundShadowRadius=r;
        return this;
    }
    public TSwitch setButtonShadowRadius(int r){
        ButtonShadowRadius=r;
        return this;
    }
    public TSwitch setButtonColor(String off,String on){
        ButtonColor = local.hexColor(off);
        ButtonColors = local.hexColor(off);
        Buttonopen = local.hexColor(on);
        return this;
    }
    public TSwitch setBackgroundColor(String off,String on){
        BackgroundColor = local.hexColor(off);
        BackgroundColors = local.hexColor(off);
        Backgroundopen = local.hexColor(on);
        return this;
    }
    public TSwitch children(View view){
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
    public boolean getCheck(){
        return this.SwitchOn;
    }
    public TSwitch OnClick(OnClickListener onClickListener) {
        this.onClickListener = onClickListener;
        return this;
    }
    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        widthMeasureSpec = (int)(local.W()*0.09);
        heightMeasureSpec = (int)(local.H()*0.14);
        setMeasuredDimension(widthMeasureSpec,heightMeasureSpec);
    }
    /*
    private void startOpenAnimation() {
        ValueAnimator animatora = local.ValueAnimator("ofFloat", (int) (local.W() * 0.032), (int) (local.W() * 0.058), 400, 0, false, false, valueAnimator -> {
            mButtonX = (float) valueAnimator.getAnimatedValue();
            postInvalidateOnAnimation();
        });
        ValueAnimator animatorb = local.ValueAnimator("ofInt", ButtonColors, Buttonopen, 400, 0, false, true, valueAnimator -> {
            ButtonColor = (int) valueAnimator.getAnimatedValue();
        });
        ValueAnimator animatorc = local.ValueAnimator("ofInt", BackgroundColors, Backgroundopen, 400, 0, false, true, valueAnimator -> {
            BackgroundColor = (int) valueAnimator.getAnimatedValue();
        });
        animatora.setInterpolator(new OvershootInterpolator());//动画会超过目标值一些，然后再弹回来
    }

    private void startCloseAnimation() {
        ValueAnimator animatord = local.ValueAnimator("ofFloat", (int) (local.W() * 0.058), (int) (local.W() * 0.032), 400, 0, false, false, valueAnimator -> {
            mButtonX = (float) valueAnimator.getAnimatedValue();
            postInvalidateOnAnimation();
        });
        ValueAnimator animatore = local.ValueAnimator("ofInt", Buttonopen, ButtonColors, 400, 0, false, true, valueAnimator -> {
            ButtonColor = (int) valueAnimator.getAnimatedValue();
        });
        ValueAnimator animatorf = local.ValueAnimator("ofInt", Backgroundopen, BackgroundColors, 400, 0, false, true, valueAnimator -> {
            BackgroundColor = (int) valueAnimator.getAnimatedValue();
        });
        animatord.setInterpolator(new OvershootInterpolator());//动画会超过目标值一些，然后再弹回来
    }
*/
    @Override
    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getAction()) {
            case MotionEvent.ACTION_DOWN:
                if (SwitchOn) {
                    //startCloseAnimation();
                    SwitchOn=false;
                }else {
                    //startOpenAnimation();
                    SwitchOn=true;
                }
                if (onClickListener != null) {
                    onClickListener.onClick(this);
                }
                return true;
            case MotionEvent.ACTION_MOVE:
            case MotionEvent.ACTION_UP:
            default:
                return super.onTouchEvent(event);
        }
    }

}
