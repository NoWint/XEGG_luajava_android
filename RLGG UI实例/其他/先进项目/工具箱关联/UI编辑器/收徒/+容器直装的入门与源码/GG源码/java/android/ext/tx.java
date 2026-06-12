package android.ext;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: src */
/* loaded from: classes.dex */
public class tx extends BroadcastReceiver {
    private static final int a = Tools.a.nextInt();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int i = 0;
        try {
            la.b("onReceive broadcast: " + intent + "; " + context + "; " + MainService.instance);
            if (MainService.instance == null) {
                i = 1;
            } else if (intent == null) {
                i = 2;
            } else if (intent.getIntExtra("check-hash", 0) != a) {
                i = 3;
            }
            la.b("Broadcast: " + i);
            if (i == 0) {
                context.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
                switch (intent.getIntExtra("action", 0)) {
                    case 1:
                        ConfigListAdapter.e();
                        return;
                    default:
                        MainService.instance.z();
                        return;
                }
            }
        } catch (Throwable th) {
            la.b("onReceive broadcast fail: " + intent, th);
        }
    }

    private static Intent a() {
        String g = Tools.g();
        Intent intent = new Intent();
        intent.setClassName(g, String.valueOf(g) + ".Receiver");
        intent.setAction(g);
        intent.setFlags((intent.getFlags() | 32 | 16777216) & (-8388625));
        intent.putExtra("check-hash", a);
        return intent;
    }

    public static PendingIntent a(int i) {
        try {
            return PendingIntent.getBroadcast(Tools.e(), Tools.a.nextInt(), a().putExtra("action", i), 134217728);
        } catch (Throwable th) {
            la.a(th);
            return null;
        }
    }
}
