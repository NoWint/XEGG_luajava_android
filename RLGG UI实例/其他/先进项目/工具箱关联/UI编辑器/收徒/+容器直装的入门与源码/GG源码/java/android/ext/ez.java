package android.ext;

import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ez implements Runnable {
    final /* synthetic */ ey a;
    private final /* synthetic */ byte[] b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ez(ey eyVar, byte[] bArr) {
        this.a = eyVar;
        this.b = bArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        ex exVar;
        try {
            exVar = this.a.a;
            exVar.a(this.b);
        } catch (IOException e) {
            la.c("Failed process message: " + ((int) this.b[0]) + ' ' + this.b.length, e);
        }
    }
}
