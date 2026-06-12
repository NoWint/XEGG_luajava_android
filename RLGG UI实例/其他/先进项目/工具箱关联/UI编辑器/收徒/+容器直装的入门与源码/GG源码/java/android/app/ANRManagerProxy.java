package android.app;

import android.os.IBinder;

/* compiled from: src */
/* loaded from: classes.dex */
class ANRManagerProxy {
    private IBinder a;

    public ANRManagerProxy(IBinder iBinder) {
        this.a = iBinder;
    }

    public IBinder asBinder() {
        return this.a;
    }

    public boolean notifyWNR(int i, String str) {
        return true;
    }

    public void notifyLightWeightANR(int i, String str, int i2) {
    }

    public void informMessageDump(String str) {
    }
}
