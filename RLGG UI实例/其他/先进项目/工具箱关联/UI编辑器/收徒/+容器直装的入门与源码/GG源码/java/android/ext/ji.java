package android.ext;

import android.view.View;

/* compiled from: src */
/* loaded from: classes.dex */
class ji implements View.OnLayoutChangeListener {
    final /* synthetic */ jh a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ji(jh jhVar) {
        this.a = jhVar;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        HotPoint hotPoint;
        hotPoint = this.a.a;
        hotPoint.c();
    }
}
