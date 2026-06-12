package luaj.a;

import java.io.DataOutputStream;
import java.io.OutputStream;
import luaj.LuaString;
import luaj.LuaValue;
import luaj.aj;
import luaj.al;
import luaj.ao;

/* compiled from: src */
/* loaded from: classes.dex */
public class b {
    DataOutputStream a;
    boolean b;
    boolean c;
    private boolean e = true;
    private int f = 0;
    private int g = 8;
    int d = 0;

    public b(OutputStream outputStream, boolean z, boolean z2) {
        this.a = new DataOutputStream(outputStream);
        this.b = z;
        this.c = z2;
    }

    void a(int i) {
        this.a.write(i);
    }

    void b(int i) {
        DataOutputStream dataOutputStream = this.a;
        if (this.e) {
            i = Integer.reverseBytes(i);
        }
        dataOutputStream.writeInt(i);
    }

    void a(LuaString luaString) {
        if (luaString == null) {
            luaString = LuaValue.m("");
        }
        int p = luaString.K().p();
        b(p + 1);
        luaString.a(this.a, 0, p);
        this.a.write(0);
    }

    void a(double d) {
        long doubleToLongBits = Double.doubleToLongBits(d);
        if (this.e) {
            doubleToLongBits = Long.reverseBytes(doubleToLongBits);
        }
        this.a.writeLong(doubleToLongBits);
    }

    void a(al alVar) {
        int[] iArr = alVar.r;
        int length = iArr.length;
        b(length);
        if (this.c) {
            iArr = new int[length];
        }
        if (this.c) {
            aj.a(alVar, iArr);
        }
        for (int i = 0; i < length; i++) {
            b(iArr[i]);
        }
    }

    void b(al alVar) {
        DataOutputStream dataOutputStream = this.a;
        LuaValue[] luaValueArr = alVar.q;
        b(luaValueArr.length);
        for (LuaValue luaValue : luaValueArr) {
            switch (luaValue.e_()) {
                case 0:
                    dataOutputStream.write(0);
                    break;
                case 1:
                    dataOutputStream.write(1);
                    a(luaValue.i_() ? 1 : 0);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("bad type for " + luaValue);
                case 3:
                    switch (this.f) {
                        case 0:
                            dataOutputStream.write(3);
                            a(luaValue.o());
                            continue;
                        case 1:
                            if (!luaValue.h_()) {
                                throw new IllegalArgumentException("not an integer: " + luaValue);
                            }
                            dataOutputStream.write(3);
                            b(luaValue.p());
                            continue;
                        case 2:
                        case 3:
                        default:
                            throw new IllegalArgumentException("number format not supported: " + this.f);
                        case 4:
                            if (luaValue.h_()) {
                                dataOutputStream.write(-2);
                                b(luaValue.p());
                                continue;
                            } else {
                                dataOutputStream.write(3);
                                a(luaValue.o());
                                break;
                            }
                    }
                case 4:
                    dataOutputStream.write(4);
                    a((LuaString) luaValue);
                    break;
            }
        }
        int length = alVar.s.length;
        b(length);
        for (int i = 0; i < length; i++) {
            b(alVar.s[i], alVar.w);
        }
    }

    void c(al alVar) {
        DataOutputStream dataOutputStream = this.a;
        ao[] aoVarArr = alVar.v;
        b(aoVarArr.length);
        for (ao aoVar : aoVarArr) {
            dataOutputStream.writeByte(aoVar.b ? 1 : 0);
            dataOutputStream.writeByte(aoVar.c);
        }
    }

    void a(al alVar, LuaString luaString) {
        if (this.b || (luaString != null && luaString.b((LuaValue) alVar.w))) {
            b(0);
        } else {
            a(alVar.w);
        }
        int[] iArr = alVar.t;
        int length = this.b ? 0 : iArr.length;
        b(length);
        for (int i = 0; i < length; i++) {
            b(iArr[i]);
        }
        luaj.l[] lVarArr = alVar.u;
        int length2 = this.b ? 0 : lVarArr.length;
        b(length2);
        for (int i2 = 0; i2 < length2; i2++) {
            luaj.l lVar = lVarArr[i2];
            a(lVar.a);
            b(lVar.b);
            b(lVar.c);
        }
        ao[] aoVarArr = alVar.v;
        int length3 = this.b ? 0 : aoVarArr.length;
        b(length3);
        for (int i3 = 0; i3 < length3; i3++) {
            a(aoVarArr[i3].a);
        }
    }

    void b(al alVar, LuaString luaString) {
        b(alVar.x);
        b(alVar.y);
        a(alVar.z);
        a(alVar.A);
        a(alVar.B);
        a(alVar);
        b(alVar);
        c(alVar);
        a(alVar, luaString);
    }

    void a() {
        DataOutputStream dataOutputStream = this.a;
        dataOutputStream.write(luaj.f.c);
        dataOutputStream.write(82);
        dataOutputStream.write(0);
        dataOutputStream.write(this.e ? 1 : 0);
        dataOutputStream.write(4);
        dataOutputStream.write(4);
        dataOutputStream.write(4);
        dataOutputStream.write(this.g);
        dataOutputStream.write(this.f);
        dataOutputStream.write(luaj.f.d);
    }

    public static int a(al alVar, OutputStream outputStream, boolean z, boolean z2) {
        b bVar = new b(outputStream, z, z2);
        bVar.a();
        bVar.b(alVar, null);
        return bVar.d;
    }
}
