package android.ext;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class na implements ComponentCallbacks2 {
    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        la.a("ComponentCallbacks2 onConfigurationChanged: " + configuration);
        MainService.a(android.fix.d.a(configuration));
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        la.a("ComponentCallbacks2 onLowMemory");
        MainService.b(-1);
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        la.a("ComponentCallbacks2 onTrimMemory: " + i);
        MainService.b(i);
    }
}
