package luaj.lib;

import android.ext.la;
import java.io.InputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class a extends InputStream {
    final /* synthetic */ BaseLib a;
    private int b = 0;
    private final /* synthetic */ InputStream c;
    private final /* synthetic */ c d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(BaseLib baseLib, InputStream inputStream, c cVar) {
        this.a = baseLib;
        this.c = inputStream;
        this.d = cVar;
    }

    @Override // java.io.InputStream
    public int read() {
        int read = this.c.read();
        try {
            if (read != -1) {
                this.d.b.write(read);
                this.b++;
            } else if (this.b > 0) {
                this.d.d.writeInt(this.b);
            }
        } catch (Throwable th) {
            la.b("Failed write log file", th);
        }
        return read;
    }
}
