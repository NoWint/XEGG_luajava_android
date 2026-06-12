package android.ext;

import android.content.pm.ApplicationInfo;
import android.graphics.drawable.Drawable;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.lang.ref.WeakReference;

/* compiled from: src */
/* loaded from: classes.dex */
public class qh implements Comparable {
    public String a;
    public String b;
    public String c;
    public String d;
    public volatile Drawable e;
    public int f;
    public int g;
    public int h;
    public boolean i;
    public boolean j;
    public long k;
    public boolean l;
    public int m;
    public boolean n;
    public int o;
    private volatile boolean s;
    private static WeakReference t = null;
    public static final int p = Tools.c((int) R.color.process_pid, -5570561);
    public static final int q = Tools.c((int) R.color.process_name, -1);
    public static final int r = Tools.c((int) R.color.process_size, -5570646);

    public qh(qg qgVar, int i, int i2, String str, int i3, boolean z, int i4) {
        this.s = false;
        this.a = str;
        this.b = qgVar.d;
        this.c = qgVar.c;
        this.d = qgVar.e == null ? "" : qgVar.e;
        this.e = null;
        this.f = i;
        this.g = i2;
        this.h = qgVar.h ? i2 : qgVar.b;
        this.l = str.equals(qgVar.c);
        this.i = qgVar.f;
        this.j = qgVar.g;
        this.m = i3;
        this.n = z;
        this.o = i4;
        if (qgVar.h) {
            this.s = true;
        }
    }

    public void a() {
        ApplicationInfo j;
        if (this.g != this.h) {
            la.b("vs app: " + this.h + " != " + this.g);
            try {
                String a = qf.a(qf.b(), this.g);
                if (a != null && a != null && (j = Tools.j(a)) != null && j.nativeLibraryDir != null) {
                    la.b("vs: " + this.d + " => " + j.nativeLibraryDir);
                    this.d = j.nativeLibraryDir;
                }
            } catch (Throwable th) {
                la.b("Failed get vs info for " + this.g, th);
            }
        }
    }

    public void b() {
        if (!this.s) {
            try {
                this.e = Tools.a(Tools.a(Tools.b(Tools.j(this.c)), Tools.b()));
            } catch (Throwable th) {
                la.b("Failed load icon for " + this.c);
            }
            this.s = true;
        }
    }

    public void a(TextView textView) {
        if (textView != null) {
            boolean z = this.s;
            Drawable drawable = this.e;
            if (drawable == null) {
                WeakReference weakReference = t;
                if (weakReference != null) {
                    drawable = (Drawable) weakReference.get();
                }
                if (drawable == null) {
                    drawable = Tools.b((int) R.drawable.empty);
                    t = new WeakReference(drawable);
                }
            }
            Tools.a(textView, drawable, 48);
            if (!z) {
                rx.b(new qi(this, textView));
            }
        }
    }

    public CharSequence c() {
        bp bpVar = new bp();
        StringBuilder sb = new StringBuilder();
        if (f() > 0) {
            sb.append('#');
        }
        if (e() > 0) {
            sb.append('!');
        }
        if (!Config.C && this.g != this.h) {
            sb.append('v');
        }
        if (this.f > 1) {
            sb.append('[');
            sb.append(Integer.toString(this.f));
            sb.append("] ");
        }
        bpVar.a(Tools.a((CharSequence) sb.toString(), p));
        bpVar.a(Tools.a((CharSequence) (String.valueOf(this.b) + g()), q));
        StringBuilder sb2 = new StringBuilder();
        if (this.n) {
            sb2.append(" [x64]");
        }
        if (this.o != 0) {
            sb2.append(" [");
            sb2.append(Tools.a(Tools.e(), 1024 * this.o));
            sb2.append(']');
        }
        bpVar.a(Tools.a((CharSequence) sb2.toString(), r));
        return bpVar.a();
    }

    public String toString() {
        return c().toString();
    }

    public String d() {
        return "ProcessInfo [cmdline=" + this.a + ", name=" + this.b + ", packageName=" + this.c + ", icon=" + this.e + ", pid=" + this.f + ", uid=" + this.g + ", isSystem=" + this.i + ", isGame=" + this.j + ", weight=" + this.k + ", main=" + this.l + ", order=" + this.m + ", x64=" + this.n + ", rss=" + this.o + ", getTracer()=" + f() + ", getTrace()=" + e() + ']';
    }

    public int e() {
        int indexOfValue = qf.a.indexOfValue(this.f);
        if (indexOfValue >= 0) {
            return qf.a.keyAt(indexOfValue);
        }
        return indexOfValue;
    }

    private String g() {
        return this.l ? "" : " (" + this.a.replace(String.valueOf(this.c) + ':', "") + ')';
    }

    public int f() {
        return qf.a.get(this.f);
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(qh qhVar) {
        if (this.m != qhVar.m) {
            return this.m > qhVar.m ? -1 : 1;
        } else if (this.j != qhVar.j) {
            return !this.j ? 1 : -1;
        } else if (this.i != qhVar.i) {
            return this.i ? 1 : -1;
        } else if (this.k != qhVar.k) {
            return this.k <= qhVar.k ? 1 : -1;
        } else if (this.l != qhVar.l) {
            return !this.l ? 1 : -1;
        } else {
            if ((e() > 0) != (qhVar.e() > 0)) {
                return e() <= 0 ? -1 : 1;
            } else if (this.f != qhVar.f) {
                return this.f <= qhVar.f ? 1 : -1;
            } else {
                return 0;
            }
        }
    }
}
