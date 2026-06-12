package android.lang;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class s extends BufferedInputStream {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public s(int r2) {
        /*
            r1 = this;
            java.io.FileInputStream r0 = android.lang.UNIXProcess.c(r2)
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.lang.s.<init>(int):void");
    }

    private static byte[] a(InputStream inputStream) {
        byte[] bArr = null;
        if (inputStream == null) {
            return null;
        }
        int i = 0;
        while (true) {
            int available = inputStream.available();
            if (available <= 0) {
                break;
            }
            bArr = bArr == null ? new byte[available] : Arrays.copyOf(bArr, i + available);
            i += inputStream.read(bArr, i, available);
        }
        return (bArr == null || i == bArr.length) ? bArr : Arrays.copyOf(bArr, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a() {
        InputStream byteArrayInputStream;
        try {
            InputStream inputStream = this.in;
            if (inputStream != null) {
                byte[] a = a(inputStream);
                inputStream.close();
                if (a == null) {
                    byteArrayInputStream = q.a;
                } else {
                    byteArrayInputStream = new ByteArrayInputStream(a);
                }
                this.in = byteArrayInputStream;
                if (this.buf == null) {
                    this.in = null;
                }
            }
        } catch (IOException e) {
        }
    }
}
