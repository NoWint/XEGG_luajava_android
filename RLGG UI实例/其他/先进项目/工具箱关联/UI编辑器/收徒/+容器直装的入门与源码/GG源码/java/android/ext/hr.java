package android.ext;

import java.io.File;

/* compiled from: src */
/* loaded from: classes.dex */
class hr implements Runnable {
    private final /* synthetic */ File a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hr(File file) {
        this.a = file;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.delete();
    }
}
