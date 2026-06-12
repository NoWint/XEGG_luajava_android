package android.ext;

import android.widget.CheckBox;
import android.widget.CompoundButton;

/* compiled from: src */
/* loaded from: classes.dex */
class uj implements CompoundButton.OnCheckedChangeListener {
    final /* synthetic */ ug a;
    private final /* synthetic */ CheckBox b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public uj(ug ugVar, CheckBox checkBox) {
        this.a = ugVar;
        this.b = checkBox;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            this.b.setChecked(true);
        }
    }
}
