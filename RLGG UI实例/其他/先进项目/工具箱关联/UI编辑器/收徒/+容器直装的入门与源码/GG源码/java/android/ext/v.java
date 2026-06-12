package android.ext;

import java.io.OutputStream;

/* compiled from: src */
/* loaded from: classes.dex */
class v extends OutputStream {
    static v b;
    int a = 0;
    private OutputStream c;

    public v(OutputStream outputStream) {
        this.c = outputStream;
        b = this;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.c.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        this.c.flush();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.c.write(bArr);
        this.a += bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.c.write(bArr, i, i2);
        this.a += i2;
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.c.write(i);
        this.a++;
    }

    public boolean equals(Object obj) {
        return this.c.equals(obj);
    }

    public int hashCode() {
        return this.c.hashCode();
    }

    public String toString() {
        return this.c.toString();
    }
}
