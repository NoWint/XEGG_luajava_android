package android.lang;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class t extends BufferedOutputStream {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public t(int r2) {
        /*
            r1 = this;
            java.io.FileOutputStream r0 = android.lang.UNIXProcess.d(r2)
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.lang.t.<init>(int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a() {
        OutputStream outputStream = this.out;
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e) {
            }
            this.out = r.a;
        }
    }
}
