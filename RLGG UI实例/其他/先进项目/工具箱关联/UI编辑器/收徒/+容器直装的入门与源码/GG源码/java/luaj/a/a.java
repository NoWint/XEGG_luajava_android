package luaj.a;

import luaj.LuaValue;
import luaj.al;
import luaj.ao;

/* compiled from: src */
/* loaded from: classes.dex */
public class a extends luaj.m {
    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(boolean z) {
        if (!z) {
            throw new luaj.o("compiler assert failed");
        }
    }

    public static void a(e eVar, int i) {
        eVar.a((eVar.a() & (-64)) | ((i << 0) & 63));
    }

    public static void a(int[] iArr, int i, int i2) {
        iArr[i] = (iArr[i] & (-16321)) | ((i2 << 6) & 16320);
    }

    public static void b(e eVar, int i) {
        eVar.a((eVar.a() & (-16321)) | ((i << 6) & 16320));
    }

    public static void c(e eVar, int i) {
        eVar.a((eVar.a() & 8388607) | ((i << 23) & (-8388608)));
    }

    public static void d(e eVar, int i) {
        eVar.a((eVar.a() & (-8372225)) | ((i << 14) & 8372224));
    }

    public static void e(e eVar, int i) {
        eVar.a((eVar.a() & 16383) | ((i << 14) & (-16384)));
    }

    public static void f(e eVar, int i) {
        e(eVar, 131071 + i);
    }

    public static int a(int i, int i2, int i3, int i4) {
        return ((i << 0) & 63) | ((i2 << 6) & 16320) | ((i3 << 23) & (-8388608)) | ((i4 << 14) & 8372224);
    }

    public static int a(int i, int i2, int i3) {
        return ((i << 0) & 63) | ((i2 << 6) & 16320) | ((i3 << 14) & (-16384));
    }

    public static int a(int i, int i2) {
        return ((i << 0) & 63) | ((i2 << 6) & (-64));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static LuaValue[] a(LuaValue[] luaValueArr, int i) {
        LuaValue[] luaValueArr2 = new LuaValue[i];
        if (luaValueArr != null) {
            System.arraycopy(luaValueArr, 0, luaValueArr2, 0, Math.min(luaValueArr.length, i));
        }
        return luaValueArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static al[] a(al[] alVarArr, int i) {
        al[] alVarArr2 = new al[i];
        if (alVarArr != null) {
            System.arraycopy(alVarArr, 0, alVarArr2, 0, Math.min(alVarArr.length, i));
        }
        return alVarArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static luaj.l[] a(luaj.l[] lVarArr, int i) {
        luaj.l[] lVarArr2 = new luaj.l[i];
        if (lVarArr != null) {
            System.arraycopy(lVarArr, 0, lVarArr2, 0, Math.min(lVarArr.length, i));
        }
        return lVarArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ao[] a(ao[] aoVarArr, int i) {
        ao[] aoVarArr2 = new ao[i];
        if (aoVarArr != null) {
            System.arraycopy(aoVarArr, 0, aoVarArr2, 0, Math.min(aoVarArr.length, i));
        }
        return aoVarArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static q[] a(q[] qVarArr, int i) {
        q[] qVarArr2 = new q[i];
        if (qVarArr != null) {
            System.arraycopy(qVarArr, 0, qVarArr2, 0, Math.min(qVarArr.length, i));
        }
        return qVarArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static m[] a(m[] mVarArr, int i) {
        return mVarArr == null ? new m[2] : mVarArr.length < i ? b(mVarArr, mVarArr.length * 2) : mVarArr;
    }

    static m[] b(m[] mVarArr, int i) {
        m[] mVarArr2 = new m[i];
        if (mVarArr != null) {
            System.arraycopy(mVarArr, 0, mVarArr2, 0, Math.min(mVarArr.length, i));
        }
        return mVarArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] a(int[] iArr, int i) {
        int[] iArr2 = new int[i];
        if (iArr != null) {
            System.arraycopy(iArr, 0, iArr2, 0, Math.min(iArr.length, i));
        }
        return iArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static char[] a(char[] cArr, int i) {
        char[] cArr2 = new char[i];
        if (cArr != null) {
            System.arraycopy(cArr, 0, cArr2, 0, Math.min(cArr.length, i));
        }
        return cArr2;
    }
}
