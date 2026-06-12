package luaj.lib;

import java.io.InputStream;
import luaj.LuaString;
import luaj.LuaValue;

/* compiled from: src */
/* loaded from: classes.dex */
class d extends InputStream {
    final LuaValue a;
    byte[] b;
    int c;
    int d = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(LuaValue luaValue) {
        this.a = luaValue;
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.d < 0) {
            return -1;
        }
        if (this.d == 0) {
            LuaValue l = this.a.l();
            if (l.F()) {
                this.d = -1;
                return -1;
            }
            LuaString t = l.t();
            this.b = t.b;
            this.c = t.c;
            this.d = t.d;
            if (this.d <= 0) {
                return -1;
            }
        }
        this.d--;
        byte[] bArr = this.b;
        int i = this.c;
        this.c = i + 1;
        return bArr[i] & 255;
    }
}
