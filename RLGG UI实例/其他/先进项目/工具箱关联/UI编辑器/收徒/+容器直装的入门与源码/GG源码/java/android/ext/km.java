package android.ext;

import java.io.OutputStream;
import java.io.RandomAccessFile;

/* compiled from: src */
/* loaded from: classes.dex */
class km extends OutputStream {
    private final RandomAccessFile a;

    private km(RandomAccessFile randomAccessFile) {
        this.a = randomAccessFile;
        randomAccessFile.seek(0L);
        randomAccessFile.setLength(0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ km(RandomAccessFile randomAccessFile, km kmVar) {
        this(randomAccessFile);
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.a.write(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.a.write(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.a.write(bArr, i, i2);
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
