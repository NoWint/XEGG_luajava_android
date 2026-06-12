package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class t implements AdapterView.OnItemClickListener {
    final AdapterView.OnItemClickListener a;
    final AlertDialog b;

    private t(AlertDialog alertDialog, AdapterView.OnItemClickListener onItemClickListener) {
        this.a = onItemClickListener;
        this.b = alertDialog;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ t(AlertDialog alertDialog, AdapterView.OnItemClickListener onItemClickListener, t tVar) {
        this(alertDialog, onItemClickListener);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        try {
            this.a.onItemClick(adapterView, view, i, j);
        } catch (Throwable th) {
            la.a(th);
            Tools.a((DialogInterface) this.b);
        }
    }
}
