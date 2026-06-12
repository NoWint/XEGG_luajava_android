package android.lang;

import java.io.IOException;
import java.io.OutputStream;

/* compiled from: src */
/* loaded from: classes.dex */
class r extends OutputStream {
    static final r a = new r();

    private r() {
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        throw new IOException("Stream closed");
    }
}
