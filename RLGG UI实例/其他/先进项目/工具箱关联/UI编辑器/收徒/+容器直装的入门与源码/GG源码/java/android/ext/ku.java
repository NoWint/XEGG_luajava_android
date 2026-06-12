package android.ext;

import android.view.View;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class ku implements View.OnFocusChangeListener {
    protected abstract boolean a(View view, boolean z);

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        InternalKeyboard internalKeyboard;
        if ((Config.B & 1) != 0 && (internalKeyboard = (InternalKeyboard) view.getRootView().findViewById(R.id.keyboard)) != null) {
            boolean a = a(view, z);
            if (!a) {
                z = false;
            }
            internalKeyboard.b(view, z);
            if (!a) {
                Tools.e(view);
            }
        }
    }
}
