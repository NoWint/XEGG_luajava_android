package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class ns implements Runnable {
    final /* synthetic */ np a;
    private final /* synthetic */ String b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ns(np npVar, String str) {
        this.a = npVar;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        no noVar;
        nl nlVar;
        MainService mainService;
        noVar = this.a.a;
        nlVar = noVar.a;
        mainService = nlVar.a;
        mainService.j.a(true, this.b);
    }
}
