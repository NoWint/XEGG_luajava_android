package android.ext;

import java.io.FileInputStream;

/* compiled from: src */
/* loaded from: classes.dex */
public class Cat {
    public static void main(String[] strArr) {
        byte[] bArr = new byte[8192];
        FileInputStream fileInputStream = new FileInputStream(strArr[0]);
        while (true) {
            int read = fileInputStream.read(bArr);
            if (read >= 0) {
                System.out.write(bArr, 0, read);
            } else {
                fileInputStream.close();
                return;
            }
        }
    }
}
