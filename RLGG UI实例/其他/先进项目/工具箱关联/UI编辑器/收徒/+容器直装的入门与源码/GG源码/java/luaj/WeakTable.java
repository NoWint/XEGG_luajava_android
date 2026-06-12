package luaj;

import java.lang.ref.WeakReference;

/* compiled from: src */
/* loaded from: classes.dex */
public class WeakTable implements ah {
    private final boolean a;
    private final boolean b;
    private final LuaValue c;

    public WeakTable(boolean z, boolean z2, LuaValue luaValue) {
        this.a = z;
        this.b = z2;
        this.c = luaValue;
    }

    @Override // luaj.ah
    public boolean U() {
        return this.a;
    }

    @Override // luaj.ah
    public boolean V() {
        return this.b;
    }

    @Override // luaj.ah
    public LuaValue W() {
        return this.c;
    }

    @Override // luaj.ah
    public ad e(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue ac = luaValue2.ac();
        if (ac == null) {
            return null;
        }
        if (this.a && !luaValue.I() && !luaValue.J() && !luaValue.n_()) {
            if (this.b && !ac.I() && !ac.J() && !ac.n_()) {
                return new at(luaValue, ac, null);
            }
            return new au(luaValue, ac, null);
        } else if (this.b && !ac.I() && !ac.J() && !ac.n_()) {
            return new aw(luaValue, ac, null);
        } else {
            return LuaTable.f(luaValue, ac);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static LuaValue a(LuaValue luaValue) {
        switch (luaValue.e_()) {
            case 5:
            case 6:
            case 7:
            case 8:
                return new WeakValue(luaValue);
            default:
                return luaValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static LuaValue a(Object obj) {
        Object obj2 = obj instanceof WeakReference ? ((WeakReference) obj).get() : obj;
        return obj2 instanceof WeakValue ? ((WeakValue) obj2).ac() : (LuaValue) obj2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public class WeakValue extends LuaValue {
        WeakReference a;

        protected WeakValue(LuaValue luaValue) {
            this.a = new WeakReference(luaValue);
        }

        @Override // luaj.LuaValue
        public int e_() {
            b("type", "weak value");
            return 0;
        }

        @Override // luaj.LuaValue
        public String f_() {
            b("typename", "weak value");
            return null;
        }

        @Override // luaj.LuaValue, luaj.ap
        public String toString() {
            return "weak<" + this.a.get() + '>';
        }

        @Override // luaj.LuaValue
        public LuaValue ac() {
            return (LuaValue) this.a.get();
        }

        @Override // luaj.LuaValue
        public boolean c(LuaValue luaValue) {
            Object obj = this.a.get();
            return obj != null && luaValue.c((LuaValue) obj);
        }
    }

    @Override // luaj.ah
    public LuaValue E(LuaValue luaValue) {
        return this.b ? a(luaValue) : luaValue;
    }

    @Override // luaj.ah
    public LuaValue a(LuaValue[] luaValueArr, int i) {
        LuaValue luaValue = luaValueArr[i];
        if (luaValue != null && (luaValue = a((Object) luaValue)) == null) {
            luaValueArr[i] = null;
        }
        return luaValue;
    }
}
