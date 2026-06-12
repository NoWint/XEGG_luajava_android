package luaj.lib;

import android.ext.Tools;
import android.ext.la;
import android.ext.qk;
import catch_.me_.if_.you_.can_.R;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class c {
    File a;
    OutputStream b;
    File c;
    DataOutputStream d;
    final /* synthetic */ BaseLib e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(BaseLib baseLib, String str) {
        this.e = baseLib;
        this.a = new File(String.valueOf(str) + ".load");
        this.b = new BufferedOutputStream(new FileOutputStream(this.a));
        this.c = new File(String.valueOf(str) + ".load.tmp");
        this.d = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(this.c)));
    }

    int a(byte[] bArr, int i, int i2) {
        char charAt;
        String octalString = Integer.toOctalString(i2);
        int length = octalString.length();
        int i3 = i - length;
        int i4 = 0;
        int i5 = 0;
        while (i4 < length) {
            bArr[i3 + i4] = (byte) octalString.charAt(i4);
            i4++;
            i5 = ((charAt & 255) - 48) + i5;
        }
        return i5;
    }

    void a(byte[] bArr, int i, String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i + i2] = (byte) str.charAt(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        byte[] bArr;
        char charAt;
        try {
            this.b.close();
            this.d.close();
            int length = ((int) this.c.length()) / 4;
            if (length > 0) {
                Tools.b(String.valueOf(qk.a((int) R.string.debug_load)) + ": " + length);
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(this.a));
                DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(this.c)));
                byte[] bArr2 = this.e.b;
                if (bArr2 == null) {
                    byte[] bArr3 = new byte[8192];
                    this.e.b = bArr3;
                    bArr = bArr3;
                } else {
                    bArr = bArr2;
                }
                byte[] bArr4 = new byte[512];
                a(bArr4, 0, "load_0000000.lua");
                a(bArr4, 100, "0000666\u00000000000\u00000002004\u000000000000000\u000000000000000\u0000000000\u0000 0");
                a(bArr4, 257, "ustar00\u0000root");
                a(bArr4, 297, "sdcard_r");
                int i = -64;
                for (int i2 = 0; i2 < 512; i2++) {
                    byte b = bArr4[i2];
                    if (b != 0) {
                        i += b & 255;
                    }
                }
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(String.valueOf(this.a.getAbsolutePath()) + ".tar"));
                for (int i3 = 0; i3 < length; i3++) {
                    int readInt = dataInputStream.readInt();
                    String num = Integer.toString(i3);
                    int length2 = num.length();
                    int i4 = 12 - length2;
                    int i5 = i;
                    for (int i6 = 0; i6 < length2; i6++) {
                        i5 += (charAt & 255) - 48;
                        bArr4[i4 + i6] = (byte) num.charAt(i6);
                    }
                    a(bArr4, 124, "00000000000\u000000000000000\u0000000000\u0000");
                    a(bArr4, 154, a(bArr4, 135, readInt) + i5);
                    bufferedOutputStream.write(bArr4, 0, 512);
                    int i7 = readInt;
                    while (i7 > 0) {
                        int read = bufferedInputStream.read(bArr, 0, i7 > bArr.length ? bArr.length : i7);
                        if (read > 0) {
                            bufferedOutputStream.write(bArr, 0, read);
                            i7 -= read;
                        }
                    }
                    int i8 = readInt % 512;
                    if (i8 > 0) {
                        int i9 = 512 - i8;
                        Arrays.fill(bArr, 0, i9, (byte) 0);
                        bufferedOutputStream.write(bArr, 0, i9);
                    }
                }
                bufferedOutputStream.write(new byte[1024], 0, 1024);
                bufferedOutputStream.close();
                bufferedInputStream.close();
                dataInputStream.close();
            }
            this.a.delete();
            this.c.delete();
        } catch (Throwable th) {
            la.a("Failed end log load for " + this.a, th);
        }
    }
}
