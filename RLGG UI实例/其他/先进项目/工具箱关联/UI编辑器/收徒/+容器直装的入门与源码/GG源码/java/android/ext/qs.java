package android.ext;

import android.util.SparseIntArray;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class qs {
    private static SparseIntArray f = null;
    private static int g = 16777215;
    final int a;
    final long b;
    final long c;
    String d;
    String e;

    public qs(int i, long j, long j2) {
        this.a = i;
        this.b = j;
        this.c = j2;
    }

    public String a() {
        int i = this.a;
        return String.valueOf((i & 256) == 256 ? "r" : "-") + ((i & 512) == 512 ? "w" : "-") + ((i & 1024) == 1024 ? "x" : "-") + ((i & 2048) == 2048 ? "s" : "p");
    }

    public CharSequence b() {
        return RegionList.a[this.a & 255];
    }

    public String c() {
        return this.d;
    }

    public String d() {
        return this.e == null ? this.d : String.valueOf(this.e) + ":bss";
    }

    public String toString() {
        return ((Object) RegionList.a[this.a & 255]) + ": " + d.b(this.b, 4) + '-' + d.b(this.c, 4) + ' ' + a() + " '" + this.d + '\'';
    }

    public CharSequence e() {
        return Tools.a((CharSequence) toString(), RegionList.b[this.a & 255]);
    }

    private int f() {
        int i = this.a;
        if ((i & 1536) == 1536) {
            return 1;
        }
        if ((i & 1024) == 1024) {
            return 2;
        }
        if ((i & 512) == 512) {
            return 16;
        }
        if ((i & 256) == 256) {
            return 8;
        }
        return 4;
    }

    public static int a(qs qsVar) {
        try {
            SparseIntArray sparseIntArray = f;
            if (sparseIntArray == null) {
                sparseIntArray = new SparseIntArray(8);
                sparseIntArray.append(4, Tools.e((int) R.color.pointer_unknown));
                sparseIntArray.append(1, Tools.e((int) R.color.pointer_executable_writable));
                sparseIntArray.append(2, Tools.e((int) R.color.pointer_executable));
                sparseIntArray.append(16, Tools.e((int) R.color.pointer_writable));
                sparseIntArray.append(8, Tools.e((int) R.color.pointer_readable));
                f = sparseIntArray;
                g = Tools.e((int) R.color.pointer_unknown);
            }
            int i = qsVar != null ? sparseIntArray.get(qsVar.f()) : 4;
            if (i == 4) {
                return g;
            }
            return i;
        } catch (Throwable th) {
            la.c("Failed getPointerColor for: " + qsVar, th);
            return g;
        }
    }
}
