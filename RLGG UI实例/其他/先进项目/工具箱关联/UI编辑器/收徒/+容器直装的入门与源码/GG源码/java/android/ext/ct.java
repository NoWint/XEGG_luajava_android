package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class ct implements DialogInterface.OnClickListener {
    int a;
    int b;
    String c;
    int d;
    boolean e;
    boolean g;
    protected cv j;
    int f = 0;
    int h = -1;
    protected cu i = null;

    public abstract boolean a(DialogInterface dialogInterface, int i);

    public abstract void d();

    public ct(int i, int i2, int i3, String str, boolean z) {
        this.a = i2;
        this.b = i3;
        this.c = str;
        this.d = i3;
        this.g = z;
        a();
        Config.H.put(i, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
    }

    public String toString() {
        return String.valueOf(qk.a(this.a)) + ' ' + this.d;
    }

    public CharSequence c() {
        return toString();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        cv cvVar;
        cu cuVar = this.i;
        if (cuVar != null) {
            i = cuVar.a(dialogInterface, i);
        }
        if (a(dialogInterface, i) && (cvVar = this.j) != null) {
            cvVar.a(this.d);
        }
    }

    public void a(cu cuVar) {
        this.i = cuVar;
    }

    public void a(cv cvVar) {
        this.j = cvVar;
    }

    public long e() {
        return this.d | (this.f << 32);
    }
}
