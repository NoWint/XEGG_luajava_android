package android.ext;

import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;

/* compiled from: src */
/* loaded from: classes.dex */
public class ir {
    public static final String a(MessageDigest messageDigest) {
        byte[] digest = messageDigest.digest();
        byte[] bArr = new byte[8];
        System.arraycopy(digest, 0, bArr, 0, 4);
        System.arraycopy(digest, digest.length - 4, bArr, 4, 4);
        return Tools.a(bArr);
    }

    public static final String a(Object obj, String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            if (obj instanceof File) {
                FileInputStream fileInputStream = new FileInputStream((File) obj);
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, read);
                }
                fileInputStream.close();
            } else {
                messageDigest.update(obj.toString().getBytes());
            }
            return a(messageDigest);
        } catch (Throwable th) {
            la.c("hash fail", th);
            return th.toString();
        }
    }
}
