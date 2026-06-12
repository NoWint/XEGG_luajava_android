package luaj;

import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class t implements ad {
    private final Object a;
    private ad b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.ref.WeakReference] */
    private t(LuaValue luaValue, ad adVar) {
        this.a = LuaTable.C(luaValue) ? new WeakReference(luaValue) : luaValue;
        this.b = adVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ t(LuaValue luaValue, ad adVar, t tVar) {
        this(luaValue, adVar);
    }

    private LuaValue c() {
        return (LuaValue) (this.a instanceof WeakReference ? ((WeakReference) this.a).get() : this.a);
    }

    @Override // luaj.ad
    public int a(int i) {
        return 0;
    }

    @Override // luaj.ad
    public ae a() {
        return null;
    }

    @Override // luaj.ad
    public ae a(LuaValue luaValue) {
        return null;
    }

    @Override // luaj.ad
    public boolean b(LuaValue luaValue) {
        LuaValue c = c();
        return c != null && luaValue.c(c);
    }

    @Override // luaj.ad
    public ad u_() {
        return this.b;
    }

    @Override // luaj.ad
    public int b(int i) {
        return -1;
    }

    @Override // luaj.ad
    public ad a(ae aeVar, LuaValue luaValue) {
        ad a = this.b != null ? this.b.a(aeVar, luaValue) : null;
        if (c() != null) {
            this.b = a;
            return this;
        }
        return a;
    }

    @Override // luaj.ad
    public ad a(ad adVar) {
        return this.b != null ? this.b.a(adVar) : adVar;
    }

    @Override // luaj.ad
    public ad a(ae aeVar) {
        if (c() != null) {
            this.b = this.b.a(aeVar);
            return this;
        }
        return this.b;
    }

    @Override // luaj.ad
    public ad b(ad adVar) {
        return adVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<dead");
        LuaValue c = c();
        if (c != null) {
            sb.append(": ");
            sb.append(c.toString());
        }
        sb.append('>');
        if (this.b != null) {
            sb.append("; ");
            sb.append(this.b.toString());
        }
        return sb.toString();
    }
}
