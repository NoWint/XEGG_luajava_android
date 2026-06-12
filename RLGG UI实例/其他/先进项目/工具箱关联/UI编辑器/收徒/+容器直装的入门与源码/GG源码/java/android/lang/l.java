package android.lang;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class l extends a implements Comparable {
    protected l(String str, byte[] bArr) {
        super(str, bArr);
    }

    public static l a(Object obj) {
        return a((String) obj);
    }

    public static l a(String str) {
        return new l(str, str.getBytes());
    }

    public static l b(String str) {
        ProcessEnvironment.c(str);
        return a(str);
    }

    public static l a(byte[] bArr) {
        return new l(new String(bArr), bArr);
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(l lVar) {
        int c;
        c = ProcessEnvironment.c(a(), lVar.a());
        return c;
    }

    @Override // android.lang.a
    public boolean equals(Object obj) {
        return (obj instanceof l) && super.equals(obj);
    }
}
