package android.ext;

import android.database.DataSetObserver;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class mv extends DataSetObserver {
    final /* synthetic */ MainService a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mv(MainService mainService) {
        this.a = mainService;
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        super.onChanged();
        this.a.v();
    }

    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        super.onInvalidated();
        this.a.v();
    }
}
