package lasm;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import lasm.LasmBase;
import luaj.LuaValue;
import luaj.al;
import luaj.ao;
import luaj.l;
import luaj.m;

/* compiled from: src */
/* loaded from: classes.dex */
public class d extends al {
    e[] h;
    e[] j;
    e[] l;
    luaj.a.g m;
    HashMap n;
    HashMap o;
    HashMap p;
    int a = 0;
    int b = 0;
    int c = 0;
    int d = 0;
    int e = 0;
    int f = 0;
    int g = 0;
    int i = 0;
    int k = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d() {
        this.q = new LuaValue[8];
        this.r = new int[8];
        this.s = new al[8];
        this.t = new int[8];
        this.u = new l[8];
        this.v = new ao[8];
        this.h = new e[8];
        this.j = new e[8];
        this.n = new HashMap();
        this.o = new HashMap();
        this.p = new HashMap();
        this.m = new luaj.a.g(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(i iVar) {
        this.B = Math.max(2, LasmBase.a(iVar, 255));
        if (this.B < this.z) {
            throw new c(iVar, ".maxstacksize (" + this.B + ") must be not less .numparams (" + this.z + ")");
        }
        this.l = new e[this.B];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d a() {
        e eVar;
        if (this.q.length != this.a) {
            this.q = (LuaValue[]) Arrays.copyOf(this.q, this.a);
        }
        if (this.r.length != this.b) {
            this.r = Arrays.copyOf(this.r, this.b);
        }
        if (this.s.length != this.d) {
            this.s = (al[]) Arrays.copyOf(this.s, this.d);
        }
        if (this.t.length != this.e) {
            this.t = Arrays.copyOf(this.t, this.e);
        }
        if (this.u.length != this.f) {
            this.u = (l[]) Arrays.copyOf(this.u, this.f);
        }
        if (this.v.length != this.g) {
            this.v = (ao[]) Arrays.copyOf(this.v, this.g);
        }
        int i = this.i;
        for (int i2 = 0; i2 < i; i2++) {
            e eVar2 = this.h[i2];
            if (((e) this.o.get(eVar2.a.f.toLowerCase(Locale.ENGLISH))) == null) {
                throw new c(eVar2.a, "The label " + eVar2.a.f + " is missing");
            }
            luaj.a.a.f(new luaj.a.e(this.r, eVar2.b), (eVar.b - eVar2.b) - 1);
        }
        int i3 = this.k;
        for (int i4 = 0; i4 < i3; i4++) {
            e eVar3 = this.j[i4];
            e eVar4 = (e) this.p.get(eVar3.a.f.toLowerCase(Locale.ENGLISH));
            if (eVar4 == null) {
                throw new c(eVar3.a, "The function " + eVar3.a.f + " is missing");
            }
            luaj.a.a.e(new luaj.a.e(this.r, eVar3.b), eVar4.b);
        }
        int length = this.l.length;
        for (int i5 = 0; i5 < length; i5++) {
            e eVar5 = this.l[i5];
            if (eVar5 != null) {
                throw new c(eVar5.a, "No '.end local' for local variable v" + i5);
            }
        }
        this.h = null;
        this.j = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.m = null;
        this.l = null;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(i iVar, d dVar) {
        String lowerCase = iVar.f.toLowerCase(Locale.ENGLISH);
        e eVar = (e) this.p.get(lowerCase);
        if (eVar != null) {
            throw new c(iVar, "Duplicate function name '" + iVar.f + "' (used at line " + eVar.a.b + ")");
        }
        this.p.put(lowerCase, new e(iVar, this.d));
        al[] alVarArr = this.s;
        int i = this.d;
        this.d = i + 1;
        this.s = (al[]) android.c.d.a(alVarArr, i, dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(LasmBase.Internal internal, i iVar) {
        ao[] aoVarArr = this.v;
        int i = this.g;
        this.g = i + 1;
        this.v = (ao[]) android.c.d.a(aoVarArr, i, new ao(a.e(iVar), internal instanceof LasmBase.V, internal.a));
    }

    void a(LuaValue luaValue) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(i iVar) {
        String lowerCase = iVar.f.toLowerCase(Locale.ENGLISH);
        e eVar = (e) this.o.get(lowerCase);
        if (eVar != null) {
            throw new c(iVar, "Try redefine label '" + iVar.f + "' (already defined at line " + eVar.a.b + ")");
        }
        this.o.put(lowerCase, new e(iVar, this.b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(i iVar) {
        this.c = a.a(iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(LasmBase.V v, i iVar) {
        a(v);
        int e_ = v.e_();
        if (this.l[e_] != null) {
            throw new c(v.b, "Try redefine not ended local variable v" + e_ + " (v" + e_ + " defined at line " + this.l[e_].a.b + " as '" + this.l[e_].a.f + "')");
        }
        this.l[e_] = new e(iVar, this.f);
        l[] lVarArr = this.u;
        int i = this.f;
        this.f = i + 1;
        this.u = (l[]) android.c.d.a(lVarArr, i, new l(a.e(iVar), this.b, this.b + 1));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(LasmBase.V v, i iVar, int i) {
        a(v);
        int e_ = v.e_();
        if (this.l[e_] == null) {
            throw new c(v.b, "Try end not defined local variable v" + e_);
        }
        if (!this.l[e_].a.f.equals(iVar.f)) {
            throw new c(v.b, "Try end local variable v" + e_ + " with different name (v" + e_ + " defined at line " + this.l[e_].a.b + " as '" + this.l[e_].a.f + "')");
        }
        this.u[this.l[e_].b].c = this.b + i;
        this.l[e_] = null;
    }

    int b(LuaValue luaValue) {
        if (luaValue instanceof LasmBase.Const) {
            return luaValue.e_();
        }
        Integer num = (Integer) this.n.get(luaValue);
        if (num == null) {
            Integer valueOf = Integer.valueOf(this.a);
            this.n.put(luaValue, valueOf);
            LuaValue[] luaValueArr = this.q;
            int i = this.a;
            this.a = i + 1;
            this.q = (LuaValue[]) android.c.d.a(luaValueArr, i, luaValue);
            num = valueOf;
        }
        return num.intValue();
    }

    int d(i iVar) {
        int a = iVar.a == 60 ? a.a(iVar) : -1;
        if (iVar.a != 60) {
            e eVar = (e) this.o.get(iVar.f.toLowerCase(Locale.ENGLISH));
            if (eVar != null) {
                return (eVar.b - this.b) - 1;
            }
            e[] eVarArr = this.h;
            int i = this.i;
            this.i = i + 1;
            this.h = (e[]) android.c.d.a(eVarArr, i, new e(iVar, this.b));
            return a;
        }
        return a;
    }

    int e(i iVar) {
        if (iVar.a == 79) {
            return a.a(iVar);
        }
        e[] eVarArr = this.j;
        int i = this.k;
        this.k = i + 1;
        this.j = (e[]) android.c.d.a(eVarArr, i, new e(iVar, this.b));
        return 262143;
    }

    int c(LuaValue luaValue) {
        return luaValue instanceof LasmBase.Internal ? luaValue.e_() : m.j(b(luaValue));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01df A[Catch: Throwable -> 0x0030, TryCatch #0 {Throwable -> 0x0030, blocks: (B:3:0x000e, B:4:0x0010, B:5:0x0013, B:6:0x002f, B:11:0x0036, B:13:0x003e, B:14:0x004c, B:16:0x0059, B:18:0x005f, B:19:0x0074, B:32:0x00a4, B:68:0x00f8, B:71:0x010e, B:72:0x0126, B:80:0x0148, B:82:0x014c, B:83:0x0150, B:85:0x015b, B:91:0x016d, B:95:0x0187, B:97:0x018f, B:98:0x0198, B:102:0x01a2, B:106:0x01bf, B:103:0x01af, B:110:0x01d1, B:112:0x01d9, B:113:0x01df, B:115:0x01ed, B:117:0x01f3, B:121:0x0203, B:122:0x020f), top: B:157:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x014c A[Catch: Throwable -> 0x0030, TryCatch #0 {Throwable -> 0x0030, blocks: (B:3:0x000e, B:4:0x0010, B:5:0x0013, B:6:0x002f, B:11:0x0036, B:13:0x003e, B:14:0x004c, B:16:0x0059, B:18:0x005f, B:19:0x0074, B:32:0x00a4, B:68:0x00f8, B:71:0x010e, B:72:0x0126, B:80:0x0148, B:82:0x014c, B:83:0x0150, B:85:0x015b, B:91:0x016d, B:95:0x0187, B:97:0x018f, B:98:0x0198, B:102:0x01a2, B:106:0x01bf, B:103:0x01af, B:110:0x01d1, B:112:0x01d9, B:113:0x01df, B:115:0x01ed, B:117:0x01f3, B:121:0x0203, B:122:0x020f), top: B:157:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0198 A[Catch: Throwable -> 0x0030, TryCatch #0 {Throwable -> 0x0030, blocks: (B:3:0x000e, B:4:0x0010, B:5:0x0013, B:6:0x002f, B:11:0x0036, B:13:0x003e, B:14:0x004c, B:16:0x0059, B:18:0x005f, B:19:0x0074, B:32:0x00a4, B:68:0x00f8, B:71:0x010e, B:72:0x0126, B:80:0x0148, B:82:0x014c, B:83:0x0150, B:85:0x015b, B:91:0x016d, B:95:0x0187, B:97:0x018f, B:98:0x0198, B:102:0x01a2, B:106:0x01bf, B:103:0x01af, B:110:0x01d1, B:112:0x01d9, B:113:0x01df, B:115:0x01ed, B:117:0x01f3, B:121:0x0203, B:122:0x020f), top: B:157:0x000e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(lasm.i r7, luaj.LuaValue r8, luaj.LuaValue r9, luaj.LuaValue r10, lasm.i r11, lasm.i r12) {
        /*
            Method dump skipped, instructions count: 820
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: lasm.d.a(lasm.i, luaj.LuaValue, luaj.LuaValue, luaj.LuaValue, lasm.i, lasm.i):void");
    }

    public int a(int i) {
        if (this.c != 0) {
            if (this.t.length <= this.b) {
                this.t = Arrays.copyOf(this.t, android.c.d.a(this.b + 1));
            }
            this.t[this.b] = this.c;
            this.e = this.b + 1;
        }
        int[] iArr = this.r;
        int i2 = this.b;
        this.b = i2 + 1;
        this.r = android.c.d.a(iArr, i2, i);
        return 0;
    }
}
