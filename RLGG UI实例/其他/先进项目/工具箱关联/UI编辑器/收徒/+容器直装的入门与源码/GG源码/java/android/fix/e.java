package android.fix;

import android.content.Context;
import android.ext.la;
import java.lang.reflect.Field;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class e extends d {
    private Object mPackageInfo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context) {
        super(context);
        try {
            Context baseContext = getBaseContext();
            Class<?> cls = Class.forName("android.app.ContextImpl");
            if (!cls.isInstance(baseContext)) {
                return;
            }
            Field declaredField = cls.getDeclaredField("mPackageInfo");
            declaredField.setAccessible(true);
            this.mPackageInfo = declaredField.get(baseContext);
            la.a("WBContext: " + this.mPackageInfo);
        } catch (Throwable th) {
            la.a(th);
        }
    }
}
