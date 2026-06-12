package android.ext;

import java.util.Comparator;

/* compiled from: src */
/* loaded from: classes.dex */
class px implements Comparator {
    private final /* synthetic */ StringBuilder a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public px(StringBuilder sb) {
        this.a = sb;
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(qb qbVar, qb qbVar2) {
        int a;
        boolean z = qbVar.c;
        boolean z2 = qbVar2.c;
        if (z != z2) {
            a = z ? -1 : 1;
        } else {
            a = pp.a((Object) qbVar.b, (Object) qbVar2.b);
        }
        this.a.append(z ? 'D' : 'F');
        this.a.append(':');
        this.a.append(qbVar);
        this.a.append(':');
        this.a.append(qbVar.b);
        this.a.append('\n');
        this.a.append(z2 ? 'D' : 'F');
        this.a.append(':');
        this.a.append(qbVar2);
        this.a.append(':');
        this.a.append(qbVar2.b);
        this.a.append('\n');
        this.a.append(a);
        this.a.append('\n');
        return a;
    }
}
