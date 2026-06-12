package android.ext;

import java.io.ByteArrayOutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class jt extends ByteArrayOutputStream {
    final /* synthetic */ jp a;
    private final /* synthetic */ int b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jt(jp jpVar, int i, int i2) {
        super(i);
        this.a = jpVar;
        this.b = i2;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        byte[][] bArr = jp.b;
        if (bArr != null) {
            byte[] byteArray = toByteArray();
            if (byteArray == null) {
                la.a(new RuntimeException("toByteArray return null"));
            }
            bArr[this.b] = byteArray;
        }
    }
}
