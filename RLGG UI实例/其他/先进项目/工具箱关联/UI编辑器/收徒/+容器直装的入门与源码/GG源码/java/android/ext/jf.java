package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class jf implements Runnable {
    final /* synthetic */ HotFrame a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jf(HotFrame hotFrame) {
        this.a = hotFrame;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        try {
            this.a.setHapticFeedbackEnabled(true);
            z = this.a.performHapticFeedback(0, 1);
        } catch (Throwable th) {
            th = th;
            z = false;
        }
        try {
            this.a.setHapticFeedbackEnabled(false);
        } catch (Throwable th2) {
            th = th2;
            la.a("Failed make HapticFeedback", th);
            this.a.setHapticFeedbackEnabled(false);
            la.a("Real long click: " + z);
            MainService.instance.onLongClick(null);
        }
        la.a("Real long click: " + z);
        MainService.instance.onLongClick(null);
    }
}
