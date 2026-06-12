package android.lang;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public abstract class a {
    protected final String a;
    protected final byte[] b;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(String str, byte[] bArr) {
        this.a = str;
        this.b = bArr;
    }

    public byte[] a() {
        return this.b;
    }

    public String toString() {
        return this.a;
    }

    public boolean equals(Object obj) {
        boolean d;
        if (obj instanceof a) {
            d = ProcessEnvironment.d(a(), ((a) obj).a());
            if (d) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int b;
        b = ProcessEnvironment.b(a());
        return b;
    }
}
