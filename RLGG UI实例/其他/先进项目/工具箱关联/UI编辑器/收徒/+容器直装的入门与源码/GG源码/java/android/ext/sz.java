package android.ext;

import android.content.DialogInterface;
import android.widget.TextView;

/* compiled from: src */
/* loaded from: classes.dex */
class sz implements DialogInterface.OnClickListener {
    final /* synthetic */ sy a;
    private final /* synthetic */ TextView b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sz(sy syVar, TextView textView) {
        this.a = syVar;
        this.b = textView;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Tools.a(this.b.getText().toString().trim(), false);
    }
}
