package android.ext;

import java.io.OutputStream;

/* compiled from: src */
/* loaded from: classes.dex */
class jo extends OutputStream {
    private final OutputStream a;

    public jo(OutputStream outputStream) {
        this.a = outputStream;
    }

    private int a(int i) {
        if (i >= 0 && i <= 15) {
            return i + 97;
        }
        return i;
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.a.write(a(i & 15));
        this.a.write(a((i & 240) >> 4));
    }

    private byte[] a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[(i2 * 2) + 4];
        bArr2[0] = 59;
        bArr2[1] = 59;
        for (int i3 = 0; i3 < i2; i3++) {
            byte b = bArr[i + i3];
            bArr2[(i3 * 2) + 2 + 0] = (byte) a(b & 15);
            bArr2[(i3 * 2) + 2 + 1] = (byte) a((b & 240) >> 4);
        }
        bArr2[(i2 * 2) + 2 + 0] = 10;
        bArr2[(i2 * 2) + 2 + 1] = 10;
        return bArr2;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.a.write(a(bArr, 0, bArr.length));
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.a.write(a(bArr, i, i2));
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        this.a.flush();
    }
}
