package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class uo implements Runnable {
    private final /* synthetic */ String a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public uo(String str) {
        this.a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this) {
            uk.b(this.a.getBytes());
        }
    }
}
