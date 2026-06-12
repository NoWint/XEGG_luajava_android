package android.lang;

import java.security.PrivilegedAction;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: src */
/* loaded from: classes.dex */
class n implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    /* renamed from: a */
    public Executor run() {
        return Executors.newCachedThreadPool(new u(null));
    }
}
