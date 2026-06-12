package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class nm implements Runnable {
    final /* synthetic */ nl a;
    private final /* synthetic */ String b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nm(nl nlVar, String str) {
        this.a = nlVar;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        MainService mainService;
        mainService = this.a.a;
        mainService.j.a(true, this.b);
    }
}
