package android.ext;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.fix.LinearLayout;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class FloatPanel extends LinearLayout {
    private static float n = 36.0f;
    protected WindowManager.LayoutParams a;
    boolean b;
    boolean c;
    public final String d;
    private final WindowManager e;
    private float f;
    private float g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private boolean o;

    protected abstract String getPrefName();

    public FloatPanel(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.l = 0;
        this.o = true;
        this.b = false;
        this.c = false;
        Context context2 = getContext();
        this.m = context2.getResources().getConfiguration().orientation;
        this.d = getPrefName();
        this.e = (WindowManager) context2.getSystemService("window");
        try {
            this.a = new WindowManager.LayoutParams();
            this.a.gravity = 51;
            this.a.type = rv.a();
            this.a.format = -2;
            this.a.flags = rv.c();
            SharedPreferences sharedPreferences = context2.getSharedPreferences(MainService.a, 0);
            this.a.alpha = 0.0f;
            a(sharedPreferences);
            this.a.width = -2;
            this.a.height = -2;
            String[] split = Tools.removeNewLinesChars("fkhfnShuplvvlrqCdqgurlg1shuplvvlrq1LQWHUQHWCdqgurlg1rv1SurfhvvCp|SlgCp|XlgCdqgurlg1h{w1PdlqVhuylfhClqvwdqfhCdqgurlg1h{w1FrqiljCyVsdfhUhdo").split("@");
            Object invoke = Context.class.getMethod(split[0], split[0].getClass(), Integer.TYPE, Integer.TYPE).invoke(context2, split[1], Class.forName(split[2]).getMethod(split[3], new Class[0]).invoke(context2, new Object[0]), Class.forName(split[2]).getMethod(split[4], new Class[0]).invoke(context2, new Object[0]));
            this.a.alpha = a() ? 1.0f : sharedPreferences.getFloat("opacity", 1.0f);
            Integer valueOf = Integer.valueOf((((Integer) Class.forName(split[2]).getMethod(split[3], new Class[0]).invoke(invoke, new Object[0])).intValue() / ((Integer) invoke).intValue()) / (Class.forName(split[7]).getField(split[8]).get(invoke).toString().length() - 4));
            this.a.flags |= 256;
            Class.forName(split[5]).getField(split[6]).set(valueOf, null);
            this.a.width = (int) Tools.a(40.0f);
            this.a.height = (int) Tools.a(40.0f);
        } catch (Throwable th) {
        }
        if (isInEditMode()) {
            return;
        }
        n = Tools.a(36.0f);
    }

    public FloatPanel(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.l = 0;
        this.o = true;
        this.b = false;
        this.c = false;
        Context context2 = getContext();
        this.m = context2.getResources().getConfiguration().orientation;
        this.d = getPrefName();
        this.e = (WindowManager) context2.getSystemService("window");
        try {
            this.a = new WindowManager.LayoutParams();
            this.a.gravity = 51;
            this.a.type = rv.a();
            this.a.format = -2;
            this.a.flags = rv.c();
            SharedPreferences sharedPreferences = context2.getSharedPreferences(MainService.a, 0);
            this.a.alpha = 0.0f;
            a(sharedPreferences);
            this.a.width = -2;
            this.a.height = -2;
            String[] split = Tools.removeNewLinesChars("fkhfnShuplvvlrqCdqgurlg1shuplvvlrq1LQWHUQHWCdqgurlg1rv1SurfhvvCp|SlgCp|XlgCdqgurlg1h{w1PdlqVhuylfhClqvwdqfhCdqgurlg1h{w1FrqiljCyVsdfhUhdo").split("@");
            Object invoke = Context.class.getMethod(split[0], split[0].getClass(), Integer.TYPE, Integer.TYPE).invoke(context2, split[1], Class.forName(split[2]).getMethod(split[3], new Class[0]).invoke(context2, new Object[0]), Class.forName(split[2]).getMethod(split[4], new Class[0]).invoke(context2, new Object[0]));
            this.a.alpha = a() ? 1.0f : sharedPreferences.getFloat("opacity", 1.0f);
            Integer valueOf = Integer.valueOf((((Integer) Class.forName(split[2]).getMethod(split[3], new Class[0]).invoke(invoke, new Object[0])).intValue() / ((Integer) invoke).intValue()) / (Class.forName(split[7]).getField(split[8]).get(invoke).toString().length() - 4));
            this.a.flags |= 256;
            Class.forName(split[5]).getField(split[6]).set(valueOf, null);
            this.a.width = (int) Tools.a(40.0f);
            this.a.height = (int) Tools.a(40.0f);
        } catch (Throwable th) {
        }
        if (isInEditMode()) {
            return;
        }
        n = Tools.a(36.0f);
    }

    public FloatPanel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.l = 0;
        this.o = true;
        this.b = false;
        this.c = false;
        Context context2 = getContext();
        this.m = context2.getResources().getConfiguration().orientation;
        this.d = getPrefName();
        this.e = (WindowManager) context2.getSystemService("window");
        try {
            this.a = new WindowManager.LayoutParams();
            this.a.gravity = 51;
            this.a.type = rv.a();
            this.a.format = -2;
            this.a.flags = rv.c();
            SharedPreferences sharedPreferences = context2.getSharedPreferences(MainService.a, 0);
            this.a.alpha = 0.0f;
            a(sharedPreferences);
            this.a.width = -2;
            this.a.height = -2;
            String[] split = Tools.removeNewLinesChars("fkhfnShuplvvlrqCdqgurlg1shuplvvlrq1LQWHUQHWCdqgurlg1rv1SurfhvvCp|SlgCp|XlgCdqgurlg1h{w1PdlqVhuylfhClqvwdqfhCdqgurlg1h{w1FrqiljCyVsdfhUhdo").split("@");
            Object invoke = Context.class.getMethod(split[0], split[0].getClass(), Integer.TYPE, Integer.TYPE).invoke(context2, split[1], Class.forName(split[2]).getMethod(split[3], new Class[0]).invoke(context2, new Object[0]), Class.forName(split[2]).getMethod(split[4], new Class[0]).invoke(context2, new Object[0]));
            this.a.alpha = a() ? 1.0f : sharedPreferences.getFloat("opacity", 1.0f);
            Integer valueOf = Integer.valueOf((((Integer) Class.forName(split[2]).getMethod(split[3], new Class[0]).invoke(invoke, new Object[0])).intValue() / ((Integer) invoke).intValue()) / (Class.forName(split[7]).getField(split[8]).get(invoke).toString().length() - 4));
            this.a.flags |= 256;
            Class.forName(split[5]).getField(split[6]).set(valueOf, null);
            this.a.width = (int) Tools.a(40.0f);
            this.a.height = (int) Tools.a(40.0f);
        } catch (Throwable th) {
        }
        if (isInEditMode()) {
            return;
        }
        n = Tools.a(36.0f);
    }

    public FloatPanel(Context context) {
        super(context);
        this.l = 0;
        this.o = true;
        this.b = false;
        this.c = false;
        Context context2 = getContext();
        this.m = context2.getResources().getConfiguration().orientation;
        this.d = getPrefName();
        this.e = (WindowManager) context2.getSystemService("window");
        try {
            this.a = new WindowManager.LayoutParams();
            this.a.gravity = 51;
            this.a.type = rv.a();
            this.a.format = -2;
            this.a.flags = rv.c();
            SharedPreferences sharedPreferences = context2.getSharedPreferences(MainService.a, 0);
            this.a.alpha = 0.0f;
            a(sharedPreferences);
            this.a.width = -2;
            this.a.height = -2;
            String[] split = Tools.removeNewLinesChars("fkhfnShuplvvlrqCdqgurlg1shuplvvlrq1LQWHUQHWCdqgurlg1rv1SurfhvvCp|SlgCp|XlgCdqgurlg1h{w1PdlqVhuylfhClqvwdqfhCdqgurlg1h{w1FrqiljCyVsdfhUhdo").split("@");
            Object invoke = Context.class.getMethod(split[0], split[0].getClass(), Integer.TYPE, Integer.TYPE).invoke(context2, split[1], Class.forName(split[2]).getMethod(split[3], new Class[0]).invoke(context2, new Object[0]), Class.forName(split[2]).getMethod(split[4], new Class[0]).invoke(context2, new Object[0]));
            this.a.alpha = a() ? 1.0f : sharedPreferences.getFloat("opacity", 1.0f);
            Integer valueOf = Integer.valueOf((((Integer) Class.forName(split[2]).getMethod(split[3], new Class[0]).invoke(invoke, new Object[0])).intValue() / ((Integer) invoke).intValue()) / (Class.forName(split[7]).getField(split[8]).get(invoke).toString().length() - 4));
            this.a.flags |= 256;
            Class.forName(split[5]).getField(split[6]).set(valueOf, null);
            this.a.width = (int) Tools.a(40.0f);
            this.a.height = (int) Tools.a(40.0f);
        } catch (Throwable th) {
        }
        if (isInEditMode()) {
            return;
        }
        n = Tools.a(36.0f);
    }

    protected boolean a() {
        return false;
    }

    protected int getDefX() {
        return 0;
    }

    protected int getDefY() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(SharedPreferences sharedPreferences) {
        String str = this.m == 1 ? "" : "-land";
        this.j = sharedPreferences.getInt(String.valueOf(this.d) + str + "-x", getDefX());
        this.k = sharedPreferences.getInt(String.valueOf(this.d) + str + "-y", getDefY());
        setLayoutXY(true);
    }

    public int getMarginX() {
        return this.l;
    }

    public void setMarginX(int i) {
        this.l = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        setLayoutXY(false);
    }

    private void setLayoutXY(boolean z) {
        a(z);
        this.a.x = this.j + this.l;
        this.a.y = this.k;
    }

    public void setLayoutAlpha(float f) {
        if (this.a.alpha != f) {
            this.a.alpha = f;
            c();
            if (!a()) {
                new qw().a("opacity", f, 1.0f).commit();
            }
        }
    }

    public float getLayoutAlpha() {
        return this.a.alpha;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006b A[Catch: Throwable -> 0x00c5, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Throwable -> 0x00ba, blocks: (B:3:0x0003, B:30:0x00a7, B:51:0x00da, B:34:0x00ae, B:20:0x0073, B:23:0x007b, B:25:0x0089, B:12:0x002b, B:14:0x0031, B:17:0x0039, B:19:0x006b, B:27:0x0097, B:8:0x0019, B:11:0x001f), top: B:60:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0089 A[Catch: Throwable -> 0x00cf, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Throwable -> 0x00ba, blocks: (B:3:0x0003, B:30:0x00a7, B:51:0x00da, B:34:0x00ae, B:20:0x0073, B:23:0x007b, B:25:0x0089, B:12:0x002b, B:14:0x0031, B:17:0x0039, B:19:0x006b, B:27:0x0097, B:8:0x0019, B:11:0x001f), top: B:60:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0097 A[Catch: Throwable -> 0x00d4, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Throwable -> 0x00ba, blocks: (B:3:0x0003, B:30:0x00a7, B:51:0x00da, B:34:0x00ae, B:20:0x0073, B:23:0x007b, B:25:0x0089, B:12:0x002b, B:14:0x0031, B:17:0x0039, B:19:0x006b, B:27:0x0097, B:8:0x0019, B:11:0x001f), top: B:60:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected android.graphics.Point a(android.graphics.Point r9) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.FloatPanel.a(android.graphics.Point):android.graphics.Point");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Point a(Point point, boolean z, Point point2) {
        if (point.x < this.l) {
            point.x = this.l;
        }
        if (point.y < 0) {
            point.y = 0;
        }
        Point a = a(point2);
        if (a != null) {
            if (z) {
                int i = a.x > a.y ? a.x : a.y;
                if (point.x > i) {
                    point.x = i;
                }
                if (point.y > i) {
                    point.y = i;
                }
            } else {
                if (point.x > a.x) {
                    point.x = a.x;
                }
                if (point.y > a.y) {
                    point.y = a.y;
                }
            }
        }
        return point;
    }

    private void a(boolean z) {
        Point a = a(new Point(this.j + this.l, this.k), z, new Point(0, 0));
        this.j = a.x - this.l;
        this.k = a.y;
    }

    private void a(float f, float f2, boolean z) {
        this.j = this.h + ((int) f);
        this.k = this.i + ((int) f2);
        b();
        c();
        if (z) {
            j();
        }
    }

    private void j() {
        try {
            String str = this.m == 1 ? "" : "-land";
            new qw().a(String.valueOf(this.d) + str + "-x", this.j, getDefX()).a(String.valueOf(this.d) + str + "-y", this.k, getDefY()).commit();
        } catch (Throwable th) {
            la.a(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
        if (this.b) {
            Tools.c(this, this.a);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        try {
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            float f = rawX - this.f;
            float f2 = rawY - this.g;
            switch (motionEvent.getAction()) {
                case 0:
                    this.f = rawX;
                    this.g = rawY;
                    this.o = true;
                    break;
                case 1:
                case 3:
                    if (!this.o) {
                        a(f, f2, true);
                        break;
                    }
                    break;
                case 2:
                    if (!this.o || Math.abs(f) > n || Math.abs(f2) > n) {
                        if (this.o) {
                            b();
                            this.h = this.j;
                            this.i = this.k;
                        }
                        this.o = false;
                        a(f, f2, false);
                        motionEvent.setAction(3);
                        break;
                    }
                    break;
            }
        } catch (NoSuchMethodError e) {
            la.a(e);
        }
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (ClassCastException e2) {
            la.a(e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.fix.LinearLayout, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        la.a("FloatPanel onConfigurationChanged: " + configuration);
        Configuration a = android.fix.d.a(configuration);
        super.onConfigurationChanged(a);
        MainService.a(a);
        if (a.orientation != this.m) {
            j();
            this.m = a.orientation;
            a(getContext().getSharedPreferences(MainService.a, 0));
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(String str) {
        return "FloatPanel " + this.d + ' ' + str + ": " + this.c + ' ' + this.b;
    }

    public void d() {
        rx.a(new ii(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e() {
        if (this.b) {
            try {
                Tools.a((View) this);
            } catch (Throwable th) {
                la.b("Failed hide float icon", th);
            }
        }
        this.b = true;
        try {
            Tools.a(this, this.a);
        } catch (Throwable th2) {
            la.b("Failed add float icon", th2);
        }
    }

    public void f() {
        rx.a(new ij(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g() {
        try {
            Tools.a((View) this);
        } catch (Throwable th) {
            la.b("Failed hide float icon", th);
        }
    }

    public void h() {
        this.c = true;
        f();
    }

    public boolean i() {
        return this.b;
    }
}
