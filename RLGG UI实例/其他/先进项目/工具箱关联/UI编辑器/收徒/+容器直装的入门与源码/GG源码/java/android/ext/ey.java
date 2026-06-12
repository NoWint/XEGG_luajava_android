package android.ext;

import java.util.concurrent.Exchanger;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ey extends gr {
    final /* synthetic */ ex a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ey(ex exVar, String str) {
        super(str);
        this.a = exVar;
    }

    private void a(byte[] bArr) {
        try {
            Exchanger exchanger = this.a.f;
            while (!interrupted()) {
                try {
                    exchanger.exchange(bArr, 500L, TimeUnit.MILLISECONDS);
                    return;
                } catch (InterruptedException e) {
                }
            }
        } catch (Throwable th) {
            la.c("handleMemoryItem failed", th);
        }
    }

    private void b(byte[] bArr) {
        if (bArr[0] == 20 && bArr[1] == 0) {
            a(bArr);
        } else {
            rx.a().post(new ez(this, bArr));
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        while (!interrupted()) {
            try {
                byte[] a = inOut.a();
                ex.k = null;
                if (a != null) {
                    b(a);
                }
            } catch (Throwable th) {
                la.c("Read error", th);
                ex.k = th.toString();
                rx.a().post(new fa(this));
                return;
            }
        }
    }
}
