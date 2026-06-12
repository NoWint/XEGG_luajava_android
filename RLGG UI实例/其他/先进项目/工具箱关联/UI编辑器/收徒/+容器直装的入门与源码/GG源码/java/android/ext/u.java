package android.ext;

import java.io.BufferedOutputStream;
import java.io.OutputStream;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipOutputStream;

/* compiled from: src */
/* loaded from: classes.dex */
public class u extends ZipOutputStream {
    private boolean a;
    private v b;
    private ZipEntry c;
    private final CRC32 d;
    private int e;
    private byte[] f;

    public u(OutputStream outputStream) {
        super(new v(new BufferedOutputStream(outputStream, 65536)));
        this.a = false;
        this.c = null;
        this.d = new CRC32();
        this.e = 0;
        this.f = null;
        this.b = v.b;
        setComment("");
    }

    @Override // java.util.zip.ZipOutputStream
    public void setComment(String str) {
        super.setComment("");
    }

    @Override // java.util.zip.ZipOutputStream
    public void putNextEntry(ZipEntry zipEntry) {
        zipEntry.setComment("");
        this.c = zipEntry;
        if (this.a) {
            closeEntry();
        }
        if (zipEntry.getMethod() == 0) {
            flush();
            zipEntry.setExtra(new byte[(4 - (((this.b.a + 30) + zipEntry.getName().length()) % 4)) % 4]);
            zipEntry.setCompressedSize(zipEntry.getSize());
        }
        super.putNextEntry(zipEntry);
        this.a = true;
        this.d.reset();
        this.e = 0;
    }

    @Override // java.util.zip.ZipOutputStream
    public void closeEntry() {
        try {
            if (this.c != null && this.c.getMethod() == 0) {
                if (this.c.getCrc() != this.d.getValue()) {
                    la.b("CRC mismatch: " + a(this.c) + " != " + this.d.getValue());
                    this.c.setCrc(this.d.getValue());
                }
                if (this.c.getSize() != this.e) {
                    la.b("Size mismatch: " + a(this.c) + " != " + this.e);
                    this.c.setSize(this.e);
                }
                if (this.c.getCompressedSize() != this.c.getSize()) {
                    la.b("CompressedSize mismatch: " + a(this.c) + " != " + this.c.getSize());
                    this.c.setCompressedSize(this.c.getSize());
                }
            }
            super.closeEntry();
            this.a = false;
            this.c = null;
            this.d.reset();
            this.e = 0;
        } catch (ZipException e) {
            throw new RuntimeException("Failed close entry: " + a(this.c), e);
        }
    }

    public static String a(ZipEntry zipEntry) {
        return zipEntry == null ? "null" : String.valueOf(zipEntry.getName()) + ", method: " + zipEntry.getMethod() + ", crc: 0x" + Long.toHexString(zipEntry.getCrc()) + ", size: " + zipEntry.getSize() + ", compressed size: " + zipEntry.getCompressedSize();
    }

    @Override // java.util.zip.ZipOutputStream, java.util.zip.DeflaterOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        super.write(bArr, i, i2);
        this.d.update(bArr, i, i2);
        this.e += i2;
    }

    @Override // java.util.zip.DeflaterOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) {
        byte[] bArr = this.f;
        if (bArr == null) {
            bArr = new byte[1];
            this.f = bArr;
        }
        bArr[0] = (byte) (i & 255);
        write(bArr, 0, 1);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }
}
