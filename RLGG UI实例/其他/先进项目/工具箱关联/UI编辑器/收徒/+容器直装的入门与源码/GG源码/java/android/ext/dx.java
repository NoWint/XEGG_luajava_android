package android.ext;

import android.app.AlertDialog;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class dx implements Runnable {
    final /* synthetic */ du a;
    private final /* synthetic */ AlertDialog b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dx(du duVar, AlertDialog alertDialog) {
        this.a = duVar;
        this.b = alertDialog;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (MainService.instance != null) {
            MainService.instance.g();
        }
        this.b.hide();
    }
}
