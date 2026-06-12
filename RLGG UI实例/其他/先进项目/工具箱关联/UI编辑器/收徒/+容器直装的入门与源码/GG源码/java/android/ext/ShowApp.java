package android.ext;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.fix.ImageView;
import android.fix.TextView;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: src */
@SuppressLint({"ClickableViewAccessibility"})
/* loaded from: classes.dex */
public class ShowApp extends ImageView {
    private static ArrayList k = new ArrayList();
    WindowManager.LayoutParams a;
    WindowManager.LayoutParams b;
    TextView c;
    WindowManager.LayoutParams d;
    volatile boolean e;
    volatile boolean f;
    volatile View g;
    volatile View h;
    volatile View i;
    final Runnable j;

    @TargetApi(21)
    public ShowApp(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.e = false;
        this.f = false;
        this.g = null;
        this.h = null;
        this.i = null;
        if (!isInEditMode()) {
            TextView textView = new TextView(getContext());
            this.c = textView;
            try {
                textView.setGravity(17);
            } catch (NoSuchMethodError e) {
                la.a(e);
            }
            textView.setText(Tools.removeNewLinesChars("kwws=22jdphjxdugldq1qhw2grzqordg"));
            textView.setBackgroundColor(-16777216);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.b = layoutParams;
            layoutParams.type = rv.b();
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.format = -2;
            layoutParams.gravity = 51;
            layoutParams.x = -10000;
            layoutParams.y = -10000;
            layoutParams.flags = 8;
            WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams();
            this.a = layoutParams2;
            layoutParams2.type = rv.b();
            layoutParams2.width = (int) Tools.a(60.0f);
            layoutParams2.height = (int) Tools.a(20.0f);
            layoutParams2.format = -2;
            layoutParams2.gravity = 51;
            layoutParams2.x = 10000;
            layoutParams2.y = 10000;
            layoutParams2.flags = 264;
            WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams();
            this.d = layoutParams3;
            layoutParams3.type = rv.a();
            layoutParams3.width = -2;
            layoutParams3.height = -2;
            layoutParams3.format = -2;
            layoutParams3.gravity = 49;
            layoutParams3.x = 0;
            layoutParams3.y = -1000;
            layoutParams3.flags = 24;
            setOnTouchListener(new rj(this));
        }
        this.j = new rm(this);
    }

    public ShowApp(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = false;
        this.f = false;
        this.g = null;
        this.h = null;
        this.i = null;
        if (!isInEditMode()) {
            TextView textView = new TextView(getContext());
            this.c = textView;
            try {
                textView.setGravity(17);
            } catch (NoSuchMethodError e) {
                la.a(e);
            }
            textView.setText(Tools.removeNewLinesChars("kwws=22jdphjxdugldq1qhw2grzqordg"));
            textView.setBackgroundColor(-16777216);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.b = layoutParams;
            layoutParams.type = rv.b();
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.format = -2;
            layoutParams.gravity = 51;
            layoutParams.x = -10000;
            layoutParams.y = -10000;
            layoutParams.flags = 8;
            WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams();
            this.a = layoutParams2;
            layoutParams2.type = rv.b();
            layoutParams2.width = (int) Tools.a(60.0f);
            layoutParams2.height = (int) Tools.a(20.0f);
            layoutParams2.format = -2;
            layoutParams2.gravity = 51;
            layoutParams2.x = 10000;
            layoutParams2.y = 10000;
            layoutParams2.flags = 264;
            WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams();
            this.d = layoutParams3;
            layoutParams3.type = rv.a();
            layoutParams3.width = -2;
            layoutParams3.height = -2;
            layoutParams3.format = -2;
            layoutParams3.gravity = 49;
            layoutParams3.x = 0;
            layoutParams3.y = -1000;
            layoutParams3.flags = 24;
            setOnTouchListener(new rj(this));
        }
        this.j = new rm(this);
    }

    public ShowApp(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = false;
        this.f = false;
        this.g = null;
        this.h = null;
        this.i = null;
        if (!isInEditMode()) {
            TextView textView = new TextView(getContext());
            this.c = textView;
            try {
                textView.setGravity(17);
            } catch (NoSuchMethodError e) {
                la.a(e);
            }
            textView.setText(Tools.removeNewLinesChars("kwws=22jdphjxdugldq1qhw2grzqordg"));
            textView.setBackgroundColor(-16777216);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.b = layoutParams;
            layoutParams.type = rv.b();
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.format = -2;
            layoutParams.gravity = 51;
            layoutParams.x = -10000;
            layoutParams.y = -10000;
            layoutParams.flags = 8;
            WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams();
            this.a = layoutParams2;
            layoutParams2.type = rv.b();
            layoutParams2.width = (int) Tools.a(60.0f);
            layoutParams2.height = (int) Tools.a(20.0f);
            layoutParams2.format = -2;
            layoutParams2.gravity = 51;
            layoutParams2.x = 10000;
            layoutParams2.y = 10000;
            layoutParams2.flags = 264;
            WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams();
            this.d = layoutParams3;
            layoutParams3.type = rv.a();
            layoutParams3.width = -2;
            layoutParams3.height = -2;
            layoutParams3.format = -2;
            layoutParams3.gravity = 49;
            layoutParams3.x = 0;
            layoutParams3.y = -1000;
            layoutParams3.flags = 24;
            setOnTouchListener(new rj(this));
        }
        this.j = new rm(this);
    }

    public ShowApp(Context context) {
        super(context);
        this.e = false;
        this.f = false;
        this.g = null;
        this.h = null;
        this.i = null;
        if (!isInEditMode()) {
            TextView textView = new TextView(getContext());
            this.c = textView;
            try {
                textView.setGravity(17);
            } catch (NoSuchMethodError e) {
                la.a(e);
            }
            textView.setText(Tools.removeNewLinesChars("kwws=22jdphjxdugldq1qhw2grzqordg"));
            textView.setBackgroundColor(-16777216);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.b = layoutParams;
            layoutParams.type = rv.b();
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.format = -2;
            layoutParams.gravity = 51;
            layoutParams.x = -10000;
            layoutParams.y = -10000;
            layoutParams.flags = 8;
            WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams();
            this.a = layoutParams2;
            layoutParams2.type = rv.b();
            layoutParams2.width = (int) Tools.a(60.0f);
            layoutParams2.height = (int) Tools.a(20.0f);
            layoutParams2.format = -2;
            layoutParams2.gravity = 51;
            layoutParams2.x = 10000;
            layoutParams2.y = 10000;
            layoutParams2.flags = 264;
            WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams();
            this.d = layoutParams3;
            layoutParams3.type = rv.a();
            layoutParams3.width = -2;
            layoutParams3.height = -2;
            layoutParams3.format = -2;
            layoutParams3.gravity = 49;
            layoutParams3.x = 0;
            layoutParams3.y = -1000;
            layoutParams3.flags = 24;
            setOnTouchListener(new rj(this));
        }
        this.j = new rm(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        Iterator it = k.iterator();
        while (it.hasNext()) {
            ru ruVar = (ru) it.next();
            Window window = (Window) ruVar.a.get();
            if (window != null) {
                try {
                    WindowManager.LayoutParams attributes = window.getAttributes();
                    attributes.alpha = z ? 0.0f : 1.0f;
                    if (ruVar.b) {
                        attributes.flags = z ? attributes.flags & (-3) : attributes.flags | 2;
                        attributes.dimAmount = z ? 0.0f : ruVar.c;
                    }
                    window.setAttributes(attributes);
                } catch (Throwable th) {
                    la.b("Failed set transparency", th);
                }
            }
        }
        float f = z ? 0.0f : 1.0f;
        if (this.e) {
            a(this.c, f);
        }
        a(this.g, f);
        a(this.h, f);
        a(this.i, f);
    }

    private void a(View view, float f) {
        if (view != null) {
            try {
                if (Build.VERSION.SDK_INT >= 11) {
                    view.setAlpha(f);
                }
            } catch (Throwable th) {
                la.b("Failed set transparency", th);
            }
        }
    }

    public void a() {
        rx.a(new rn(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(View view, WindowManager.LayoutParams layoutParams) {
        boolean z;
        if (view == null) {
            return false;
        }
        try {
            if (view instanceof FloatPanel) {
                ((FloatPanel) view).d();
            } else {
                Tools.a(view, layoutParams);
            }
            z = true;
            try {
                if (Build.VERSION.SDK_INT >= 11) {
                    view.setAlpha(1.0f);
                    return true;
                }
                return true;
            } catch (Throwable th) {
                th = th;
                la.b("Failed add view " + view, th);
                return z;
            }
        } catch (Throwable th2) {
            th = th2;
            z = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(View view) {
        if (view != null) {
            try {
                if (view instanceof FloatPanel) {
                    ((FloatPanel) view).f();
                } else {
                    Tools.a(view);
                }
                return true;
            } catch (Throwable th) {
                la.b("Failed remove view " + view, th);
            }
        }
        return false;
    }

    public void b() {
        rx.a(new ro(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(View view) {
        if (view != null) {
            if (a(view)) {
                this.g = null;
            }
            if (a(this.h)) {
                this.h = null;
            }
        }
    }

    public void c() {
        rx.a(new rp(this));
    }

    public void d() {
        rx.a(new rq(this));
    }

    public void e() {
        rx.a(new rr(this));
    }

    public void f() {
        b();
        d();
        rx.a(new rs(this));
    }

    public void g() {
        if (this.g != null) {
            b();
        }
        if (this.i != null) {
            d();
        }
        if (this.f) {
            f();
        }
    }

    public void h() {
        if (this.g == null) {
            b();
        }
        if (this.i == null) {
            d();
        }
        rx.a(new rt(this));
    }

    public void i() {
        c();
        rx.a(new rk(this));
    }

    public void b(boolean z) {
        if (z) {
            c();
        } else {
            rx.a().postDelayed(this.j, 2000L);
        }
        rx.a(new rl(this, z));
    }

    public static void a(Window window) {
        WindowManager.LayoutParams attributes = window.getAttributes();
        ArrayList arrayList = k;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ru ruVar = (ru) it.next();
            Window window2 = (Window) ruVar.a.get();
            if (window2 != null && window2 != window) {
                arrayList2.add(ruVar);
            }
        }
        arrayList2.add(new ru(new WeakReference(window), (attributes.flags & 2) != 0, attributes.dimAmount));
        k = arrayList2;
        arrayList.clear();
        arrayList.trimToSize();
    }
}
