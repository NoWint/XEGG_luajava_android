package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class ej implements DialogInterface.OnClickListener {
    final /* synthetic */ ConfigListAdapter a;
    private final /* synthetic */ EditTextSpeeds b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ej(ConfigListAdapter configListAdapter, EditTextSpeeds editTextSpeeds) {
        this.a = configListAdapter;
        this.b = editTextSpeeds;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String trim = this.b.getText().toString().trim();
        iw.a(trim, 16);
        MainService.instance.ab.a(trim);
    }
}
