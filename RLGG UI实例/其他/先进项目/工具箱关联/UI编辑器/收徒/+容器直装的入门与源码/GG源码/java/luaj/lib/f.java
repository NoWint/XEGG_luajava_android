package luaj.lib;

import luaj.Globals;
import luaj.LuaClosure;
import luaj.LuaFunction;
import luaj.LuaString;
import luaj.LuaTable;
import luaj.LuaValue;
import luaj.ag;
import luaj.al;
import luaj.ap;
import luaj.z;

/* compiled from: src */
/* loaded from: classes.dex */
public class f {
    static final e[] a = new e[0];
    e[] b = a;
    int c = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int a() {
        return this.c > 0 ? this.b[this.c - 1].c() : -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(ag agVar) {
        if (agVar.f && this.c > 0) {
            e eVar = this.b[this.c - 1];
            agVar.k = eVar.c();
            agVar.l = eVar.b;
        }
    }

    private synchronized e a(boolean z) {
        e eVar;
        if (z) {
            eVar = this.b[this.c - 1];
        } else {
            if (this.c >= this.b.length) {
                int max = Math.max(4, (this.b.length * 3) / 2);
                e[] eVarArr = new e[max];
                System.arraycopy(this.b, 0, eVarArr, 0, this.b.length);
                for (int length = this.b.length; length < max; length++) {
                    eVarArr[length] = new e();
                }
                this.b = eVarArr;
                for (int i = 1; i < max; i++) {
                    eVarArr[i].c = eVarArr[i - 1];
                }
            }
            e[] eVarArr2 = this.b;
            int i2 = this.c;
            this.c = i2 + 1;
            eVar = eVarArr2[i2];
        }
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void a(LuaFunction luaFunction, boolean z, boolean z2) {
        a(z2).a(luaFunction, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void a(LuaClosure luaClosure, ap apVar, LuaValue[] luaValueArr, boolean z, boolean z2) {
        a(z2).a(luaClosure, apVar, luaValueArr, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void b(ag agVar) {
        if (this.c > 0) {
            e[] eVarArr = this.b;
            int i = this.c - 1;
            this.c = i;
            eVarArr[i].b();
        }
        a(agVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void a(int i, ap apVar, int i2) {
        int i3 = this.c;
        if (i3 > 0) {
            this.b[i3 - 1].a(i, apVar, i2);
        }
    }

    private static LuaValue a(StringBuffer stringBuffer, LuaTable luaTable, LuaValue luaValue, int i) {
        LuaValue a2;
        if (luaTable != null) {
            z S = luaTable.S();
            while (S.a()) {
                if (S.b() == 0) {
                    LuaValue c = S.c();
                    if (c instanceof LuaString) {
                        LuaValue d = S.d();
                        if (d == luaValue) {
                            if (i == 2) {
                                stringBuffer.append("function '");
                                stringBuffer.append(c.d_());
                                stringBuffer.append('\'');
                                return DebugLib.u;
                            }
                            return c;
                        } else if (i > 1 && d.N() && (a2 = a(stringBuffer, d.O(), luaValue, i - 1)) != null) {
                            String d_ = c.d_();
                            stringBuffer.append("function '");
                            if (!d_.equals("_G")) {
                                stringBuffer.append(d_);
                                stringBuffer.append('.');
                            }
                            stringBuffer.append(a2.d_());
                            stringBuffer.append('\'');
                            return DebugLib.u;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    private static void a(StringBuffer stringBuffer, Globals globals, g gVar) {
        if (a(stringBuffer, globals, gVar.m.a, 2) == null) {
            if (gVar.b.length() > 0) {
                stringBuffer.append(gVar.b);
                stringBuffer.append(" '");
                stringBuffer.append(gVar.a);
                stringBuffer.append('\'');
            } else if (gVar.c.charAt(0) == 'm') {
                stringBuffer.append("main chunk");
            } else if (gVar.c.charAt(0) != 'J') {
                stringBuffer.append("function <");
                stringBuffer.append(gVar.l);
                stringBuffer.append(':');
                stringBuffer.append(gVar.f);
                stringBuffer.append('>');
            } else {
                stringBuffer.append('?');
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String a(Globals globals, int i) {
        StringBuffer stringBuffer;
        stringBuffer = new StringBuffer();
        stringBuffer.append("stack traceback:");
        while (true) {
            int i2 = i + 1;
            e a2 = a(i);
            if (a2 != null) {
                g a3 = a("Slnt", a2.a, a2);
                a3.m = a2;
                stringBuffer.append("\n\t");
                stringBuffer.append(a3.l);
                stringBuffer.append(':');
                if (a3.e > 0) {
                    stringBuffer.append(a3.e);
                }
                stringBuffer.append(" in ");
                a(stringBuffer, globals, a3);
                if (a3.k) {
                    stringBuffer.append("\n\t(...tail calls...)");
                }
                i = i2;
            } else {
                stringBuffer.append("\n\t[Java]: in ?");
            }
        }
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized e a(int i) {
        e eVar;
        if (i >= 1) {
            if (i <= this.c) {
                eVar = this.b[this.c - i];
            }
        }
        eVar = null;
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0014, code lost:
        r0 = r3.b[r0];
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized luaj.lib.e a(luaj.LuaValue r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            r0 = 1
        L2:
            int r1 = r3.c     // Catch: java.lang.Throwable -> L1c
            if (r0 <= r1) goto L9
            r0 = 0
        L7:
            monitor-exit(r3)
            return r0
        L9:
            luaj.lib.e[] r1 = r3.b     // Catch: java.lang.Throwable -> L1c
            int r2 = r3.c     // Catch: java.lang.Throwable -> L1c
            int r2 = r2 - r0
            r1 = r1[r2]     // Catch: java.lang.Throwable -> L1c
            luaj.LuaFunction r1 = r1.a     // Catch: java.lang.Throwable -> L1c
            if (r1 != r4) goto L19
            luaj.lib.e[] r1 = r3.b     // Catch: java.lang.Throwable -> L1c
            r0 = r1[r0]     // Catch: java.lang.Throwable -> L1c
            goto L7
        L19:
            int r0 = r0 + 1
            goto L2
        L1c:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: luaj.lib.f.a(luaj.LuaValue):luaj.lib.e");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized g a(String str, LuaFunction luaFunction, e eVar) {
        g gVar;
        h a2;
        gVar = new g();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            switch (str.charAt(i)) {
                case 'S':
                    gVar.a(luaFunction);
                    continue;
                case 'l':
                    gVar.e = (eVar == null || !eVar.a.j()) ? -1 : eVar.c();
                    continue;
                case 'n':
                    if (eVar != null && !eVar.e) {
                        if (eVar.d) {
                            gVar.b = "hook";
                            gVar.a = "?";
                        } else if (eVar.c != null && eVar.c.a.j() && (a2 = DebugLib.a(eVar.c)) != null) {
                            gVar.a = a2.a;
                            gVar.b = a2.b;
                        }
                    }
                    if (gVar.b == null) {
                        gVar.b = "";
                        gVar.a = null;
                        continue;
                    } else {
                        continue;
                    }
                case 't':
                    gVar.k = eVar != null && eVar.e;
                    continue;
                case 'u':
                    if (luaFunction != null && luaFunction.j()) {
                        al alVar = luaFunction.k().a;
                        gVar.h = (short) alVar.v.length;
                        gVar.i = (short) alVar.z;
                        gVar.j = alVar.A != 0;
                        continue;
                    } else {
                        gVar.h = (short) 0;
                        gVar.j = true;
                        gVar.i = (short) 0;
                        continue;
                    }
            }
        }
        return gVar;
    }
}
