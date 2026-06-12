package luaj;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public final class as extends ap {
    private final LuaValue a;
    private final ap b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(LuaValue luaValue, ap apVar) {
        this.a = luaValue;
        this.b = apVar;
    }

    @Override // luaj.ap
    public LuaValue c(int i) {
        return i == 1 ? this.a : this.b.c(i - 1);
    }

    @Override // luaj.ap
    public int j_() {
        return this.b.j_() + 1;
    }

    @Override // luaj.ap
    public LuaValue g() {
        return this.a;
    }

    @Override // luaj.ap
    public ap e_(int i) {
        if (i != 1) {
            if (i == 2) {
                return this.b;
            }
            if (i > 2) {
                return this.b.e_(i - 1);
            }
            return LuaValue.a(1, "start must be > 0");
        }
        return this;
    }
}
