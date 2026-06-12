package android.ext;

import android.os.Build;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.zip.CRC32;

/* compiled from: src */
/* loaded from: classes.dex */
public class InOut {
    public static volatile boolean a;
    public static volatile int b;
    public static volatile int byteOrderMask = 15;
    static boolean c;
    private byte[] h;
    private ByteBuffer i;
    private byte[] j;
    private int k;
    private boolean l;
    private final ArrayList m;
    private volatile boolean n;
    private CRC32 o = null;
    private InputStream d = null;
    private OutputStream e = null;
    private byte[] f = new byte[4];
    private ByteBuffer g = ByteBuffer.wrap(this.f);

    static {
        boolean z;
        if (Build.VERSION.SDK_INT >= 21) {
            try {
            } catch (Throwable th) {
                la.a(th);
            }
            if (Build.SUPPORTED_64_BIT_ABIS != null) {
                if (Build.SUPPORTED_64_BIT_ABIS.length > 0) {
                    z = true;
                    a(z);
                    c = false;
                }
            }
            z = false;
            a(z);
            c = false;
        }
        z = false;
        a(z);
        c = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(boolean z) {
        a = z;
        b = z ? 8 : 4;
    }

    public InOut() {
        this.g.order(ByteOrder.LITTLE_ENDIAN);
        this.h = new byte[8];
        this.i = ByteBuffer.wrap(this.h);
        this.i.order(ByteOrder.LITTLE_ENDIAN);
        this.j = new byte[1024];
        this.m = new ArrayList();
        this.n = false;
    }

    public void a(InputStream inputStream, OutputStream outputStream) {
        InputStream inputStream2;
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 65536);
        if (c) {
            inputStream2 = bufferedInputStream;
        } else {
            jo joVar = new jo(outputStream);
            inputStream2 = new jn(bufferedInputStream);
            outputStream = joVar;
        }
        this.d = inputStream2;
        this.e = outputStream;
    }

    public static String a(byte[] bArr, int i, int i2) {
        if (bArr.length - 1 < i) {
            la.b("dump failed: " + bArr.length + ' ' + i + ' ' + i2);
            return "";
        }
        if (bArr.length < i + i2) {
            la.b("dump fix len: " + bArr.length + ' ' + i + ' ' + i2);
            i2 = bArr.length - i;
        }
        StringBuilder sb = new StringBuilder();
        int i3 = i;
        while (i3 < i2) {
            int i4 = i2 - i3;
            if (i4 > 32) {
                i4 = 32;
            }
            sb.append(b(bArr, i + i3, i4));
            sb.append('\'');
            sb.append(new String(bArr, i + i3, i4));
            sb.append("'\n");
            i3 = i4 + i3;
        }
        return sb.toString();
    }

    public byte[] a() {
        int i = 0;
        byte[] bArr = null;
        while (true) {
            byte h = h();
            if (h == 2) {
                break;
            } else if (bArr != null || (h != 10 && h != 59)) {
                if (bArr == null) {
                    bArr = new byte[4096];
                }
                if (i < bArr.length) {
                    bArr[i] = h;
                }
                i++;
                if (i >= bArr.length || i % 10 == 0) {
                    la.a("Bad input from daemon: " + ((int) h) + '\n' + a(bArr, 0, i));
                }
            }
        }
        if (bArr != null) {
            la.a("Bad input from daemon 2: " + i + '\n' + a(bArr, 0, i));
        }
        int i2 = i();
        if (i2 > 10485760 || i2 < 2) {
            la.a("Bad len from daemon: " + i2 + ' ' + a(this.f, 0, 4));
            return null;
        }
        byte[] bArr2 = new byte[i2];
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            int read = this.d.read(bArr2, i3, i2 - i3);
            if (read <= 0) {
                if (i3 == 0) {
                    i3 = -1;
                }
            } else {
                i3 += read;
            }
        }
        if (bArr2[i2 - 1] != 3) {
            la.a("Bad end from daemon: " + ((int) bArr2[i2 - 1]) + "; " + ((int) bArr2[0]) + "; " + (i2 - 1) + "; " + i3);
            return null;
        }
        return bArr2;
    }

    private byte h() {
        int read;
        do {
            read = this.d.read();
        } while (read == -1);
        return (byte) read;
    }

    private int i() {
        int i = 0;
        while (true) {
            if (i >= 4) {
                break;
            }
            int read = this.d.read(this.f, i, 4 - i);
            if (read <= 0) {
                if (i == 0) {
                }
            } else {
                i += read;
            }
        }
        return this.g.getInt(0);
    }

    private void a(int i, boolean z) {
        byte[] bArr = this.j;
        int i2 = this.k;
        if (i2 + i > bArr.length || z) {
            byte[] bArr2 = new byte[i2 + i + 1024];
            if (i2 > 0) {
                System.arraycopy(bArr, 0, bArr2, 0, i2);
            }
            this.j = bArr2;
        }
    }

    public void b() {
        if (this.j.length > 65536) {
            this.l = true;
        }
    }

    public void a(byte[] bArr, int i) {
        a(i, false);
        System.arraycopy(bArr, 0, this.j, this.k, i);
        this.k += i;
    }

    public void a(byte b2) {
        a(1, false);
        byte[] bArr = this.j;
        int i = this.k;
        this.k = i + 1;
        bArr[i] = b2;
    }

    public void a(byte b2, byte b3, int i) {
        a(i + 2, this.l);
        this.l = false;
        byte[] bArr = this.j;
        bArr[0] = b3;
        bArr[1] = b2;
        this.k = 2;
    }

    public void a(int i) {
        this.i.putInt(0, byteOrderMask ^ i);
        a(this.h, 4);
    }

    public void a(long j) {
        if (a) {
            this.i.putLong(0, j);
            a(this.h, 8);
            return;
        }
        a((int) j);
    }

    public void b(long j) {
        this.i.putLong(0, j);
        a(this.h, 8);
    }

    public synchronized void c() {
        if (!this.n) {
            if (this.k > 0) {
                synchronized (this.m) {
                    this.m.add(Arrays.copyOf(this.j, this.k));
                    if (this.m.size() > 40) {
                        byte[] bArr = (byte[]) this.m.remove(0);
                    }
                }
            }
        } else {
            f();
            this.e.write(this.j, 0, this.k);
            this.e.flush();
        }
        this.k = 0;
    }

    public long d() {
        if (this.k < 2) {
            return 0L;
        }
        CRC32 crc32 = this.o;
        if (crc32 == null) {
            crc32 = new CRC32();
            this.o = crc32;
        } else {
            crc32.reset();
        }
        crc32.update(this.j, 2, this.k);
        return crc32.getValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(byte[] bArr, int i, int i2) {
        if (bArr.length - 1 < i) {
            la.b("bytesToHex failed: " + bArr.length + ' ' + i + ' ' + i2);
            return "";
        }
        if (bArr.length < i + i2) {
            la.b("bytesToHex fix len: " + bArr.length + ' ' + i + ' ' + i2);
            i2 = bArr.length - i;
        }
        char[] cArr = new char[i2 * 3];
        char[] cArr2 = iu.a;
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = bArr[i + i3] & 255;
            cArr[(i3 * 3) + 0] = cArr2[i4 >>> 4];
            cArr[(i3 * 3) + 1] = cArr2[i4 & 15];
            cArr[(i3 * 3) + 2] = ' ';
        }
        return new String(cArr);
    }

    public void e() {
        this.k = 0;
    }

    public void b(boolean z) {
        this.n = z;
    }

    public void f() {
        ArrayList arrayList = this.m;
        synchronized (arrayList) {
            if (arrayList.size() > 0) {
                OutputStream outputStream = this.e;
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    outputStream.write((byte[]) it.next());
                    outputStream.flush();
                }
                arrayList.clear();
                arrayList.trimToSize();
            }
        }
    }

    public boolean g() {
        return this.n;
    }
}
