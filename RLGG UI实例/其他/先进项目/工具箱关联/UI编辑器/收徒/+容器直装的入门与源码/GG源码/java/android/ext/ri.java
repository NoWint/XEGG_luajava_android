package android.ext;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

/* compiled from: src */
/* loaded from: classes.dex */
public class ri extends android.fix.d {
    public ri(Context context) {
        super(context);
    }

    public static Context a(Context context) {
        if (context != null && !(context instanceof ri)) {
            return new ri(context);
        }
        return context;
    }

    @Override // android.fix.d, android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        if (intent != null) {
            intent.setFlags(268435456);
        }
        super.startActivity(intent);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent, Bundle bundle) {
        if (intent != null) {
            intent.setFlags(268435456);
        }
        super.startActivity(intent, bundle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivities(Intent[] intentArr) {
        if (intentArr != null) {
            for (Intent intent : intentArr) {
                if (intent != null) {
                    intent.setFlags(268435456);
                }
            }
        }
        super.startActivities(intentArr);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivities(Intent[] intentArr, Bundle bundle) {
        if (intentArr != null) {
            for (Intent intent : intentArr) {
                if (intent != null) {
                    intent.setFlags(268435456);
                }
            }
        }
        super.startActivities(intentArr, bundle);
    }

    @Override // android.fix.d, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        try {
            return super.getSystemService(str);
        } catch (Throwable th) {
            la.c("getSystemService fail: " + str, th);
            return null;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        if (applicationContext == null) {
            return ar.e;
        }
        return applicationContext;
    }

    @Override // android.fix.d, android.content.ContextWrapper, android.content.Context
    public void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        try {
            super.unregisterReceiver(broadcastReceiver);
        } catch (IllegalArgumentException e) {
            la.a(e);
        }
    }
}
