package android.ext;

import java.util.ArrayList;
import java.util.List;

/* compiled from: src */
/* loaded from: classes.dex */
public class g {
    private final android.c.f[] a;

    public g() {
        this(10);
    }

    public g(int i) {
        android.c.f[] fVarArr = new android.c.f[7];
        for (int i2 = 0; i2 < 7; i2++) {
            fVarArr[i2] = new android.c.f(i);
        }
        this.a = fVarArr;
    }

    public void a(long j, int i, h hVar) {
        android.c.f fVar;
        int a;
        int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
        if (numberOfTrailingZeros < 7 && (a = (fVar = this.a[numberOfTrailingZeros]).a(j)) >= 0) {
            hVar.a = fVar.b(a);
            hVar.b = true;
            return;
        }
        hVar.b = false;
    }

    public boolean a(long j, int i, long j2) {
        int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
        if (numberOfTrailingZeros < 7) {
            return this.a[numberOfTrailingZeros].a(j, j2);
        }
        return false;
    }

    public void a() {
        android.c.f[] fVarArr = this.a;
        for (int i = 0; i < 7; i++) {
            fVarArr[i].c();
        }
    }

    public int b() {
        int i = 0;
        android.c.f[] fVarArr = this.a;
        int i2 = 0;
        while (true) {
            int i3 = i;
            if (i2 < 7) {
                i = fVarArr[i2].b() + i3;
                i2++;
            } else {
                return i3;
            }
        }
    }

    public void c() {
        android.c.f[] fVarArr = this.a;
        boolean z = false;
        for (int i = 0; i < 7; i++) {
            android.c.f fVar = fVarArr[i];
            int b = fVar.b();
            if (b > 0) {
                if (!z) {
                    z = true;
                }
                int i2 = 16777216 | (1 << i);
                for (int i3 = 0; i3 < b; i3++) {
                    try {
                        d dVar = new d();
                        dVar.d = i2;
                        dVar.b = fVar.a(i3);
                        dVar.c = fVar.b(i3);
                        dVar.p();
                    } catch (ArrayIndexOutOfBoundsException e) {
                        la.b("Concurent modification for " + i, e);
                    }
                }
            }
        }
        if (z) {
            MainService.instance.L();
        }
    }

    public List d() {
        ArrayList arrayList = new ArrayList();
        android.c.f[] fVarArr = this.a;
        for (int i = 0; i < 7; i++) {
            android.c.f fVar = fVarArr[i];
            int b = fVar.b();
            if (b > 0) {
                int i2 = 1 << i;
                for (int i3 = 0; i3 < b; i3++) {
                    try {
                        d dVar = new d();
                        dVar.d = i2;
                        dVar.b = fVar.a(i3);
                        dVar.c = fVar.b(i3);
                        arrayList.add(dVar);
                    } catch (ArrayIndexOutOfBoundsException e) {
                        la.b("Concurent modification for " + i, e);
                    }
                }
            }
        }
        return arrayList;
    }
}
