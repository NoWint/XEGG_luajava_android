package android.lang;

import java.security.PrivilegedAction;

/* compiled from: src */
/* loaded from: classes.dex */
class v implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    /* renamed from: a */
    public ThreadGroup run() {
        ThreadGroup threadGroup = Thread.currentThread().getThreadGroup();
        while (true) {
            ThreadGroup parent = threadGroup.getParent();
            if (parent == null || threadGroup == parent) {
                break;
            }
            threadGroup = parent;
        }
        return threadGroup;
    }
}
