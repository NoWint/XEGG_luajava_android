package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class nc implements Runnable {
    final /* synthetic */ MainService a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nc(MainService mainService) {
        this.a = mainService;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.F();
    }
}
