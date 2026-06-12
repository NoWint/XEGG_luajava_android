package android.ext;

import android.content.SharedPreferences;

/* compiled from: src */
/* loaded from: classes.dex */
class hq implements Runnable {
    private final /* synthetic */ SharedPreferences a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hq(SharedPreferences sharedPreferences) {
        this.a = sharedPreferences;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.edit().remove("last_exception").commit();
    }
}
