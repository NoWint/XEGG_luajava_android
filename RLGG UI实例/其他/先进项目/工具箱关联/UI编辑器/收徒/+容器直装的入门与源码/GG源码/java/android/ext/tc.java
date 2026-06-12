package android.ext;

import android.widget.ListView;

/* compiled from: src */
/* loaded from: classes.dex */
class tc implements Runnable {
    private final /* synthetic */ ListView a;
    private final /* synthetic */ int b;
    private final /* synthetic */ int c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public tc(ListView listView, int i, int i2) {
        this.a = listView;
        this.b = i;
        this.c = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.setSelectionFromTop(this.b, this.c);
    }
}
