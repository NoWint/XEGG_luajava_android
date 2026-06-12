package android.ext;

import java.io.RandomAccessFile;
import java.nio.ByteBuffer;

/* compiled from: src */
/* loaded from: classes.dex */
class kn {
    final /* synthetic */ jp a;
    private RandomAccessFile b;
    private ByteBuffer c;
    private final boolean d;

    private kn(jp jpVar, int i) {
        this.a = jpVar;
        this.b = null;
        this.c = null;
        this.d = jp.c[i];
        if (this.d) {
            if (jp.b == null || jp.b[i] == null) {
                throw new ki("memCache is null 3: " + i + ' ' + jp.b);
            }
            this.c = ByteBuffer.wrap(jp.b[i]);
            return;
        }
        this.b = jpVar.a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ kn(jp jpVar, int i, kn knVar) {
        this(jpVar, i);
    }

    public void a(long j) {
        if (this.d) {
            this.c.position((int) j);
        } else {
            this.b.seek(j);
        }
    }

    public void a(int i) {
        if (this.d) {
            this.c.position(this.c.position() + i);
        } else {
            this.b.skipBytes(i);
        }
    }

    public int a(byte[] bArr, int i, int i2) {
        if (this.d) {
            int min = Math.min(i2, this.c.remaining());
            if (min != 0) {
                this.c.get(bArr, i, min);
                return min;
            }
            return -1;
        }
        return this.b.read(bArr, i, i2);
    }

    public void a(byte[] bArr) {
        if (this.d) {
            this.c.put(bArr);
        } else {
            this.b.write(bArr);
        }
    }

    public void b(byte[] bArr, int i, int i2) {
        if (this.d) {
            this.c.put(bArr, i, i2);
        } else {
            this.b.write(bArr, i, i2);
        }
    }

    public int b(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public void a() {
    }
}
