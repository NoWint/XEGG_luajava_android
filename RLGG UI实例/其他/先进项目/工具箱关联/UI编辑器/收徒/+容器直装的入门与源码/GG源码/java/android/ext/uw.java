package android.ext;

import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* compiled from: src */
/* loaded from: classes.dex */
public class uw {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v98, types: [int] */
    public static void a(File file) {
        RandomAccessFile randomAccessFile;
        boolean z;
        boolean z2 = false;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                try {
                    long length = randomAccessFile.length();
                    long length2 = length == 0 ? file.length() : length;
                    if (length2 < 22) {
                        la.b("ZipAlign small size: " + length2 + ' ' + file.getAbsolutePath());
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                                return;
                            } catch (Throwable th) {
                                la.c("ZipAlign close fail", th);
                                return;
                            }
                        }
                        return;
                    }
                    long j = length2 - 22;
                    randomAccessFile.seek(10 + j);
                    short b = b(randomAccessFile);
                    int a = a(randomAccessFile);
                    long a2 = a(randomAccessFile);
                    if (b <= 0 || a <= 0 || a2 <= 0) {
                        la.b("bad values in EOCD: " + ((int) b) + ", " + a + ", " + a2);
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                                return;
                            } catch (Throwable th2) {
                                la.c("ZipAlign close fail", th2);
                                return;
                            }
                        }
                        return;
                    }
                    long j2 = a2 + a;
                    if (j != j2) {
                        la.b("Bad EOCD offset: " + j + " != " + j2 + " = " + a2 + " + " + a);
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                                return;
                            } catch (Throwable th3) {
                                la.c("ZipAlign close fail", th3);
                                return;
                            }
                        }
                        return;
                    }
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(a + 22);
                        long j3 = a2;
                        long j4 = a2;
                        for (short s = 0; s < b; s++) {
                            if (j4 >= j2) {
                                la.b("Out from CD: " + ((int) s) + " from " + ((int) b) + "; " + j4 + " > " + j2 + " = " + a2 + " + " + a);
                                if (randomAccessFile != null) {
                                    try {
                                        randomAccessFile.close();
                                        return;
                                    } catch (Throwable th4) {
                                        la.c("ZipAlign close fail", th4);
                                        return;
                                    }
                                }
                                return;
                            }
                            randomAccessFile.seek(28 + j4);
                            short b2 = b(randomAccessFile);
                            short b3 = b(randomAccessFile);
                            if (b2 < 0 || b3 < 0) {
                                la.b("bad len for " + ((int) s) + ": " + ((int) b2) + ", " + ((int) b3));
                                if (randomAccessFile != null) {
                                    try {
                                        randomAccessFile.close();
                                        return;
                                    } catch (Throwable th5) {
                                        la.c("ZipAlign close fail", th5);
                                        return;
                                    }
                                }
                                return;
                            }
                            byte[] bArr = new byte[b2 + 46];
                            randomAccessFile.seek(j4);
                            int i = 0;
                            int length3 = bArr.length;
                            int i2 = 0;
                            while (true) {
                                if (i2 >= 10 || i >= length3) {
                                    break;
                                }
                                int read = randomAccessFile.read(bArr, i, length3 - i);
                                if (read < 0) {
                                    la.b("Failed read buf 1: " + ((int) s) + "; " + read + ' ' + i + ' ' + length3);
                                    break;
                                } else {
                                    i += read;
                                    i2++;
                                }
                            }
                            if (i < length3) {
                                la.b("Failed read buf 2: " + ((int) s) + "; " + i + ' ' + length3);
                            }
                            bArr[30] = 0;
                            bArr[31] = 0;
                            byteArrayOutputStream.write(bArr);
                            j4 += bArr.length + b3;
                            j3 += bArr.length;
                        }
                        if (j4 != j2) {
                            la.b("Not all CD reads: " + j4 + " != " + j2 + " = " + a2 + " + " + a);
                            if (randomAccessFile != null) {
                                try {
                                    randomAccessFile.close();
                                    return;
                                } catch (Throwable th6) {
                                    la.c("ZipAlign close fail", th6);
                                    return;
                                }
                            }
                            return;
                        }
                        if (j4 != j3) {
                            byte[] bArr2 = new byte[22];
                            randomAccessFile.seek(j4);
                            randomAccessFile.read(bArr2);
                            int i3 = (int) (j3 - a2);
                            bArr2[12] = (byte) ((i3 >>> 0) & 255);
                            bArr2[13] = (byte) ((i3 >>> 8) & 255);
                            bArr2[14] = (byte) ((i3 >>> 16) & 255);
                            bArr2[15] = (byte) ((i3 >>> 24) & 255);
                            byteArrayOutputStream.write(bArr2);
                            j4 += bArr2.length;
                            j3 += bArr2.length;
                            if (j4 != length2) {
                                la.b("Fail check end: " + j4 + " != " + length2);
                                if (randomAccessFile != null) {
                                    try {
                                        randomAccessFile.close();
                                        return;
                                    } catch (Throwable th7) {
                                        la.c("ZipAlign close fail", th7);
                                        return;
                                    }
                                }
                                return;
                            } else if (j3 > j4) {
                                la.b("Fail check new length: " + j3 + " > " + j4);
                                if (randomAccessFile != null) {
                                    try {
                                        randomAccessFile.close();
                                        return;
                                    } catch (Throwable th8) {
                                        la.c("ZipAlign close fail", th8);
                                        return;
                                    }
                                }
                                return;
                            } else {
                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                if (j3 != byteArray.length + a2) {
                                    la.b("Fail check buffer length: " + j3 + " != " + a2 + byteArray.length);
                                    if (randomAccessFile != null) {
                                        try {
                                            randomAccessFile.close();
                                            return;
                                        } catch (Throwable th9) {
                                            la.c("ZipAlign close fail", th9);
                                            return;
                                        }
                                    }
                                    return;
                                }
                                randomAccessFile.seek(a2);
                                z = true;
                                try {
                                    randomAccessFile.write(byteArray);
                                    randomAccessFile.setLength(j3);
                                } catch (IOException e) {
                                    e = e;
                                    z2 = z;
                                    la.c("ZipAlign fail", e);
                                    if (z2) {
                                        throw e;
                                    }
                                    if (randomAccessFile != null) {
                                        try {
                                            randomAccessFile.close();
                                            return;
                                        } catch (Throwable th10) {
                                            la.c("ZipAlign close fail", th10);
                                            return;
                                        }
                                    }
                                    return;
                                }
                            }
                        } else {
                            z = false;
                        }
                        randomAccessFile.close();
                        randomAccessFile = null;
                        la.a("ZipAlign fix: " + j4 + " => " + j3 + " (" + (j4 - j3) + ')');
                        if (0 != 0) {
                            try {
                                randomAccessFile.close();
                            } catch (Throwable th11) {
                                la.c("ZipAlign close fail", th11);
                            }
                        }
                    } catch (Throwable th12) {
                        la.b("ZipAlign failed alloc: " + (a + 22), th12);
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (Throwable th13) {
                                la.c("ZipAlign close fail", th13);
                            }
                        }
                    }
                } catch (Throwable th14) {
                    th = th14;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (Throwable th15) {
                            la.c("ZipAlign close fail", th15);
                        }
                    }
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (IOException e3) {
            e = e3;
            randomAccessFile = null;
        } catch (Throwable th16) {
            th = th16;
            randomAccessFile = null;
        }
    }

    private static short b(RandomAccessFile randomAccessFile) {
        int read = randomAccessFile.read();
        int read2 = randomAccessFile.read();
        if ((read | read2) < 0) {
            throw new EOFException();
        }
        return (short) ((read << 0) + (read2 << 8));
    }

    public static int a(RandomAccessFile randomAccessFile) {
        int read = randomAccessFile.read();
        int read2 = randomAccessFile.read();
        int read3 = randomAccessFile.read();
        int read4 = randomAccessFile.read();
        if ((read | read2 | read3 | read4) < 0) {
            throw new EOFException();
        }
        return (read << 0) + (read2 << 8) + (read3 << 16) + (read4 << 24);
    }
}
