package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class nf implements Runnable {
    final /* synthetic */ MainService a;
    private final /* synthetic */ String b;
    private final /* synthetic */ CharSequence c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nf(MainService mainService, String str, CharSequence charSequence) {
        this.a = mainService;
        this.b = str;
        this.c = charSequence;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.b != null) {
            this.a.A.setText(this.b);
        }
        if (this.c != null) {
            this.a.y.setText(this.c);
        }
        this.a.x.setVisibility(8);
    }
}
