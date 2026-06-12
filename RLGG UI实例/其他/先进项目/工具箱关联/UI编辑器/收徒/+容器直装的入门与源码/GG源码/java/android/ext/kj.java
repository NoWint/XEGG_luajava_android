package android.ext;

import java.util.zip.ZipEntry;

/* compiled from: src */
/* loaded from: classes.dex */
public class kj {
    public ZipEntry a;
    public String b;
    public String c;

    public kj(ZipEntry zipEntry, String str) {
        this.a = zipEntry;
        this.b = str;
    }

    public String toString() {
        return "Item [entry=" + this.a + ", extractHash=" + this.b + ", putHash=" + this.c + ']';
    }
}
