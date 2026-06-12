package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class nr implements Runnable {
    final /* synthetic */ np a;
    private final /* synthetic */ String b;
    private final /* synthetic */ String c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nr(np npVar, String str, String str2) {
        this.a = npVar;
        this.b = str;
        this.c = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            qt.a(String.valueOf(this.b) + " ''", 5);
        } catch (Throwable th) {
            la.c("Failed unstub app: " + this.c, th);
        }
    }
}
