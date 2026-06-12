package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class da implements Runnable {
    final /* synthetic */ ConfigListAdapter a;
    private final /* synthetic */ tp b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public da(ConfigListAdapter configListAdapter, tp tpVar) {
        this.a = configListAdapter;
        this.b = tpVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Tools.a(MainService.instance.S, this.b);
    }
}
