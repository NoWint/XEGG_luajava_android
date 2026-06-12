package android.ext;

import android.view.View;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class ks implements View.OnFocusChangeListener {
    int a = -1;
    private final /* synthetic */ int b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ks(int i) {
        this.b = i;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        InternalKeyboard internalKeyboard;
        if ((Config.B & 1) != 0 && (internalKeyboard = (InternalKeyboard) view.getRootView().findViewById(R.id.keyboard)) != null) {
            if (this.a == -1) {
                this.a = internalKeyboard.getFlags();
            }
            internalKeyboard.setFlags((z ? this.b : 0) | this.a);
            internalKeyboard.a();
        }
    }
}
