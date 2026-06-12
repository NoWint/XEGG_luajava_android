package android.ext;

import android.content.Context;
import android.content.ContextWrapper;

/* compiled from: src */
/* loaded from: classes.dex */
public class cs extends ContextWrapper {
    public cs(Context context) {
        super(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String getPackageName() {
        la.a("Use 1 " + Config.E + " instead of " + getBaseContext().getPackageName());
        return Config.E;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String getOpPackageName() {
        la.a("Use 2 " + Config.E + " instead of " + getBaseContext().getPackageName());
        return Config.E;
    }
}
