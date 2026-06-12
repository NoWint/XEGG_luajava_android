package android.ext;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: src */
/* loaded from: classes.dex */
public class bk {
    private final ByteBuffer a;
    private final byte[] b;

    public bk(byte[] bArr) {
        this.b = bArr;
        this.a = ByteBuffer.wrap(bArr);
        this.a.order(ByteOrder.LITTLE_ENDIAN);
    }

    public byte a() {
        return this.a.get();
    }

    public int b() {
        return this.a.getInt();
    }

    public long c() {
        return InOut.a ? this.a.getLong() : b() & 4294967295L;
    }

    public long d() {
        return this.a.getLong();
    }

    public void a(byte[] bArr) {
        this.a.get(bArr);
    }

    public void a(byte[] bArr, int i, int i2) {
        this.a.get(bArr, i, i2);
    }

    public String a(int i, String str) {
        boolean z = false;
        if (i == 0) {
            return "";
        }
        int position = this.a.position();
        String str2 = null;
        byte[] bArr = this.b;
        if (str != null && str.length() == i) {
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    z = true;
                    break;
                } else if (str.charAt(i2) != bArr[position + i2]) {
                    break;
                } else {
                    i2++;
                }
            }
            if (z) {
                str2 = str;
            }
        }
        if (str2 == null) {
            str2 = new String(bArr, position, i);
        }
        this.a.position(position + i);
        return str2;
    }

    public void a(int i) {
        this.a.position(this.a.position() + i);
    }

    public int e() {
        return this.a.capacity();
    }

    public int f() {
        return this.a.position();
    }

    public void g() {
        this.a.position(2);
    }

    public byte h() {
        int position = this.a.position();
        this.a.position(1);
        byte b = -1;
        try {
            b = a();
        } catch (IOException e) {
            la.c("getSeq fail", e);
        }
        this.a.position(position);
        return b;
    }
}
