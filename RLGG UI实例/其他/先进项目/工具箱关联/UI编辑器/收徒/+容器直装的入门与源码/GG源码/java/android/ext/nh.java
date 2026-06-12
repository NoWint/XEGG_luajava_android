package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class nh implements Runnable {
    final /* synthetic */ MainService a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nh(MainService mainService) {
        this.a = mainService;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a.p == null) {
            this.a.M();
        }
    }
}
