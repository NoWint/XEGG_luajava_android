package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ox implements Runnable {
    final /* synthetic */ ow a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ox(ow owVar) {
        this.a = owVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.notifyDataSetChanged();
    }
}
