package luaj;

import android.ext.Tools;
import android.ext.la;
import android.ext.qk;
import android.ext.rx;
import catch_.me_.if_.you_.can_.R;
import java.io.DataInputStream;
import java.io.InputStream;

/* compiled from: src */
/* loaded from: classes.dex */
public class f {
    public final DataInputStream e;
    String f;
    private int h;
    private int i;
    private boolean j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private byte[] u = new byte[512];
    public static final e a = new k(null);
    public static String b = null;
    public static final byte[] c = {27, 76, 117, 97};
    public static final byte[] d = {25, -109, 13, 10, 26, 10};
    private static final LuaValue[] p = new LuaValue[0];
    private static final al[] q = new al[0];
    private static final l[] r = new l[0];
    private static final ao[] s = new ao[0];
    private static final int[] t = new int[0];
    public static volatile boolean g = false;

    public static void a(Globals globals) {
        globals.n = a;
    }

    int a() {
        this.e.readFully(this.u, 0, 4);
        if (this.j) {
            return (this.u[3] << 24) | ((this.u[2] & 255) << 16) | ((this.u[1] & 255) << 8) | (this.u[0] & 255);
        }
        return (this.u[0] << 24) | ((this.u[1] & 255) << 16) | ((this.u[2] & 255) << 8) | (this.u[3] & 255);
    }

    int[] b() {
        int i;
        byte b2;
        int a2 = a();
        if (a2 == 0) {
            return t;
        }
        int i2 = a2 << 2;
        if (this.u.length < i2) {
            this.u = new byte[i2];
        }
        this.e.readFully(this.u, 0, i2);
        int[] iArr = new int[a2];
        int i3 = 0;
        int i4 = 0;
        while (i4 < a2) {
            if (this.j) {
                i = (this.u[i3 + 3] << 24) | ((this.u[i3 + 2] & 255) << 16) | ((this.u[i3 + 1] & 255) << 8);
                b2 = this.u[i3 + 0];
            } else {
                i = (this.u[i3 + 0] << 24) | ((this.u[i3 + 1] & 255) << 16) | ((this.u[i3 + 2] & 255) << 8);
                b2 = this.u[i3 + 3];
            }
            iArr[i4] = i | (b2 & 255);
            i4++;
            i3 += 4;
        }
        return iArr;
    }

    long c() {
        int a2;
        int a3;
        if (this.j) {
            a3 = a();
            a2 = a();
        } else {
            a2 = a();
            a3 = a();
        }
        return (a3 & 4294967295L) | (a2 << 32);
    }

    LuaString d() {
        int c2 = this.l == 8 ? (int) c() : a();
        if (c2 == 0) {
            return null;
        }
        byte[] bArr = new byte[c2];
        this.e.readFully(bArr, 0, c2);
        return LuaString.b(bArr, 0, bArr.length - 1);
    }

    public static LuaValue a(long j) {
        if ((Long.MAX_VALUE & j) == 0) {
            return LuaValue.y;
        }
        int i = ((int) ((j >> 52) & 2047)) - 1023;
        if (i >= 0 && i < 31) {
            long j2 = 4503599627370495L & j;
            int i2 = 52 - i;
            if ((((1 << i2) - 1) & j2) == 0) {
                int i3 = (1 << i) | ((int) (j2 >> i2));
                if ((j >> 63) != 0) {
                    i3 = -i3;
                }
                return LuaLong.b(i3);
            }
        }
        return LuaValue.c(Double.longBitsToDouble(j));
    }

    LuaValue e() {
        return this.o == 1 ? LuaLong.b(a()) : a(c());
    }

    void a(al alVar) {
        int a2 = a();
        LuaValue[] luaValueArr = a2 > 0 ? new LuaValue[a2] : p;
        for (int i = 0; i < a2; i++) {
            switch (this.e.readByte()) {
                case -2:
                    luaValueArr[i] = LuaLong.b(a());
                    break;
                case -1:
                case 2:
                default:
                    throw new IllegalStateException("bad constant");
                case 0:
                    luaValueArr[i] = LuaValue.u;
                    break;
                case 1:
                    luaValueArr[i] = this.e.readUnsignedByte() != 0 ? LuaValue.v : LuaValue.w;
                    break;
                case 3:
                    luaValueArr[i] = e();
                    break;
                case 4:
                    luaValueArr[i] = d();
                    break;
            }
        }
        alVar.q = luaValueArr;
        int a3 = a();
        al[] alVarArr = a3 > 0 ? new al[a3] : q;
        for (int i2 = 0; i2 < a3; i2++) {
            alVarArr[i2] = f();
        }
        alVar.s = alVarArr;
    }

    void b(al alVar) {
        int a2 = a();
        alVar.v = a2 > 0 ? new ao[a2] : s;
        for (int i = 0; i < a2; i++) {
            alVar.v[i] = new ao(null, this.e.readByte() != 0, this.e.readByte() & 255);
        }
    }

    void c(al alVar) {
        LuaString d2 = d();
        if (d2 != null) {
            alVar.w = d2;
        }
        alVar.t = b();
        int a2 = a();
        alVar.u = a2 > 0 ? new l[a2] : r;
        for (int i = 0; i < a2; i++) {
            alVar.u[i] = new l(d(), a(), a());
        }
        int a3 = a();
        for (int i2 = 0; i2 < a3; i2++) {
            alVar.v[i2].a = d();
        }
    }

    public al f() {
        al alVar = new al();
        alVar.x = a();
        alVar.y = a();
        alVar.z = this.e.readUnsignedByte();
        alVar.A = this.e.readUnsignedByte();
        alVar.B = this.e.readUnsignedByte();
        if (alVar.B < alVar.z) {
            throw new o("Damaged script 2: .maxstacksize (" + alVar.B + ") < .numparams (" + alVar.z + ")");
        }
        alVar.r = b();
        a(alVar);
        b(alVar);
        c(alVar);
        return alVar;
    }

    public void g() {
        byte readByte;
        this.h = this.e.readByte() & 255;
        this.i = this.e.readByte() & 255;
        byte readByte2 = this.e.readByte();
        this.j = readByte2 != 0;
        this.k = this.e.readByte() & 255;
        this.l = this.e.readByte() & 255;
        this.m = this.e.readByte() & 255;
        this.n = this.e.readByte() & 255;
        this.o = this.e.readByte() & 255;
        String str = "";
        if (this.h != 82) {
            str = String.valueOf("") + qk.a((int) R.string.unknown_version) + " " + Tools.a(qk.a((int) R.string.expected_found), "'" + Integer.toHexString(82) + "'", "'" + Integer.toHexString(this.h) + "'") + "\n";
        }
        if (this.i != 0) {
            str = String.valueOf(str) + qk.a((int) R.string.unknown_format) + " " + Tools.a(qk.a((int) R.string.expected_found), "'0'", "'" + this.i + "'") + "\n";
        }
        if (readByte2 != 0 && readByte2 != 1) {
            str = String.valueOf(str) + qk.a((int) R.string.unknown_endianness) + " " + Tools.a(qk.a((int) R.string.expected_found), "'0' " + qk.a((int) R.string.or) + " '1'", "'" + (readByte2 & 255) + "'") + "\n";
        }
        if (this.k != 4) {
            str = String.valueOf(str) + Tools.a(qk.a((int) R.string.unknown_size_s), "int") + " " + Tools.a(qk.a((int) R.string.expected_found), "'4'", "'" + this.k + "'") + "\n";
        }
        if (this.l != 4) {
            str = String.valueOf(str) + Tools.a(qk.a((int) R.string.unknown_size_s), "size_t") + " " + Tools.a(qk.a((int) R.string.expected_found), "'4'", "'" + this.l + "'") + "\n";
        }
        if (this.m != 4) {
            str = String.valueOf(str) + qk.a((int) R.string.unknown_size_instr) + " " + Tools.a(qk.a((int) R.string.expected_found), "'4'", "'" + this.m + "'") + "\n";
        }
        if (this.n != 4 && this.n != 8) {
            str = String.valueOf(str) + qk.a((int) R.string.unknown_size_num) + " " + Tools.a(qk.a((int) R.string.expected_found), "'4' " + qk.a((int) R.string.or) + " '8'", "'" + this.n + "'") + "\n";
        }
        if (str.length() > 0) {
            if (!g && !rx.c()) {
                g = true;
                j jVar = new j();
                jVar.a = str.trim();
                synchronized (jVar) {
                    rx.a(new g(this, jVar));
                    try {
                        jVar.wait();
                        if (jVar.a != null) {
                            throw new o(String.valueOf(qk.a((int) R.string.invalid_header_1).trim()) + "\n\n" + str + "\n" + qk.a((int) R.string.invalid_header_3).trim());
                        }
                    } catch (InterruptedException e) {
                        la.b("Interrupted wait", e);
                        Thread.currentThread().interrupt();
                        throw new o(e);
                    }
                }
            } else {
                String str2 = "-------------------\n" + qk.a((int) R.string.invalid_header_1).trim() + "\n\n" + str + "\n" + qk.a((int) R.string.invalid_header_3).trim() + "\n-------------------\n";
                Tools.a(str2.trim(), 1);
                aj.b.println(str2);
            }
        }
        for (int i = 0; i < d.length; i++) {
            if (this.e.readByte() != d[i]) {
                throw new o("Unexpected byte in luac tail of header, index = " + i + " (" + (readByte & 255) + ", not " + (d[i] & 255) + ")");
            }
        }
    }

    public static al a(InputStream inputStream, String str) {
        String a2 = str == null ? null : a(str);
        f fVar = new f(inputStream, a2);
        fVar.g();
        if (str == null) {
            return null;
        }
        switch (fVar.o) {
            case 0:
            case 1:
            case 4:
                return a(fVar.f(), LuaString.c(a2));
            case 2:
            case 3:
            default:
                throw new o("unsupported int size: " + fVar.o);
        }
    }

    private static al a(al alVar, LuaString luaString) {
        if (alVar.w == null) {
            alVar.w = luaString;
        }
        for (int i = 0; i < alVar.s.length; i++) {
            a(alVar.s[i], alVar.w);
        }
        return alVar;
    }

    public static String a(String str) {
        if (str.startsWith("@") || str.startsWith("=")) {
            return str.substring(1);
        }
        if (str.startsWith("\u001b")) {
            return "=?";
        }
        return str;
    }

    private f(InputStream inputStream, String str) {
        this.f = str;
        this.e = new DataInputStream(inputStream);
    }
}
