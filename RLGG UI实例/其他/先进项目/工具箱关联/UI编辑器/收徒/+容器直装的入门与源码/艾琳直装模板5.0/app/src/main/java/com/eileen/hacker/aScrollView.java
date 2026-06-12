package com.eileen.hacker;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;

/**
 * @Author 𝘽𝙮·艾琳 - 手游逆向交流群101640882
 * @Date 2023/10/14 19:48
 * @Describe 重写滚动布局方法
 */
public class aScrollView extends ScrollView {

    public static final String TAG = "aScrollView";


    private boolean scroll = true;  //默认可以滑动

    public aScrollView(Context context) {
        super(context);
    }

    public aScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public aScrollView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    //是否可滚动？传入true可滑动，传入false不可滑动
    public void setScroll(boolean scroll) {
        this.scroll = scroll;

    }

    @Override
    public boolean onTouchEvent(MotionEvent ev) {
        if (scroll) {
            return super.onTouchEvent(ev);
        } else {
            return true;
        }
    }


}
