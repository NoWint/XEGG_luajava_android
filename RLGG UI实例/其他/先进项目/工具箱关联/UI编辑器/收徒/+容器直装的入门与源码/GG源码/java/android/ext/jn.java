package android.ext;

import java.io.InputStream;

/* compiled from: src */
/* loaded from: classes.dex */
class jn extends InputStream {
    private final InputStream a;
    private int b = -2017;

    public jn(InputStream inputStream) {
        this.a = inputStream;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int read;
        int i3;
        int i4 = i + i2;
        int i5 = this.b;
        InputStream inputStream = this.a;
        while (i < i4) {
            while (true) {
                if (i5 != -2017) {
                    if (i5 != -1) {
                        read = i5;
                        i3 = -2017;
                        break;
                    }
                    i5 = -2017;
                }
                read = inputStream.read();
                if (read >= 97 && read <= 112) {
                    int i6 = read - 97;
                    i3 = inputStream.read();
                    if (i3 >= 97 && i3 <= 112) {
                        read = ((i3 - 97) * 16) + i6;
                        i3 = i5;
                        break;
                    } else if (read == -1) {
                        i5 = i3;
                    }
                } else if (read != -1) {
                    i3 = i5;
                    break;
                }
            }
            bArr[i] = (byte) read;
            i++;
            i5 = i3;
        }
        this.b = i5;
        return 0;
    }

    @Override // java.io.InputStream
    public int read() {
        int i = this.b;
        if (i != -2017) {
            this.b = -2017;
            return i;
        }
        InputStream inputStream = this.a;
        int read = inputStream.read();
        if (read >= 97 && read <= 112) {
            int i2 = read - 97;
            int read2 = inputStream.read();
            if (read2 >= 97 && read2 <= 112) {
                return ((read2 - 97) * 16) + i2;
            }
            this.b = read2;
            return read;
        }
        return read;
    }
}
