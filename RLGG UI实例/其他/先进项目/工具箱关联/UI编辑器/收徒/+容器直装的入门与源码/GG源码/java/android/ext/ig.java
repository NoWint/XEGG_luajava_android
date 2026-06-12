package android.ext;

import android.content.SharedPreferences;
import java.io.BufferedReader;
import java.io.InputStreamReader;

/* compiled from: src */
/* loaded from: classes.dex */
public final class ig {
    public ig(boolean z) {
        if (z) {
            new gr(new ih(this), "FloatCheck").start();
        } else {
            a();
        }
    }

    public static void a(boolean z) {
        new qw().a("float-off", z, false).commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        SharedPreferences s = Tools.s();
        if (s.contains("float-off")) {
            if (s.getBoolean("float-off", false)) {
                a("pref");
                return;
            }
            return;
        }
        b();
    }

    private void b() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Tools.a(new String[]{"getprop"}).getInputStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                } else if (readLine.contains("ro.build.remixos.version")) {
                    la.a("Remix-detect: " + readLine);
                    if (readLine.contains("[2.")) {
                        a(readLine);
                    }
                }
            }
            bufferedReader.close();
        } catch (Throwable th) {
            la.c("Remix-detect", th);
        }
    }

    private void a(String str) {
        la.a("FloatCheck: float off by " + str);
        rv.a = false;
    }
}
