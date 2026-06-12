package android.ext;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class hf extends ku {
    final /* synthetic */ he a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hf(he heVar) {
        this.a = heVar;
    }

    @Override // android.ext.ku
    protected boolean a(View view, boolean z) {
        boolean n;
        n = this.a.n();
        return n || view == this.a.a;
    }
}
