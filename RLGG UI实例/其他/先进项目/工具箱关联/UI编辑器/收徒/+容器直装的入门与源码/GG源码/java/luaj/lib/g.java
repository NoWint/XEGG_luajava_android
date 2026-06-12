package luaj.lib;

import luaj.LuaFunction;
import luaj.al;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class g {
    String a;
    String b;
    String c;
    String d;
    int e;
    int f;
    int g;
    short h;
    short i;
    boolean j;
    boolean k;
    String l;
    e m;

    public void a(LuaFunction luaFunction) {
        if (luaFunction.j()) {
            al alVar = luaFunction.k().a;
            this.d = alVar.w != null ? alVar.w.d_() : "=?";
            this.f = alVar.x;
            this.g = alVar.y;
            this.c = this.f == 0 ? "main" : "Lua";
            this.l = alVar.b();
            return;
        }
        this.d = "=[Java]";
        this.f = -1;
        this.g = -1;
        this.c = "Java";
        this.l = "[Java]";
    }

    public String toString() {
        return "DebugInfo [\n\tname=" + this.a + "\n\tnamewhat=" + this.b + "\n\twhat=" + this.c + "\n\tsource=" + this.d + "\n\tcurrentline=" + this.e + "\n\tlinedefined=" + this.f + "\n\tlastlinedefined=" + this.g + "\n\tnups=" + ((int) this.h) + "\n\tnparams=" + ((int) this.i) + "\n\tisvararg=" + this.j + "\n\tistailcall=" + this.k + "\n\tshort_src=" + this.l + "\n\tcf=" + this.m + "\n]";
    }
}
