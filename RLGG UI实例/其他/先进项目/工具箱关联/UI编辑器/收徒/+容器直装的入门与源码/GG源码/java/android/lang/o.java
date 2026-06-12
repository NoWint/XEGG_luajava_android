package android.lang;

import java.security.PrivilegedExceptionAction;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class o implements PrivilegedExceptionAction {
    final /* synthetic */ UNIXProcess a;
    private final /* synthetic */ int[] b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(UNIXProcess uNIXProcess, int[] iArr) {
        this.a = uNIXProcess;
        this.b = iArr;
    }

    @Override // java.security.PrivilegedExceptionAction
    /* renamed from: a */
    public Void run() {
        this.a.a(this.b);
        return null;
    }
}
