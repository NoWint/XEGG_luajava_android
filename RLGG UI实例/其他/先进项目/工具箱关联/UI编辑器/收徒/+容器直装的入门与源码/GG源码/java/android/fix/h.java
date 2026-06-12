package android.fix;

import android.content.Context;
import android.content.ContextWrapper;

/* compiled from: src */
/* loaded from: classes.dex */
public class h extends ContextWrapper {
    Context a;

    public h(Context context) {
        super(context);
        this.a = context;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if ("audio".equals(str)) {
            return null;
        }
        return this.a.getSystemService(str);
    }
}
