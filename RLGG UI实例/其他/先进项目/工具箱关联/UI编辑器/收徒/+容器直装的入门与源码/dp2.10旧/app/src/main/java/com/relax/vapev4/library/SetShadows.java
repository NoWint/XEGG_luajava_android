package com.relax.vapev4.library;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/*
by:ThunderGod
Date:23/5/1
Time:23:13
*/
public class SetShadows extends ViewGroup {
    private static final Paint paint=new Paint();
    public Canvas mcanvas;
    public int widgetW;//自定义控件W
    public int widgetH;//自定义控件H
    public int radius;//圆角大小
    public String color;//阴影颜色
    public SetShadows(Context context) {
        super(context);
    }

    public SetShadows(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public SetShadows(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        mcanvas=canvas;
        paint.setColor(Color.parseColor("#ffffff"));//画笔颜色
        paint.setStyle(Paint.Style.FILL_AND_STROKE);  //画笔风格
        paint.setAntiAlias(true);
        paint.setShadowLayer(radius,0,0,Color.parseColor(color));
        roundWH(radius,widgetW,widgetH);
        /*
        模糊
        BlurMaskFilter bmf = new BlurMaskFilter(15f, BlurMaskFilter.Blur.NORMAL);
        paint.setMaskFilter(bmf);
         */
        }
    @Override
    protected LayoutParams generateLayoutParams(LayoutParams p) {
        return super.generateLayoutParams(p);
    }
    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int childCount = getChildCount();       //获取子View的数量
        //使用遍历的方式通知子View对自身进行测量
        for (int i=0;i<childCount;i++){
            View childView = getChildAt(0);
            measureChild(childView,widthMeasureSpec,heightMeasureSpec);
        }
    }
    public void roundWH(int r,int widgetW,int widgetH){
        int w=local.W()-widgetW;
        int h=local.H()-widgetH;
        if (mcanvas!=null){
        mcanvas.drawRoundRect(new RectF(w/2,h/2,widgetW+w/2,widgetH+h/2),r,r,paint);
        }
        invalidate();
        }
    @Override
    protected void onLayout(boolean b, int l, int i1, int i2, int i3) {
        int ws=local.W()-widgetW;
        int hs=local.H()-widgetH;
        //初始化一些变量
        int count = getChildCount();
        //循环子View,并定义他们的位置
        for (int i = 0; i < count; i++){
            View childView = getChildAt(0);
            childView.layout(ws/2,hs/2,widgetW+ws/2,widgetH+hs/2);
        }
    }
    /*设置长宽*/
    public void WH(int w,int h){
        widgetW=w;
        widgetH=h;
        invalidate();
    }
    /*设置圆角*/
    public void setRadius(int r){
        radius=r;
        invalidate();
    }
    /*设置阴影颜色*/
    public void setShadowlayerColor(String c){
        color=c;
        invalidate();
    }
}
