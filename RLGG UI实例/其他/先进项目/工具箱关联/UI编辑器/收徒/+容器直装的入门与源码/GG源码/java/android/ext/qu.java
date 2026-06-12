package android.ext;

import android.os.Process;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class qu implements Callable {
    private final /* synthetic */ String a;
    private final /* synthetic */ String b;
    private final /* synthetic */ StringBuilder c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public qu(String str, String str2, StringBuilder sb) {
        this.a = str;
        this.b = str2;
        this.c = sb;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public String call() {
        la.a("cmd (" + this.a + ") start");
        String a = (Config.C && "" == this.b) ? this.b : qt.a(this.b);
        la.a("su (" + a + ") used");
        Process a2 = a == "" ? Tools.a(new String[]{this.a}) : qt.a(this.a, a, true);
        if (a2 == null) {
            la.c("cmd fail: " + qt.a);
            return "cmd fail - got null";
        }
        int a3 = Tools.a(a2);
        qt.b = a3;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(a2.getInputStream()));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                la.a("cmd (" + this.a + ") out: " + readLine);
                this.c.append(readLine);
                this.c.append('\n');
            } catch (Throwable th) {
                bufferedReader.close();
                throw th;
            }
        }
        bufferedReader.close();
        this.c.append("exit code: ");
        this.c.append(a2.waitFor());
        la.a("cmd (" + this.a + ") exit: " + a2.exitValue());
        if (a3 > 0) {
            try {
                la.a("Kill at end: " + a3);
                Process.killProcess(a3);
                la.a("Kill at end: ok");
            } catch (Throwable th2) {
                la.a("Failed kill at end", th2);
            }
        }
        qt.b = 0;
        return null;
    }
}
