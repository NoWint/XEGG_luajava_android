package android.ext;

import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ma implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        if ((Config.c & 16) == 0 && Config.vSpaceReal && jp.b()) {
            rx.a(lh.a(ar.f, qk.a((int) R.string.need_random_name), 16L, false));
        }
    }
}
