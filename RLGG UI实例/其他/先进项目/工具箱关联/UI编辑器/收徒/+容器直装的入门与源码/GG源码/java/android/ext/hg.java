package android.ext;

import android.text.Editable;
import android.text.TextWatcher;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class hg implements TextWatcher {
    final /* synthetic */ he a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hg(he heVar) {
        this.a = heVar;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        a();
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        a();
    }

    private void a() {
        this.a.c.setChecked(true);
        this.a.n();
    }
}
