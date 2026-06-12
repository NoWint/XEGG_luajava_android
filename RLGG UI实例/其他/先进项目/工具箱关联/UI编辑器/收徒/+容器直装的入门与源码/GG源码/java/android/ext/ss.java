package android.ext;

import java.util.concurrent.Callable;

/* compiled from: src */
/* loaded from: classes.dex */
class ss implements Callable {
    private final /* synthetic */ Process a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ss(Process process) {
        this.a = process;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public Boolean call() {
        this.a.waitFor();
        return true;
    }
}
