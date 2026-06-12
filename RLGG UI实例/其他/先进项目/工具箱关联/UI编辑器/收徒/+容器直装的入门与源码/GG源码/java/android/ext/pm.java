package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class pm implements Runnable {
    final /* synthetic */ pl a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pm(pl plVar) {
        this.a = plVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.c();
    }
}
