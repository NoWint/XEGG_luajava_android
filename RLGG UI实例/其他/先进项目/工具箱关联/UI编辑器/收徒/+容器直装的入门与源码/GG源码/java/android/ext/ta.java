package android.ext;

import android.content.DialogInterface;
import android.fix.ScrollView;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ta implements DialogInterface.OnShowListener {
    final /* synthetic */ sy a;
    private final /* synthetic */ ScrollView b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ta(sy syVar, ScrollView scrollView) {
        this.a = syVar;
        this.b = scrollView;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        this.b.postDelayed(new tb(this, this.b), 100L);
    }
}
