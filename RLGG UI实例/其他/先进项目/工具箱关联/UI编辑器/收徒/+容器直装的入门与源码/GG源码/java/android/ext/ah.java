package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class ah implements Comparable {
    long a;
    int b;

    public ah(long j, int i) {
        this.a = j;
        this.b = i;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(ah ahVar) {
        long j = this.a;
        long j2 = ahVar.a;
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }
}
