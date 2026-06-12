package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class sa implements Runnable {
    private final /* synthetic */ long a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sa(long j) {
        this.a = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        MainService.instance.k.a(this.a);
    }
}
