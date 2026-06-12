package android.ext;

import android.os.Build;
import android.os.Handler;
import android.widget.AbsListView;
import android.widget.ListView;

/* compiled from: src */
/* loaded from: classes.dex */
public class FastScrollerFix implements AbsListView.OnScrollListener, Runnable {
    private ListView a;
    private int b = 0;

    public FastScrollerFix(ListView listView) {
        this.a = listView;
        b(listView, false);
        try {
            listView.setOnScrollListener(this);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        b(this.a, false);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        this.b = i;
        Handler a = rx.a();
        a.removeCallbacks(this);
        if (i != 0) {
            b(this.a, true);
        } else {
            a.postDelayed(this, 1000L);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (this.b == 0) {
            Handler a = rx.a();
            a.removeCallbacks(this);
            a.postDelayed(this, 1000L);
        }
    }

    public static void a(ListView listView, boolean z) {
        if (listView != null) {
            listView.setScrollBarStyle(16777216);
            b(listView, z);
        }
    }

    private static void b(ListView listView, boolean z) {
        if (listView != null) {
            try {
                listView.setFastScrollEnabled(z);
            } catch (Throwable th) {
                la.a(th);
            }
            if (Build.VERSION.SDK_INT >= 11) {
                try {
                    listView.setFastScrollAlwaysVisible(z);
                } catch (Throwable th2) {
                    la.a(th2);
                }
            }
        }
    }
}
