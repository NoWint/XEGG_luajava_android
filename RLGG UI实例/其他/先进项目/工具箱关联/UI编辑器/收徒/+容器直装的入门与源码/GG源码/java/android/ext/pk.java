package android.ext;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class pk implements View.OnClickListener {
    final /* synthetic */ pj a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pk(pj pjVar) {
        this.a = pjVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.a(view);
    }
}
