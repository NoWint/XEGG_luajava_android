package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class js implements Runnable {
    final /* synthetic */ jp a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public js(jp jpVar) {
        this.a = jpVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.f();
    }
}
