package android.ext;

import android.content.ComponentCallbacks;
import android.content.res.Configuration;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class nb implements ComponentCallbacks {
    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        la.a("ComponentCallbacks onConfigurationChanged: " + configuration);
        MainService.a(android.fix.d.a(configuration));
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        la.a("ComponentCallbacks onLowMemory");
        MainService.b(-1);
    }
}
