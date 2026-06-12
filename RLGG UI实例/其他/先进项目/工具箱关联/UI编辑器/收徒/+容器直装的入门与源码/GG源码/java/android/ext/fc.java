package android.ext;

import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fc implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte[] b;
    private final /* synthetic */ byte[] c;
    private final /* synthetic */ byte d;
    private final /* synthetic */ long e;
    private final /* synthetic */ long f;
    private final /* synthetic */ int g;
    private final /* synthetic */ String h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fc(ex exVar, byte[] bArr, byte[] bArr2, byte b, long j, long j2, int i, String str) {
        this.a = exVar;
        this.b = bArr;
        this.c = bArr2;
        this.d = b;
        this.e = j;
        this.f = j2;
        this.g = i;
        this.h = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        int length = this.b.length;
        int length2 = this.c.length;
        inOut.a(this.d, (byte) 61, 0);
        inOut.a(this.e);
        inOut.a(this.f);
        inOut.a(this.g);
        inOut.a(length);
        inOut.a(this.b, length);
        inOut.a(length2);
        inOut.a(this.c, length2);
        this.a.u();
        MainService.instance.a((CharSequence) Tools.a("%s: %s - %s > %s", qk.a((int) R.string.dump_memory), d.b(this.e, 4), d.b(this.f, 4), this.h));
    }
}
