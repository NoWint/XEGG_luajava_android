package luaj.a;

/* compiled from: src */
/* loaded from: classes.dex */
class r {
    int a;
    final s b = new s();
    final f c = new f();
    final f d = new f();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2) {
        this.d.a = -1;
        this.c.a = -1;
        this.a = i;
        this.b.e = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.c.a != this.d.a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.a == 5 && this.c.a == -1 && this.d.a == -1;
    }

    public void a(r rVar) {
        this.d.a = rVar.d.a;
        this.a = rVar.a;
        this.c.a = rVar.c.a;
        this.b.d = rVar.b.d;
        this.b.a = rVar.b.a;
        this.b.b = rVar.b.b;
        this.b.c = rVar.b.c;
        this.b.e = rVar.b.e;
    }
}
