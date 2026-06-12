package android.ext;

import android.util.Base64;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* compiled from: src */
/* loaded from: classes.dex */
public class up {
    private final int c;
    private int b = 0;
    private int[] a = new int[32];

    public up(int i) {
        this.c = i;
    }

    public void a(int i) {
        int i2 = this.b;
        int[] iArr = this.a;
        for (int i3 = 0; i3 < i2; i3++) {
            if (iArr[i3] == i) {
                return;
            }
        }
        if (i2 == iArr.length) {
            iArr = Arrays.copyOf(iArr, iArr.length + 32);
            this.a = iArr;
        }
        iArr[i2] = i;
        this.b = i2 + 1;
        a();
    }

    private void a() {
        int i = this.b;
        int[] iArr = this.a;
        ByteBuffer allocate = ByteBuffer.allocate(i * 4);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        for (int i2 = 0; i2 < i; i2++) {
            allocate.putInt(iArr[i2]);
        }
        new qw().putString("used-" + this.c, Base64.encodeToString(allocate.array(), 11)).commit();
    }
}
