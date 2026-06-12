package android.ext;

import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class un implements Callable {
    private final /* synthetic */ String a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public un(String str) {
        this.a = str;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public Boolean call() {
        return Boolean.valueOf(uk.b(this.a.getBytes()));
    }
}
