package android.ext;

import android.ext.Tools;
import android.view.View;
import android.view.ViewParent;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class su implements Runnable {
    private final /* synthetic */ View a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public su(View view) {
        this.a = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        ViewParent parent = this.a.getParent();
        if (parent instanceof Tools.ViewWrapper) {
            Tools.ViewWrapper viewWrapper = (Tools.ViewWrapper) parent;
            Tools.b((View) viewWrapper);
            viewWrapper.removeAllViews();
        }
    }
}
