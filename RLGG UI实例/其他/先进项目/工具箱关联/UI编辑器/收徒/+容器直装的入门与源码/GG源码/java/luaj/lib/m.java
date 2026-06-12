package luaj.lib;

import android.ext.MainService;
import android.ext.qh;
import java.nio.ByteBuffer;

/* compiled from: src */
/* loaded from: classes.dex */
final class m {
    final byte a;
    final String d;
    boolean b = true;
    int c = 1;
    int e = 0;
    char f = 0;
    int g = 0;
    int h = 0;
    int i = 0;
    final byte[] j = new byte[8];
    final ByteBuffer k = ByteBuffer.wrap(this.j);

    public m(String str) {
        byte b = 8;
        this.d = str;
        qh qhVar = MainService.instance.ap;
        this.a = (qhVar == null || !qhVar.n) ? (byte) 4 : (byte) 4;
    }

    public String toString() {
        return "PackState [size_t=" + ((int) this.a) + ", islittle=" + this.b + ", maxalign=" + this.c + ", fmt=" + this.d + ", pos=" + this.e + ", last=" + this.f + ", align=" + this.g + ", ntoalign=" + this.h + ", size=" + this.i + "]";
    }
}
