package android.ext;

import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class mm implements Runnable {
    final /* synthetic */ MainService a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mm(MainService mainService) {
        this.a = mainService;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.i = this.a.a("record-interrupt", 0, 0, R.string.record, R.drawable.ic_stop_white_24dp);
        this.a.Z.d();
    }
}
