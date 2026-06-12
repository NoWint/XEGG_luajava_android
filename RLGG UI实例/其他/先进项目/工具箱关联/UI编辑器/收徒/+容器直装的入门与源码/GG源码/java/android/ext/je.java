package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
final class je {
    final String a;
    final int b;
    int c = 0;
    String d;

    public je(String str, int i, String str2) {
        this.a = str;
        this.b = i;
        this.d = str2;
    }

    public String toString() {
        return this.a;
    }

    public int hashCode() {
        int i = this.c;
        if (i == 0) {
            i = this.a.hashCode();
            String str = "#$@$#" + this.b;
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                i = (i * 31) + str.charAt(i2);
            }
            this.c = i;
        }
        return i;
    }

    public boolean equals(Object obj) {
        return (obj instanceof je) && this.b == ((je) obj).b && this.a.equals(((je) obj).a);
    }
}
