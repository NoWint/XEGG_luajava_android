package android.ext;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.CheckBox;

/* compiled from: src */
/* loaded from: classes.dex */
class uh implements TextWatcher {
    final /* synthetic */ ug a;
    private final /* synthetic */ CheckBox b;
    private final /* synthetic */ CheckBox c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public uh(ug ugVar, CheckBox checkBox, CheckBox checkBox2) {
        this.a = ugVar;
        this.b = checkBox;
        this.c = checkBox2;
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
        if (this.c != null) {
            this.c.setChecked(true);
        }
    }
}
