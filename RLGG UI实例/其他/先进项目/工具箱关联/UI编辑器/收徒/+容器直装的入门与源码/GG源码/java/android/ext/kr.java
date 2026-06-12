package android.ext;

import android.inputmethodservice.Keyboard;

/* compiled from: src */
/* loaded from: classes.dex */
class kr implements Runnable {
    final /* synthetic */ InternalKeyboard a;
    private final /* synthetic */ Keyboard b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kr(InternalKeyboard internalKeyboard, Keyboard keyboard) {
        this.a = internalKeyboard;
        this.b = keyboard;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.setKeyboard(this.b);
    }
}
