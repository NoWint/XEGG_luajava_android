package android.ext;

import android.os.Handler;
import android.os.Message;

/* compiled from: src */
/* loaded from: classes.dex */
public class tm extends Handler {
    final Handler a;

    public static Handler a(Handler handler) {
        if (!(handler instanceof tm)) {
            return new tm(handler);
        }
        return handler;
    }

    public tm(Handler handler) {
        super(handler.getLooper());
        this.a = handler;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            this.a.handleMessage(message);
        } catch (Throwable th) {
            la.a(th);
        }
    }
}
