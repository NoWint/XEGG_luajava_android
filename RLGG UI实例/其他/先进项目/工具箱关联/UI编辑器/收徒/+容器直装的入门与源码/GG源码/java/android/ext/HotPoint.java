package android.ext;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class HotPoint extends FloatPanel implements View.OnClickListener, View.OnLongClickListener {
    private static volatile HotPoint s = null;
    int e;
    int f;
    ImageView g;
    View h;
    View i;
    TextView j;
    ProgressBar k;
    ProgressBar l;
    TextView m;
    ImageView n;
    ImageView o;
    private final Runnable p;
    private WindowManager.LayoutParams q;
    private boolean r;

    public static HotPoint getInstance() {
        HotPoint hotPoint = s;
        if (hotPoint == null) {
            HotPoint hotPoint2 = (HotPoint) android.fix.i.a((int) R.layout.hot_point_view, (ViewGroup) null);
            hotPoint2.n();
            s = hotPoint2;
            return hotPoint2;
        }
        return hotPoint;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        this.q = new WindowManager.LayoutParams();
        this.q.gravity = 51;
        this.q.type = rv.a();
        this.q.format = -2;
        this.q.flags = rv.c() | 512;
        this.q.alpha = 1.0f;
        this.q.width = -2;
        this.q.height = -2;
    }

    private void n() {
        rx.a(new jh(this));
    }

    public void a(byte b, long j, long j2, int i, int i2, String str) {
        if (rx.c()) {
            b(b, j, j2, i, i2, str);
        } else {
            rx.a(new jj(this, b, j, j2, i, i2, str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(byte b, long j, long j2, int i, int i2, String str) {
        if (b != 0) {
            this.i.setVisibility(b == 1 ? 0 : 8);
        }
        if (j < 0 || j2 == 0) {
            this.j.setText(str);
            this.k.setIndeterminate(true);
        } else {
            this.k.setIndeterminate(false);
            this.k.setMax((int) j2);
            this.k.setProgress((int) j);
            this.j.setText(str);
        }
        if (i >= 0) {
            if (i2 <= 1) {
                this.l.setVisibility(8);
                return;
            }
            this.l.setMax(i2);
            this.l.setProgress(i);
            this.l.setVisibility(0);
        }
    }

    public void k() {
        setVisibilitySpeedhack(8);
    }

    public void l() {
        setVisibilitySpeedhack(-1);
    }

    private void setVisibilitySpeedhack(int i) {
        rx.a(new jk(this, i));
    }

    private void o() {
        int i;
        if (this.h != null) {
            int marginX = getMarginX();
            int i2 = 0;
            View view = this.h;
            while (view != this && view != null) {
                i2 -= view.getLeft();
                ViewParent parent = view.getParent();
                if (!(parent instanceof View)) {
                    i = i2;
                    break;
                }
                view = (View) parent;
            }
            i = i2;
            if (marginX != i) {
                setMarginX(i);
                b();
                c();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        o();
    }

    public void setVanishingTime(int i) {
        if (this.e != i) {
            new qw().a("vanishing-time", i, -1).commit();
            this.e = i;
        }
    }

    public int getVanishingTime() {
        return this.e;
    }

    public void setSize(int i) {
        int max = Math.max(0, Math.min(12, i));
        if (this.f != max) {
            new qw().a("icon-size", max, 0).commit();
            this.f = max;
        }
    }

    public int getSize() {
        return this.f;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.n) {
            MainService.instance.m();
        } else if (view == this.o) {
            MainService.instance.n();
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        MainService.instance.o();
        return true;
    }

    @TargetApi(21)
    public HotPoint(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.p = new jg(this);
    }

    @TargetApi(11)
    public HotPoint(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.p = new jg(this);
    }

    public HotPoint(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.p = new jg(this);
    }

    public HotPoint(Context context) {
        super(context);
        this.p = new jg(this);
    }

    public void a(Drawable drawable) {
        rx.a(new jl(this, drawable));
    }

    public void b(String str) {
        rx.a(new jm(this, str));
    }

    @Override // android.ext.FloatPanel
    protected String a(String str) {
        return String.valueOf(super.a(str)) + ' ' + this.e + ' ' + this.f;
    }

    @Override // android.ext.FloatPanel
    protected String getPrefName() {
        return "pos";
    }

    public int getSizePx() {
        return (int) Tools.a(48 - (this.f * 2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        try {
            rx.a().removeCallbacks(this.p);
        } catch (Throwable th) {
            la.a(th);
        }
        if (z) {
            Tools.a(this.g, 255.0f);
            try {
                rx.a().postDelayed(this.p, this.e * 1000);
            } catch (Throwable th2) {
                la.a(th2);
                Tools.a(this.g, 0.0f);
            }
        }
    }

    @Override // android.ext.FloatPanel
    protected void e() {
        super.e();
        int sizePx = getSizePx();
        Config.b(this.n, sizePx);
        Config.b(this.o, sizePx);
        Config.b(this.g, sizePx);
        this.h.setMinimumWidth(sizePx);
        this.h.setMinimumHeight(sizePx);
        Tools.a(this.j, sizePx);
        Tools.b(this.j, (sizePx * 20) / 48);
        Tools.a(this.k, sizePx);
        Tools.b(this.k, (sizePx * 14) / 48);
        Tools.a(this.l, sizePx);
        Tools.b(this.l, (sizePx * 14) / 48);
        this.j.setTextSize(0, (sizePx * 18) / 48);
        this.m.setTextSize(0, (sizePx * 18) / 48);
        if (this.e < 0) {
            Tools.a(this.g, 255.0f);
        } else {
            a(true);
        }
        setSpeedPanelVisibility(true);
        TimeJumpPanel.a(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSpeedPanelVisibility(boolean z) {
        boolean z2 = this.n.getVisibility() == 0;
        if (this.r) {
            try {
                Tools.a((View) this.m);
            } catch (Throwable th) {
                la.b("Failed hide speed panel", th);
            }
            this.r = false;
        }
        if (z && z2) {
            this.r = true;
            try {
                Tools.a(this.m, this.q);
            } catch (Throwable th2) {
                la.b("Failed add speed panel", th2);
            }
        }
    }

    @Override // android.ext.FloatPanel
    public void c() {
        super.c();
        if (this.r) {
            Point point = new Point(0, 0);
            Point a = a(new Point(this.a.x, this.a.y), false, point);
            if (a.x < 0) {
                a.x = 0;
            }
            if (a.x > point.x + getMarginX()) {
                a.x = point.x + getMarginX();
            }
            this.q.x = (a.x + (getWidth() / 2)) - (this.m.getWidth() / 2);
            this.q.y = a.y + getHeight();
            if (point.y != 0) {
                int height = this.m.getHeight();
                if (point.y < a.y + height) {
                    this.q.y = a.y - height;
                }
            }
            Tools.c(this.m, this.q);
        }
    }

    @Override // android.ext.FloatPanel
    protected void g() {
        super.g();
        a(false);
        setSpeedPanelVisibility(false);
        TimeJumpPanel.a(false);
    }

    public void m() {
        TimeJumpPanel.a(i());
    }

    @Override // android.ext.FloatPanel
    protected void a(SharedPreferences sharedPreferences) {
        super.a(sharedPreferences);
        this.e = sharedPreferences.getInt("vanishing-time", -1);
        this.f = Math.max(0, Math.min(12, sharedPreferences.getInt("icon-size", 0)));
    }

    @Override // android.ext.FloatPanel
    public void setLayoutAlpha(float f) {
        this.q.alpha = f;
        super.setLayoutAlpha(f);
        TimeJumpPanel timeJumpPanel = MainService.instance.m;
        if (timeJumpPanel != null) {
            timeJumpPanel.setLayoutAlpha(f);
        }
    }
}
