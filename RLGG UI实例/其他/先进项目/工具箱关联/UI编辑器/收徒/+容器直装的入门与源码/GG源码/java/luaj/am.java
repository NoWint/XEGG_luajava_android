package luaj;

import luaj.lib.DebugLib;

/* compiled from: src */
/* loaded from: classes.dex */
public class am extends ap {
    private LuaValue a;
    private ap b;
    private ap c;
    private final Globals d;

    public am(Globals globals, LuaValue luaValue, ap apVar) {
        this.d = globals;
        this.a = luaValue;
        this.b = apVar;
    }

    @Override // luaj.ap
    public boolean l_() {
        return true;
    }

    @Override // luaj.ap
    public ap b() {
        ap apVar = this.c;
        if (apVar == null) {
            Globals globals = this.d;
            DebugLib debugLib = globals != null ? globals.k : null;
            LuaValue luaValue = this.a;
            ap apVar2 = this.b;
            while (apVar == null) {
                if (debugLib != null && !luaValue.j() && luaValue.B()) {
                    debugLib.a(luaValue.C(), true);
                }
                ap a = luaValue.a(apVar2, true);
                if (a.l_()) {
                    am amVar = (am) a;
                    luaValue = amVar.a;
                    this.a = luaValue;
                    ap apVar3 = amVar.b;
                    this.b = apVar3;
                    apVar2 = apVar3;
                } else {
                    this.c = a;
                    this.a = null;
                    this.b = null;
                    apVar = a;
                }
            }
        }
        return apVar;
    }

    @Override // luaj.ap
    public LuaValue c(int i) {
        if (this.c == null) {
            b();
        }
        return this.c.c(i);
    }

    @Override // luaj.ap
    public LuaValue g() {
        if (this.c == null) {
            b();
        }
        return this.c.g();
    }

    @Override // luaj.ap
    public int j_() {
        if (this.c == null) {
            b();
        }
        return this.c.j_();
    }

    @Override // luaj.ap
    public ap e_(int i) {
        if (this.c == null) {
            b();
        }
        return this.c.e_(i);
    }
}
