package android.ext;

import android.ext.Tools;
import android.view.View;
import android.view.WindowManager;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class sk implements Runnable {
    private final /* synthetic */ WindowManager.LayoutParams a;
    private final /* synthetic */ View b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sk(WindowManager.LayoutParams layoutParams, View view) {
        this.a = layoutParams;
        this.b = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        Tools.a(this.b);
        Tools.ViewWrapper viewWrapper = new Tools.ViewWrapper(this.b.getContext());
        viewWrapper.addView(this.b);
        Tools.b(viewWrapper, this.a);
    }
}
