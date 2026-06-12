package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
public class z {
    final /* synthetic */ LuaTable a;
    private int b = -1;
    private ad c = null;
    private ae d = null;

    public z(LuaTable luaTable) {
        this.a = luaTable;
    }

    /* JADX WARN: Incorrect condition in loop: B:9:0x0026 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a() {
        /*
            r5 = this;
            r3 = 0
            r1 = 1
            luaj.ad r0 = r5.c
        L4:
            if (r0 != 0) goto L2a
            r5.c = r3
            r5.d = r3
            int r0 = r5.b
            int r0 = r0 + 1
        Le:
            luaj.LuaTable r2 = r5.a
            luaj.LuaValue[] r2 = luaj.LuaTable.b(r2)
            int r2 = r2.length
            if (r0 < r2) goto L3c
            luaj.LuaTable r2 = r5.a
            luaj.LuaValue[] r2 = luaj.LuaTable.b(r2)
            int r2 = r2.length
            int r0 = r0 - r2
        L1f:
            luaj.LuaTable r2 = r5.a
            luaj.ad[] r2 = luaj.LuaTable.c(r2)
            int r2 = r2.length
            if (r0 < r2) goto L63
            r0 = 0
        L29:
            return r0
        L2a:
            luaj.ad r0 = r0.u_()
            if (r0 == 0) goto L4
            luaj.ae r2 = r0.a()
            if (r2 == 0) goto L4
            r5.c = r0
            r5.d = r2
            r0 = r1
            goto L29
        L3c:
            luaj.LuaTable r2 = r5.a
            luaj.LuaValue[] r2 = luaj.LuaTable.b(r2)
            r2 = r2[r0]
            if (r2 == 0) goto L60
            luaj.LuaTable r2 = r5.a
            luaj.ah r2 = r2.p
            if (r2 == 0) goto L5c
            luaj.LuaTable r2 = r5.a
            luaj.ah r2 = r2.p
            luaj.LuaTable r3 = r5.a
            luaj.LuaValue[] r3 = luaj.LuaTable.b(r3)
            luaj.LuaValue r2 = r2.a(r3, r0)
            if (r2 == 0) goto L60
        L5c:
            r5.b = r0
            r0 = r1
            goto L29
        L60:
            int r0 = r0 + 1
            goto Le
        L63:
            luaj.LuaTable r2 = r5.a
            luaj.ad[] r2 = luaj.LuaTable.c(r2)
            r2 = r2[r0]
        L6b:
            if (r2 != 0) goto L70
            int r0 = r0 + 1
            goto L1f
        L70:
            luaj.ae r3 = r2.a()
            if (r3 == 0) goto L86
            luaj.LuaTable r4 = r5.a
            luaj.LuaValue[] r4 = luaj.LuaTable.b(r4)
            int r4 = r4.length
            int r0 = r0 + r4
            r5.b = r0
            r5.c = r2
            r5.d = r3
            r0 = r1
            goto L29
        L86:
            luaj.ad r2 = r2.u_()
            goto L6b
        */
        throw new UnsupportedOperationException("Method not decompiled: luaj.z.a():boolean");
    }

    public int b() {
        if (this.d == null) {
            return this.b + 1;
        }
        return 0;
    }

    public LuaValue c() {
        ae aeVar = this.d;
        return aeVar != null ? aeVar.c() : LuaLong.b(this.b + 1);
    }

    public LuaValue d() {
        LuaValue[] luaValueArr;
        LuaValue[] luaValueArr2;
        ae aeVar = this.d;
        if (aeVar != null) {
            return aeVar.t_();
        }
        if (this.a.p == null) {
            luaValueArr2 = this.a.b;
            return luaValueArr2[this.b];
        }
        ah ahVar = this.a.p;
        luaValueArr = this.a.b;
        return ahVar.a(luaValueArr, this.b);
    }
}
