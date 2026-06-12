package android.lang;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class p implements Runnable {
    final /* synthetic */ UNIXProcess a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(UNIXProcess uNIXProcess) {
        this.a = uNIXProcess;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        int waitForProcessExit;
        UNIXProcess uNIXProcess = this.a;
        i = this.a.pid;
        waitForProcessExit = uNIXProcess.waitForProcessExit(i);
        this.a.b(waitForProcessExit);
    }
}
