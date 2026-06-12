package android.lang;

import java.io.InputStream;

/* compiled from: src */
/* loaded from: classes.dex */
class q extends InputStream {
    static final q a = new q();

    private q() {
    }

    @Override // java.io.InputStream
    public int read() {
        return -1;
    }

    @Override // java.io.InputStream
    public int available() {
        return 0;
    }
}
