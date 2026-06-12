package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
public class qg {
    public int a;
    public int b;
    public String c;
    public String d;
    public String e = "";
    public boolean f = false;
    public boolean g = false;
    public boolean h = false;

    public qg(int i, String str) {
        this.a = i;
        this.c = str;
        this.d = str;
        this.b = i;
    }

    public String toString() {
        return "AppInfo [uid=" + this.a + ", pkg=" + this.c + ", name=" + this.d + ", isSystem=" + this.f + ", isGame=" + this.g + ']';
    }
}
