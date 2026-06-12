package android.ext;

import java.nio.ByteBuffer;

/* compiled from: src */
/* loaded from: classes.dex */
class kh {
    short a;
    short b;
    int c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kh(ByteBuffer byteBuffer) {
        byteBuffer.position(0);
        this.a = byteBuffer.getShort();
        this.b = byteBuffer.getShort();
        this.c = byteBuffer.getInt();
    }
}
