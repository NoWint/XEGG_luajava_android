package android.ext;

import android.graphics.drawable.Drawable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class jl implements Runnable {
    final /* synthetic */ HotPoint a;
    private final /* synthetic */ Drawable b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jl(HotPoint hotPoint, Drawable drawable) {
        this.a = hotPoint;
        this.b = drawable;
    }

    @Override // java.lang.Runnable
    public void run() {
        Tools.a(this.a.m, this.b, 24 - this.a.f);
    }
}
