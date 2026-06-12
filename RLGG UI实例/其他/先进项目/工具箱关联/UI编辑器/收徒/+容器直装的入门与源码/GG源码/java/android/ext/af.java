package android.ext;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* compiled from: src */
/* loaded from: classes.dex */
class af implements Application.ActivityLifecycleCallbacks {
    final /* synthetic */ ae a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(ae aeVar) {
        this.a = aeVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        la.a("onActivityCreated: " + activity + "; " + bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        la.a("onActivityStarted: " + activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        la.a("onActivityResumed: " + activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        la.a("onActivityPaused: " + activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        la.a("onActivityStopped: " + activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        la.a("onActivitySaveInstanceState: " + activity + "; " + bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        la.a("onActivityDestroyed: " + activity);
    }
}
