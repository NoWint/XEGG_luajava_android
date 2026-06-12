package android.ext;

import android.content.Context;
import android.content.SharedPreferences;

/* compiled from: src */
/* loaded from: classes.dex */
public class rh {
    private Context a;

    /* JADX INFO: Access modifiers changed from: protected */
    public rh(Context context) {
        this.a = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SharedPreferences a(String str, int i) {
        return this.a.getSharedPreferences(str, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object a(String str) {
        return this.a.getSystemService(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void U() {
        bj bjVar = bj.a;
        bj.e = true;
        if (bjVar != null) {
            la.a("BootstrapService stopSelf");
            bjVar.stopSelf();
        }
        bi biVar = bi.b;
        if (biVar != null) {
            biVar.onDestroy();
        }
    }
}
