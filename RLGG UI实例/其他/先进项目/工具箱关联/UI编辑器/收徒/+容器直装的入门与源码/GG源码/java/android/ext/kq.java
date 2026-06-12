package android.ext;

import android.inputmethodservice.KeyboardView;

/* compiled from: src */
/* loaded from: classes.dex */
class kq implements KeyboardView.OnKeyboardActionListener {
    final /* synthetic */ InternalKeyboard a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kq(InternalKeyboard internalKeyboard) {
        this.a = internalKeyboard;
    }

    @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
    public void swipeUp() {
    }

    @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
    public void swipeRight() {
    }

    @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
    public void swipeLeft() {
    }

    @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
    public void swipeDown() {
    }

    @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
    public void onText(CharSequence charSequence) {
    }

    @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
    public void onRelease(int i) {
    }

    @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
    public void onPress(int i) {
    }

    @Override // android.inputmethodservice.KeyboardView.OnKeyboardActionListener
    public void onKey(int i, int[] iArr) {
        this.a.a(i, iArr);
    }
}
