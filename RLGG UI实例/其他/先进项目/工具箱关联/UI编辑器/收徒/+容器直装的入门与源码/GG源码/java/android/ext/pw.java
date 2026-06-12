package android.ext;

import java.util.Comparator;

/* compiled from: src */
/* loaded from: classes.dex */
class pw implements Comparator {
    private final /* synthetic */ boolean a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pw(boolean z) {
        this.a = z;
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(qb qbVar, qb qbVar2) {
        int i = -1;
        boolean z = qbVar.c;
        if (z != qbVar2.c) {
            return z ? -1 : 1;
        }
        try {
            if (this.a) {
                i = pp.a((Object) qbVar.b, (Object) qbVar2.b);
            } else if (qbVar.a.lastModified() <= qbVar2.a.lastModified()) {
                i = 1;
            }
            return i;
        } catch (Throwable th) {
            la.a(th);
            return 0;
        }
    }
}
