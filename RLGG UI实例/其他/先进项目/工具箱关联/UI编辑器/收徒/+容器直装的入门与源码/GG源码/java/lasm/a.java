package lasm;

import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import lasm.LasmBase;
import luaj.LuaLong;
import luaj.LuaValue;
import luaj.al;

/* compiled from: src */
/* loaded from: classes.dex */
public class a extends LasmBase implements b {
    private static int[] i;
    private static int[] j;
    private static int[] k;
    public f a;
    h b;
    public i c;
    public i d;
    private int f;
    private int g;
    private final int[] h;
    private List l;
    private int[] m;
    private int n;

    public final al a() {
        switch (this.f == -1 ? m() : this.f) {
            case 74:
                a(74);
                break;
            default:
                this.h[0] = this.g;
                break;
        }
        d b = b();
        a(0);
        return b;
    }

    public final d b() {
        int i2;
        d dVar = new d();
        a(62);
        a(81);
        dVar.w = e(this.c);
        a(74);
        a(63);
        a(79);
        dVar.x = a(this.c);
        a(74);
        a(64);
        a(79);
        dVar.y = a(this.c);
        a(74);
        a(65);
        a(79);
        dVar.z = a(this.c, 255);
        a(74);
        a(66);
        a(79);
        dVar.A = a(this.c, 255);
        a(74);
        a(67);
        a(79);
        dVar.a(this.c);
        a(74);
        while (true) {
            switch (this.f == -1 ? m() : this.f) {
                case 68:
                    b(dVar);
                default:
                    this.h[1] = this.g;
                    while (true) {
                        c(dVar);
                        if (this.f == -1) {
                            i2 = m();
                            continue;
                        } else {
                            i2 = this.f;
                            continue;
                        }
                        switch (i2) {
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                            case 53:
                            case 69:
                            case 70:
                            case 76:
                                break;
                            case 50:
                            case 51:
                            case 52:
                            case 54:
                            case 55:
                            case 56:
                            case 57:
                            case 58:
                            case 59:
                            case 60:
                            case 61:
                            case 62:
                            case 63:
                            case 64:
                            case 65:
                            case 66:
                            case 67:
                            case 68:
                            case 71:
                            case 72:
                            case 73:
                            case 74:
                            case 75:
                            default:
                                this.h[2] = this.g;
                                while (true) {
                                    switch (this.f == -1 ? m() : this.f) {
                                        case 72:
                                            a(dVar);
                                        default:
                                            this.h[3] = this.g;
                                            return dVar.a();
                                    }
                                }
                        }
                    }
            }
        }
    }

    public final void a(d dVar) {
        a(72);
        i a = a(61);
        a(74);
        dVar.a(a, b());
        a(73);
        a(74);
    }

    public final LuaValue c() {
        switch (this.f == -1 ? m() : this.f) {
            case 50:
            case 56:
            case 57:
            case 58:
            case 79:
            case 80:
            case 81:
            case 84:
                return d();
            case 59:
            case 77:
                return g();
            default:
                this.h[4] = this.g;
                a(-1);
                throw new g();
        }
    }

    public final LuaValue d() {
        switch (this.f == -1 ? m() : this.f) {
            case 50:
                a(50);
                a(88);
                a(79);
                LasmBase.Const r0 = new LasmBase.Const(this.c);
                a(89);
                return r0;
            case 56:
                a(56);
                return LuaValue.u;
            case 57:
                a(57);
                return LuaValue.v;
            case 58:
                a(58);
                return LuaValue.w;
            case 79:
                a(79);
                return LuaLong.b(c(this.c));
            case 80:
                a(80);
                return d(this.c);
            case 81:
                a(81);
                return e(this.c);
            case 84:
                a(84);
                return d(this.c);
            default:
                this.h[5] = this.g;
                a(-1);
                throw new g();
        }
    }

    public final LasmBase.Internal e() {
        switch (this.f == -1 ? m() : this.f) {
            case 59:
            case 77:
                return g();
            case 78:
                return f();
            default:
                this.h[6] = this.g;
                a(-1);
                throw new g();
        }
    }

    public final LasmBase.U f() {
        a(78);
        return new LasmBase.U(this.c);
    }

    public final LasmBase.V g() {
        switch (this.f == -1 ? m() : this.f) {
            case 59:
                a(59);
                break;
            case 77:
                a(77);
                break;
            default:
                this.h[7] = this.g;
                a(-1);
                throw new g();
        }
        return new LasmBase.V(this.c);
    }

    public final i h() {
        switch (this.f == -1 ? m() : this.f) {
            case 52:
                a(52);
                i a = a(60);
                a(89);
                return a;
            case 76:
                return a(76);
            default:
                this.h[8] = this.g;
                a(-1);
                throw new g();
        }
    }

    public final void b(d dVar) {
        i a;
        a(68);
        LasmBase.Internal e = e();
        switch (this.f == -1 ? m() : this.f) {
            case 56:
                a = a(56);
                break;
            case 81:
                a = a(81);
                break;
            default:
                this.h[9] = this.g;
                a(-1);
                throw new g();
        }
        a(74);
        dVar.a(e, a);
    }

    public final void c(d dVar) {
        i a;
        LuaValue g;
        i a2;
        LuaValue luaValue;
        LasmBase.V v = null;
        LuaValue luaValue2 = null;
        i iVar = null;
        while (true) {
            switch (this.f == -1 ? m() : this.f) {
                case 69:
                case 70:
                case 76:
                    switch (this.f == -1 ? m() : this.f) {
                        case 69:
                            a(69);
                            a(79);
                            dVar.c(this.c);
                            a(74);
                            while (true) {
                                switch (this.f == -1 ? m() : this.f) {
                                    case 71:
                                        a(71);
                                        LasmBase.V g2 = g();
                                        a(81);
                                        dVar.a(g2, this.c, 0);
                                        a(74);
                                    default:
                                        this.h[13] = this.g;
                                        break;
                                }
                            }
                        case 70:
                            a(70);
                            LasmBase.V g3 = g();
                            a(81);
                            dVar.a(g3, this.c);
                            a(74);
                            while (true) {
                                switch (this.f == -1 ? m() : this.f) {
                                    case 71:
                                        a(71);
                                        LasmBase.V g4 = g();
                                        a(81);
                                        dVar.a(g4, this.c, 0);
                                        a(74);
                                    default:
                                        this.h[12] = this.g;
                                        break;
                                }
                            }
                        case 76:
                            a(76);
                            dVar.b(this.c);
                            a(74);
                            while (true) {
                                switch (this.f == -1 ? m() : this.f) {
                                    case 71:
                                        a(71);
                                        LasmBase.V g5 = g();
                                        a(81);
                                        dVar.a(g5, this.c, 0);
                                        a(74);
                                    default:
                                        this.h[11] = this.g;
                                        break;
                                }
                            }
                        default:
                            this.h[14] = this.g;
                            a(-1);
                            throw new g();
                    }
                default:
                    this.h[10] = this.g;
                    switch (this.f == -1 ? m() : this.f) {
                        case 5:
                        case 23:
                        case 24:
                        case 25:
                        case 44:
                            switch (this.f == -1 ? m() : this.f) {
                                case 5:
                                    a(5);
                                    break;
                                case 23:
                                    a(23);
                                    break;
                                case 24:
                                    a(24);
                                    break;
                                case 25:
                                    a(25);
                                    break;
                                case 44:
                                    a(44);
                                    break;
                                default:
                                    this.h[20] = this.g;
                                    a(-1);
                                    throw new g();
                            }
                            a = this.c;
                            g = g();
                            luaValue2 = g();
                            a2 = null;
                            luaValue = null;
                            break;
                        case 6:
                            a = a(6);
                            g = g();
                            luaValue2 = d();
                            a2 = null;
                            luaValue = null;
                            break;
                        case 7:
                            a = a(7);
                            g = g();
                            a2 = a(79);
                            switch (this.f == -1 ? m() : this.f) {
                                case 55:
                                    iVar = a(55);
                                    luaValue = null;
                                    break;
                                default:
                                    this.h[15] = this.g;
                                    luaValue = null;
                                    break;
                            }
                        case 8:
                        case 38:
                            switch (this.f == -1 ? m() : this.f) {
                                case 8:
                                    a(8);
                                    break;
                                case 38:
                                    a(38);
                                    break;
                                default:
                                    this.h[16] = this.g;
                                    a(-1);
                                    throw new g();
                            }
                            i iVar2 = this.c;
                            g = g();
                            a(75);
                            luaValue2 = g();
                            a((LasmBase.V) g, (LasmBase.V) luaValue2, iVar2.a == 38 ? 2 : 0);
                            a2 = null;
                            luaValue = null;
                            a = iVar2;
                            break;
                        case 9:
                            a = a(9);
                            g = g();
                            luaValue2 = f();
                            a2 = null;
                            luaValue = null;
                            break;
                        case 10:
                            a = a(10);
                            g = g();
                            luaValue2 = f();
                            luaValue = c();
                            a2 = null;
                            break;
                        case 11:
                        case 16:
                            switch (this.f == -1 ? m() : this.f) {
                                case 11:
                                    a(11);
                                    break;
                                case 16:
                                    a(16);
                                    break;
                                default:
                                    this.h[17] = this.g;
                                    a(-1);
                                    throw new g();
                            }
                            a = this.c;
                            g = g();
                            luaValue2 = g();
                            luaValue = c();
                            a2 = null;
                            break;
                        case 12:
                            a = a(12);
                            g = f();
                            luaValue2 = c();
                            luaValue = c();
                            a2 = null;
                            break;
                        case 13:
                            a = a(13);
                            g = g();
                            luaValue2 = f();
                            a2 = null;
                            luaValue = null;
                            break;
                        case 14:
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 43:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                            switch (this.f == -1 ? m() : this.f) {
                                case 14:
                                    a(14);
                                    break;
                                case 17:
                                    a(17);
                                    break;
                                case 18:
                                    a(18);
                                    break;
                                case 19:
                                    a(19);
                                    break;
                                case 20:
                                    a(20);
                                    break;
                                case 21:
                                    a(21);
                                    break;
                                case 22:
                                    a(22);
                                    break;
                                case 43:
                                    a(43);
                                    break;
                                case 45:
                                    a(45);
                                    break;
                                case 46:
                                    a(46);
                                    break;
                                case 47:
                                    a(47);
                                    break;
                                case 48:
                                    a(48);
                                    break;
                                case 49:
                                    a(49);
                                    break;
                                default:
                                    this.h[19] = this.g;
                                    a(-1);
                                    throw new g();
                            }
                            a = this.c;
                            g = g();
                            luaValue2 = c();
                            luaValue = c();
                            a2 = null;
                            break;
                        case 15:
                            a = a(15);
                            g = g();
                            a2 = a(79);
                            iVar = a(79);
                            luaValue = null;
                            break;
                        case 26:
                            i a3 = a(26);
                            g = g();
                            luaValue2 = g();
                            a(75);
                            luaValue = g();
                            a((LasmBase.V) luaValue2, (LasmBase.V) luaValue, 0);
                            a2 = null;
                            a = a3;
                            break;
                        case 27:
                            a = a(27);
                            switch (this.f == -1 ? m() : this.f) {
                                case 59:
                                case 77:
                                    v = g();
                                    break;
                                default:
                                    this.h[21] = this.g;
                                    break;
                            }
                            a2 = h();
                            luaValue = null;
                            g = v;
                            break;
                        case 28:
                        case 29:
                        case 30:
                            switch (this.f == -1 ? m() : this.f) {
                                case 28:
                                    a(28);
                                    break;
                                case 29:
                                    a(29);
                                    break;
                                case 30:
                                    a(30);
                                    break;
                                default:
                                    this.h[23] = this.g;
                                    a(-1);
                                    throw new g();
                            }
                            a = this.c;
                            a2 = a(79);
                            g = c();
                            luaValue2 = c();
                            luaValue = null;
                            break;
                        case 31:
                            a = a(31);
                            g = g();
                            a2 = a(79);
                            luaValue = null;
                            break;
                        case 32:
                            a = a(32);
                            g = g();
                            luaValue2 = g();
                            a2 = a(79);
                            luaValue = null;
                            break;
                        case 33:
                            i a4 = a(33);
                            g = g();
                            switch (this.f == -1 ? m() : this.f) {
                                case 75:
                                    a(75);
                                    luaValue2 = g();
                                    a((LasmBase.V) g, (LasmBase.V) luaValue2, 0);
                                    break;
                                default:
                                    this.h[24] = this.g;
                                    break;
                            }
                            switch (this.f == -1 ? m() : this.f) {
                                case 54:
                                case 59:
                                case 77:
                                    switch (this.f == -1 ? m() : this.f) {
                                        case 54:
                                            a2 = a(54);
                                            luaValue = null;
                                            a = a4;
                                            break;
                                        case 59:
                                        case 77:
                                            a((LasmBase.V) g, g());
                                            a(75);
                                            luaValue = g();
                                            a((LasmBase.V) g, (LasmBase.V) luaValue, 0);
                                            a2 = null;
                                            a = a4;
                                            break;
                                        default:
                                            this.h[25] = this.g;
                                            a(-1);
                                            throw new g();
                                    }
                                default:
                                    this.h[26] = this.g;
                                    a2 = null;
                                    luaValue = null;
                                    a = a4;
                                    break;
                            }
                        case 34:
                        case 42:
                            switch (this.f == -1 ? m() : this.f) {
                                case 34:
                                    a(34);
                                    break;
                                case 42:
                                    a(42);
                                    break;
                                default:
                                    this.h[27] = this.g;
                                    a(-1);
                                    throw new g();
                            }
                            i iVar3 = this.c;
                            g = g();
                            switch (this.f == -1 ? m() : this.f) {
                                case 75:
                                    a(75);
                                    luaValue2 = g();
                                    a((LasmBase.V) g, (LasmBase.V) luaValue2, 0);
                                    a2 = null;
                                    luaValue = null;
                                    a = iVar3;
                                    break;
                                default:
                                    this.h[28] = this.g;
                                    a2 = null;
                                    luaValue = null;
                                    a = iVar3;
                                    break;
                            }
                        case 35:
                            i a5 = a(35);
                            switch (this.f == -1 ? m() : this.f) {
                                case 59:
                                case 77:
                                    g = g();
                                    switch (this.f == -1 ? m() : this.f) {
                                        case 75:
                                            a(75);
                                            luaValue2 = g();
                                            a((LasmBase.V) g, (LasmBase.V) luaValue2, 0);
                                            a2 = null;
                                            luaValue = null;
                                            a = a5;
                                            break;
                                        default:
                                            this.h[29] = this.g;
                                            a2 = null;
                                            luaValue = null;
                                            a = a5;
                                            break;
                                    }
                                default:
                                    this.h[30] = this.g;
                                    a2 = null;
                                    luaValue = null;
                                    g = null;
                                    a = a5;
                                    break;
                            }
                        case 36:
                        case 37:
                        case 39:
                            switch (this.f == -1 ? m() : this.f) {
                                case 36:
                                    a(36);
                                    break;
                                case 37:
                                    a(37);
                                    break;
                                case 38:
                                default:
                                    this.h[22] = this.g;
                                    a(-1);
                                    throw new g();
                                case 39:
                                    a(39);
                                    break;
                            }
                            a = this.c;
                            g = g();
                            a2 = h();
                            luaValue = null;
                            break;
                        case 40:
                            i a6 = a(40);
                            g = g();
                            switch (this.f == -1 ? m() : this.f) {
                                case 75:
                                    a(75);
                                    luaValue2 = g();
                                    a((LasmBase.V) g, (LasmBase.V) luaValue2, 1);
                                    break;
                                default:
                                    this.h[18] = this.g;
                                    break;
                            }
                            a2 = a(79);
                            luaValue = null;
                            a = a6;
                            break;
                        case 41:
                            a = a(41);
                            g = g();
                            switch (this.f == -1 ? m() : this.f) {
                                case 51:
                                    a(51);
                                    a2 = a(79);
                                    a(89);
                                    luaValue = null;
                                    break;
                                case 61:
                                    a2 = a(61);
                                    luaValue = null;
                                    break;
                                default:
                                    this.h[31] = this.g;
                                    a(-1);
                                    throw new g();
                            }
                        case 50:
                        case 51:
                        case 52:
                        default:
                            this.h[32] = this.g;
                            a(-1);
                            throw new g();
                        case 53:
                            a(53);
                            a(88);
                            a = a(79);
                            a(89);
                            a2 = a(80);
                            luaValue = null;
                            g = null;
                            break;
                    }
                    a(74);
                    while (true) {
                        switch (this.f == -1 ? m() : this.f) {
                            case 71:
                                a(71);
                                LasmBase.V g6 = g();
                                a(81);
                                dVar.a(g6, this.c, 1);
                                a(74);
                            default:
                                this.h[33] = this.g;
                                dVar.a(a, g, luaValue2, luaValue, a2, iVar);
                                return;
                        }
                    }
            }
        }
    }

    static {
        j();
        k();
        l();
    }

    private static void j() {
        int[] iArr = new int[34];
        iArr[2] = -32;
        iArr[16] = 256;
        iArr[17] = 67584;
        iArr[19] = 8273920;
        iArr[20] = 58720288;
        iArr[23] = 1879048192;
        iArr[32] = -32;
        i = iArr;
    }

    private static void k() {
        j = new int[]{0, 0, 2359295, 0, 251920384, 117702656, 134217728, 134217728, 1048576, 16777216, 0, 0, 0, 0, 0, 8388608, 64, 0, 0, 256000, 4096, 134217728, 176, 0, 0, 138412032, 138412032, 1028, 0, 0, 134217728, 537395200, 2359295};
    }

    private static void l() {
        k = new int[]{1024, 16, 4192, 256, 1286144, 1277952, 24576, 8192, 4096, 131072, 4192, 128, 128, 128, 4192, 0, 0, 0, 2048, 0, 0, 8192, 0, 0, 2048, 8192, 8192, 0, 2048, 2048, 8192, 0, 0, 128};
    }

    public a(InputStream inputStream) {
        this(inputStream, null);
    }

    public a(InputStream inputStream, String str) {
        this.h = new int[34];
        this.l = new ArrayList();
        this.n = -1;
        try {
            this.b = new h(inputStream, str, 1, 1);
            this.a = new f(this.b);
            this.c = new i();
            this.f = -1;
            this.g = 0;
            for (int i2 = 0; i2 < 34; i2++) {
                this.h[i2] = -1;
            }
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    private i a(int i2) {
        i iVar = this.c;
        if (iVar.g != null) {
            this.c = this.c.g;
        } else {
            i iVar2 = this.c;
            i b = this.a.b();
            iVar2.g = b;
            this.c = b;
        }
        this.f = -1;
        if (this.c.a == i2) {
            this.g++;
            return this.c;
        }
        this.c = iVar;
        this.n = i2;
        throw i();
    }

    private int m() {
        i iVar = this.c.g;
        this.d = iVar;
        if (iVar == null) {
            i iVar2 = this.c;
            i b = this.a.b();
            iVar2.g = b;
            int i2 = b.a;
            this.f = i2;
            return i2;
        }
        int i3 = this.d.a;
        this.f = i3;
        return i3;
    }

    public g i() {
        int i2 = 0;
        this.l.clear();
        boolean[] zArr = new boolean[90];
        if (this.n >= 0) {
            zArr[this.n] = true;
            this.n = -1;
        }
        for (int i3 = 0; i3 < 34; i3++) {
            if (this.h[i3] == this.g) {
                for (int i4 = 0; i4 < 32; i4++) {
                    if ((i[i3] & (1 << i4)) != 0) {
                        zArr[i4] = true;
                    }
                    if ((j[i3] & (1 << i4)) != 0) {
                        zArr[i4 + 32] = true;
                    }
                    if ((k[i3] & (1 << i4)) != 0) {
                        zArr[i4 + 64] = true;
                    }
                }
            }
        }
        for (int i5 = 0; i5 < 90; i5++) {
            if (zArr[i5]) {
                this.m = new int[1];
                this.m[0] = i5;
                this.l.add(this.m);
            }
        }
        int[][] iArr = new int[this.l.size()];
        while (true) {
            int i6 = i2;
            if (i6 < this.l.size()) {
                iArr[i6] = (int[]) this.l.get(i6);
                i2 = i6 + 1;
            } else {
                return new g(this.c, iArr, e);
            }
        }
    }
}
