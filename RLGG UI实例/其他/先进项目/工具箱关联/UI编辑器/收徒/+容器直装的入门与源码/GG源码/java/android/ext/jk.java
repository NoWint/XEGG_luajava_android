package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class jk implements Runnable {
    final /* synthetic */ HotPoint a;
    private final /* synthetic */ int b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jk(HotPoint hotPoint, int i) {
        this.a = hotPoint;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i = 8;
        if (this.b != -1) {
            i = this.b;
        } else if (this.a.n.getVisibility() == 8) {
            i = 0;
        }
        this.a.n.setVisibility(i);
        this.a.o.setVisibility(i);
        this.a.setSpeedPanelVisibility(true);
        this.a.c();
        if (i == 0 && this.a.e >= 0) {
            this.a.a(true);
        }
    }
}
