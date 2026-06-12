package android.ext;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.CheckBox;

/* compiled from: src */
/* loaded from: classes.dex */
class ie implements TextWatcher {
    final /* synthetic */ id a;
    private final /* synthetic */ CheckBox b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ie(id idVar, CheckBox checkBox) {
        this.a = idVar;
        this.b = checkBox;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        this.b.setChecked(true);
    }
}
