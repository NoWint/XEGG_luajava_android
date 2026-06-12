package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class gp implements Comparable {
    long a;
    int b;

    public gp(long j, int i) {
        this.a = j;
        this.b = i;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(gp gpVar) {
        long j = this.a;
        long j2 = gpVar.a;
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }
}
