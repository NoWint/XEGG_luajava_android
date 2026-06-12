package android.ext;

import catch_.me_.if_.you_.can_.R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class aw implements Runnable {
    final /* synthetic */ ar a;
    private final /* synthetic */ String b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aw(ar arVar, String str) {
        this.a = arVar;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            String e = ar.e();
            File file = new File(e);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            ar.a(fileOutputStream, e, this.b);
            Tools.a(file, 420);
            String str = "chmod 0644 " + e + " 2>&1 ; logcat -v threadtime -b main -b system *:V 2>&1 ; exit\n";
            if (e.contains("/emulated/0")) {
                str = "chmod 0644 " + e.replace("/emulated/0", "/emulated/legacy") + " 2>&1 ; " + str;
            }
            Process b = qt.b(str);
            InputStream inputStream = b.getInputStream();
            byte[] bArr = new byte[8192];
            if (!Tools.b(b)) {
                Tools.b(String.valueOf(qk.a((int) R.string.record_logcat)) + ": " + e);
            } else {
                Tools.b(String.valueOf(qk.a((int) R.string.record_logcat)) + ": " + qk.a((int) R.string.error));
            }
            while (!Thread.interrupted()) {
                int read = inputStream.read(bArr);
                if (read > 0) {
                    fileOutputStream.write(bArr, 0, read);
                    fileOutputStream.flush();
                } else if (read == -1 && Tools.b(b)) {
                    break;
                }
            }
            fileOutputStream.close();
            Tools.b(String.valueOf(qk.a((int) R.string.record_logcat)) + ": " + qk.a((int) R.string.exit));
        } catch (Throwable th) {
            la.a(th);
            Tools.b(String.valueOf(qk.a((int) R.string.record_logcat)) + "> " + qk.a((int) R.string.error));
        }
    }
}
