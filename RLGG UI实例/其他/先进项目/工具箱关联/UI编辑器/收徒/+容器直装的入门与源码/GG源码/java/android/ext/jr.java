package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class jr implements Runnable {
    final /* synthetic */ jp a;
    private final /* synthetic */ int b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jr(jp jpVar, int i) {
        this.a = jpVar;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        jp.g.g &= this.b ^ (-1);
    }
}
