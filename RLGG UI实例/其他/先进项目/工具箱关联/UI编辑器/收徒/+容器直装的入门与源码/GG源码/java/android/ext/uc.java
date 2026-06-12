package android.ext;

import java.io.File;
import java.io.FileInputStream;

/* compiled from: src */
/* loaded from: classes.dex */
class uc extends FileInputStream {
    private final /* synthetic */ String a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uc(String str, String str2) {
        super(str);
        this.a = str2;
    }

    @Override // java.io.FileInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        new File(this.a).delete();
    }

    @Override // java.io.FileInputStream
    protected void finalize() {
        super.finalize();
        new File(this.a).delete();
    }
}
