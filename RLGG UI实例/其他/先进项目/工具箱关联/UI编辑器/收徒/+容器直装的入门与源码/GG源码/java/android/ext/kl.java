package android.ext;

import java.io.InputStream;
import java.io.RandomAccessFile;

/* compiled from: src */
/* loaded from: classes.dex */
class kl extends InputStream {
    private final RandomAccessFile a;

    private kl(RandomAccessFile randomAccessFile) {
        this.a = randomAccessFile;
        randomAccessFile.seek(0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ kl(RandomAccessFile randomAccessFile, kl klVar) {
        this(randomAccessFile);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return this.a.read(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        return this.a.read(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        RandomAccessFile randomAccessFile = this.a;
        randomAccessFile.seek(randomAccessFile.getFilePointer() + j);
        return j;
    }

    @Override // java.io.InputStream
    public int available() {
        int length = (int) (this.a.length() - this.a.getFilePointer());
        if (length > 0) {
            return length;
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
    }

    @Override // java.io.InputStream
    public synchronized void reset() {
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public int read() {
        return this.a.read();
    }
}
