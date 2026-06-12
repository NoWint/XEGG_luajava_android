package android.ext;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

/* compiled from: src */
/* loaded from: classes.dex */
class db extends gr {
    final /* synthetic */ ConfigListAdapter a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public db(ConfigListAdapter configListAdapter, String str) {
        super(str);
        this.a = configListAdapter;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new URL(Tools.removeNewLinesChars("kwws=22jdphjxdugldq1qhw2yhuvlrq1w{w")).openStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
                sb.append('\n');
            }
            bufferedReader.close();
        } catch (Throwable th) {
            la.c("Load changelog", th);
            sb.append(th.toString());
        }
        rx.a(new dc(this, sb));
    }
}
