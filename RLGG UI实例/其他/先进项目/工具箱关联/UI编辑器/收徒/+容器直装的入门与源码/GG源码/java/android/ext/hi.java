package android.ext;

import android.widget.CompoundButton;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class hi implements CompoundButton.OnCheckedChangeListener {
    final /* synthetic */ he a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hi(he heVar) {
        this.a = heVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            this.a.b.setChecked(false);
        }
    }
}
