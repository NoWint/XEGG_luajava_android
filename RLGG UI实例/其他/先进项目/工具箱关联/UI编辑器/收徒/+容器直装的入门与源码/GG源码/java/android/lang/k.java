package android.lang;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class k extends a implements Comparable {
    protected k(String str, byte[] bArr) {
        super(str, bArr);
    }

    public static k a(Object obj) {
        return a((String) obj);
    }

    public static k a(String str) {
        return new k(str, str.getBytes());
    }

    public static k b(String str) {
        ProcessEnvironment.d(str);
        return a(str);
    }

    public static k a(byte[] bArr) {
        return new k(new String(bArr), bArr);
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(k kVar) {
        int c;
        c = ProcessEnvironment.c(a(), kVar.a());
        return c;
    }

    @Override // android.lang.a
    public boolean equals(Object obj) {
        return (obj instanceof k) && super.equals(obj);
    }
}
