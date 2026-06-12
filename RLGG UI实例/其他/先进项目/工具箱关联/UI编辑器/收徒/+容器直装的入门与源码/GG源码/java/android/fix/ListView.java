package android.fix;

import android.annotation.TargetApi;
import android.content.Context;
import android.ext.MainService;
import android.ext.ho;
import android.ext.la;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;

/* compiled from: src */
/* loaded from: classes.dex */
public class ListView extends android.widget.ListView {
    public ListView(Context context) {
        super(context);
    }

    public ListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @TargetApi(21)
    public ListView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        try {
            super.setOverScrollMode(i);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        try {
            super.dispatchDraw(canvas);
        } catch (ArrayIndexOutOfBoundsException e) {
            la.a(e);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public void draw(Canvas canvas) {
        try {
            super.draw(canvas);
        } catch (ArrayIndexOutOfBoundsException e) {
            la.a(e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        try {
            z = false;
            z2 = super.dispatchTouchEvent(motionEvent);
        } catch (IndexOutOfBoundsException | NullPointerException | OutOfMemoryError e) {
            la.a(e);
            z = true;
            z2 = false;
        }
        if (z) {
            MainService.H();
        }
        return z2;
    }

    @Override // android.widget.ListView, android.widget.AbsListView
    protected void layoutChildren() {
        try {
            super.layoutChildren();
        } catch (IllegalStateException e) {
            la.b("Layout failed 1", e);
            ListAdapter adapter = getAdapter();
            if (adapter instanceof BaseAdapter) {
                ((BaseAdapter) adapter).notifyDataSetChanged();
                try {
                    super.layoutChildren();
                } catch (IllegalStateException e2) {
                    la.b("Layout failed 2", e2);
                }
            }
        }
    }

    @Override // android.widget.AbsListView
    public void setFastScrollEnabled(boolean z) {
        try {
            super.setFastScrollEnabled(z);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        try {
            super.onMeasure(i, i2);
        } catch (Throwable th) {
            la.a(th);
            ho.a(Thread.currentThread(), th, false);
        }
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        try {
            super.onLayout(z, i, i2, i3, i4);
        } catch (NoSuchMethodError | NullPointerException e) {
            la.a(e);
        }
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        try {
            super.onAttachedToWindow();
        } catch (StackOverflowError e) {
            la.a(e);
        }
        View emptyView = getEmptyView();
        if (emptyView != null) {
            setEmptyView(emptyView);
        }
    }
}
