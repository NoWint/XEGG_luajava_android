package android.ext;

import android.content.ComponentName;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class np implements Runnable {
    final /* synthetic */ no a;
    private final /* synthetic */ String b;
    private final /* synthetic */ boolean c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public np(no noVar, String str, boolean z) {
        this.a = noVar;
        this.b = str;
        this.c = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        Intent intent;
        ComponentName component;
        la.a("Restart stub: " + this.b);
        String str = "exec setprop wrap." + ((this.b == null || this.b.length() <= 26) ? this.b : this.b.substring(0, 26));
        try {
            qt.a(String.valueOf(str) + " LD_PRELOAD=" + (String.valueOf(eu.d()) + eu.a(this.c)), 5);
        } catch (Throwable th) {
            la.c("Failed stub app: " + this.b, th);
        }
        try {
            if (!qt.a("exec monkey -p " + this.b + " 1", 10).contains("Events injected")) {
                Intent launchIntentForPackage = Tools.m().getLaunchIntentForPackage(this.b);
                if (launchIntentForPackage == null) {
                    Intent intent2 = new Intent("android.intent.action.MAIN");
                    intent2.setPackage(this.b);
                    intent = intent2;
                } else {
                    intent = launchIntentForPackage;
                }
                if (!((intent == null || (component = intent.getComponent()) == null) ? false : qt.a("exec am start -n " + component.flattenToString(), 10).contains("Starting: Intent"))) {
                    intent.setFlags(268435456);
                    rx.a(new nq(this, intent, this.b));
                }
            }
            z = true;
        } catch (Throwable th2) {
            la.c("Failed restart app: " + this.b, th2);
            z = false;
        }
        rx.b().postDelayed(new nr(this, str, this.b), z ? 10000 : 0);
        rx.a().postDelayed(new ns(this, this.b), z ? 4000 : 0);
    }
}
