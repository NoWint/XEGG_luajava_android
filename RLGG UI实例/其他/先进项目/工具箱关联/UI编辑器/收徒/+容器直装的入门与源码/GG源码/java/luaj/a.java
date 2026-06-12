package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
public final class a {
    private static final byte[] a = new byte[0];
    private byte[] b;
    private int c;
    private int d;
    private LuaValue e;

    public a() {
        this(64);
    }

    public a(int i) {
        this.b = new byte[i];
        this.c = 0;
        this.d = 0;
        this.e = null;
    }

    public a(LuaValue luaValue) {
        this.b = a;
        this.d = 0;
        this.c = 0;
        this.e = luaValue;
    }

    public LuaValue a() {
        return this.e != null ? this.e : b();
    }

    public a a(LuaValue luaValue) {
        this.b = a;
        this.c = 0;
        this.d = 0;
        this.e = luaValue;
        return this;
    }

    public final LuaString b() {
        b(this.c, 0);
        return LuaString.a(this.b, this.d, this.c);
    }

    public String c() {
        return a().d_();
    }

    public String toString() {
        return c();
    }

    public final a a(byte b) {
        a(0, 1);
        byte[] bArr = this.b;
        int i = this.d;
        int i2 = this.c;
        this.c = i2 + 1;
        bArr[i + i2] = b;
        return this;
    }

    public final a a(int i) {
        int i2;
        int i3;
        if (i < 0 || i > 1114111) {
            throw new IllegalArgumentException("Code point (" + i + ") out of range [0; 1114111]");
        }
        if (i <= 127) {
            i2 = 1;
            i3 = 0;
        } else if (i <= 2047) {
            i2 = 2;
            i3 = 192;
        } else if (i <= 65535) {
            i2 = 3;
            i3 = 224;
        } else {
            i2 = 4;
            i3 = 240;
        }
        a(0, i2);
        int i4 = this.c + this.d;
        byte[] bArr = this.b;
        for (int i5 = i2 - 1; i5 > 0; i5--) {
            bArr[i4 + i5] = (byte) ((i & 63) | 128);
            i >>= 6;
        }
        bArr[i4] = (byte) (i3 | i);
        this.c += i2;
        return this;
    }

    public final a b(LuaValue luaValue) {
        a(luaValue.t());
        return this;
    }

    public final a a(LuaString luaString) {
        int i = luaString.d;
        a(0, i);
        luaString.a(0, this.b, this.d + this.c, i);
        this.c = i + this.c;
        return this;
    }

    public final a a(String str) {
        byte[] bytes = str.getBytes();
        return a(bytes, 0, bytes.length);
    }

    public final a a(byte[] bArr, int i, int i2) {
        a(0, i2);
        System.arraycopy(bArr, i, this.b, this.d + this.c, i2);
        this.c += i2;
        return this;
    }

    public a c(LuaValue luaValue) {
        return a(luaValue.u(a()));
    }

    public final void a(int i, int i2) {
        if (this.e != null) {
            LuaString t = this.e.t();
            this.e = null;
            this.c = t.d;
            this.d = i;
            this.b = new byte[this.c + i + i2];
            System.arraycopy(t.b, t.c, this.b, this.d, this.c);
        } else if (this.d + this.c + i2 > this.b.length || this.d < i) {
            int i3 = this.c + i + i2;
            if (i3 < 32) {
                i3 = 32;
            } else if (i3 < this.c * 2) {
                i3 = this.c * 2;
            }
            b(i3, i == 0 ? 0 : (i3 - this.c) - i2);
        }
    }

    private final void b(int i, int i2) {
        if (i != this.b.length) {
            byte[] bArr = new byte[i];
            System.arraycopy(this.b, this.d, bArr, i2, this.c);
            this.b = bArr;
            this.d = i2;
        }
    }
}
