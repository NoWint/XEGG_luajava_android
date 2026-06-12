package android.ext;

import android.text.Editable;
import android.text.TextWatcher;

/* compiled from: src */
/* loaded from: classes.dex */
class iz implements TextWatcher {
    final /* synthetic */ iy a;
    private final /* synthetic */ jd b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public iz(iy iyVar, jd jdVar) {
        this.a = iyVar;
        this.b = jdVar;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        jc jcVar = this.b.h;
        if (jcVar != null) {
            this.a.a(jcVar.a, this.b.c.getText().toString(), false);
        }
    }
}
