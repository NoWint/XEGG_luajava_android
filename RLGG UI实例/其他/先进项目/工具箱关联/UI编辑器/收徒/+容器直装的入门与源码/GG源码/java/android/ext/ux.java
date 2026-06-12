package android.ext;

import java.security.MessageDigest;
import java.security.PrivateKey;
import javax.crypto.Cipher;

/* compiled from: src */
/* loaded from: classes.dex */
public class ux {
    byte[] a = {48, 33};
    byte[] b = {48, 9, 6, 5, 43, 14, 3, 2, 26, 5};
    byte[] c = {4, 20};
    MessageDigest e = MessageDigest.getInstance("SHA1");
    Cipher d = Cipher.getInstance("RSA/ECB/PKCS1Padding");

    public void a(PrivateKey privateKey) {
        this.d.init(1, privateKey);
    }

    public void a(byte[] bArr) {
        this.e.update(bArr);
    }

    public byte[] a() {
        this.d.update(this.a);
        this.d.update(this.b);
        this.d.update(this.c);
        this.d.update(this.e.digest());
        return this.d.doFinal();
    }
}
