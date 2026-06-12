package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class gg implements Runnable {
    final /* synthetic */ ex a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gg(ex exVar) {
        this.a = exVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        MainService.instance.a(MainService.instance.S);
    }
}
