package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ml implements Runnable {
    final /* synthetic */ MainService a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ml(MainService mainService) {
        this.a = mainService;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.i = null;
        this.a.Z.e();
    }
}
