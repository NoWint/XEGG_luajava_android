package android.lang;

import java.util.concurrent.ThreadFactory;

/* compiled from: src */
/* loaded from: classes.dex */
class u implements ThreadFactory {
    private static final ThreadGroup a = a();

    private u() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ u(u uVar) {
        this();
    }

    private static ThreadGroup a() {
        return (ThreadGroup) UNIXProcess.a(new v());
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(a, runnable, "process reaper", 32768L);
        thread.setDaemon(true);
        thread.setPriority(10);
        return thread;
    }
}
