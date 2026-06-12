package android.ext;

import java.io.InputStream;

/* compiled from: src */
/* loaded from: classes.dex */
class ue extends InputStream {
    private final InputStream a;
    private int b = 0;
    private int c = 0;
    private final byte[] d = new byte[512];

    public ue(InputStream inputStream) {
        this.a = inputStream;
    }

    @Override // java.io.InputStream
    public int read() {
        int read = this.a.read();
        if (read > 0) {
            this.b++;
            this.d[this.c] = (byte) read;
            this.c = (this.c + 1) % this.d.length;
        }
        return read;
    }

    public String a() {
        String str = "buf[" + this.b + "]: ";
        if (this.b <= this.d.length) {
            return String.valueOf(str) + new String(this.d, 0, this.c);
        }
        return String.valueOf(str) + new String(this.d, this.c, this.d.length - this.c) + new String(this.d, 0, this.c);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public boolean equals(Object obj) {
        return this.a.equals(obj);
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        return this.a.skip(j);
    }

    @Override // java.io.InputStream
    public int available() {
        return this.a.available();
    }

    public String toString() {
        return this.a.toString();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.a.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.a.mark(i);
    }

    @Override // java.io.InputStream
    public void reset() {
        this.a.reset();
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.a.markSupported();
    }
}
