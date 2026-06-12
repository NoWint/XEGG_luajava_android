package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class jm implements Runnable {
    final /* synthetic */ HotPoint a;
    private final /* synthetic */ String b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jm(HotPoint hotPoint, String str) {
        this.a = hotPoint;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.m.setText(this.b);
        this.a.c();
    }
}
