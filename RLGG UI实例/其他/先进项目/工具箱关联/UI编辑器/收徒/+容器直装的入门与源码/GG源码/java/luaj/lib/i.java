package luaj.lib;

import java.io.FileOutputStream;
import luaj.lib.GgLib;

/* compiled from: src */
/* loaded from: classes.dex */
class i extends FileOutputStream {
    final /* synthetic */ GgLib.saveVariable a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(GgLib.saveVariable savevariable, String str) {
        super(str);
        this.a = savevariable;
    }

    @Override // java.io.FileOutputStream, java.io.OutputStream
    public void write(int i) {
        this.a.a.a(1L);
        super.write(i);
    }

    @Override // java.io.FileOutputStream, java.io.OutputStream
    public void write(byte[] bArr) {
        this.a.a.a(bArr.length);
        super.write(bArr);
    }

    @Override // java.io.FileOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.a.a.a(i2);
        super.write(bArr, i, i2);
    }
}
