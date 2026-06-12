package lasm;

import java.io.IOException;
import java.io.PrintStream;

/* compiled from: src */
/* loaded from: classes.dex */
public class f implements b {
    static final long[] b = {-2, -1, -1, -1};
    static final long[] c = {0, 0, -1, -1};
    static final int[] d = {3, 0, 5, 49, 33, 34, 39, 40, 44, 45, 1, 2, 1, 2, 0, 5, 46, 3, 0, 5, 27, 32, 22, 24, 25, 17, 19, 20, 33, 34, 39, 40, 30, 31, 37, 38, 41, 42, 50, 31, 32, 37, 38, 42, 43, 1, 2, 44, 3, 0, 5, 25, 30, 20, 22, 23, 15, 17, 18, 31, 32, 37, 38, 47, 48, 28, 29, 35, 36, 39, 40, 37, 50, 39, 40, 45, 46, 32, 33, 1, 2, 37, 26, 38, 34, 3, 0, 5, 39, 40, 45, 46, 29, 30, 43, 44, 51, 35, 36, 41, 42, 46, 47, 3, 4, 3, 4, 2, 7, 48, 5, 2, 7, 29, 34, 24, 26, 27, 19, 21, 22, 5, 2, 7, 35, 36, 41, 42, 32, 33};
    public static final String[] f;
    public static final String[] g;
    public static final int[] h;
    static final long[] i;
    static final long[] j;
    static final long[] k;
    protected h l;
    protected char m;
    int p;
    int q;
    int r;
    int s;
    public PrintStream a = System.out;
    private final int[] t = new int[52];
    private final int[] u = new int[104];
    int n = 3;
    int o = 3;

    private final int a(int i2, long j2, long j3) {
        switch (i2) {
            case 0:
                if (((-4611686018427387904L) & j2) == 0 && (3071 & j3) == 0) {
                    return (14 & j2) != 0 ? 50 : -1;
                }
                return 28;
            default:
                return -1;
        }
    }

    private final int b(int i2, long j2, long j3) {
        return b(a(i2, j2, j3), i2 + 1);
    }

    private int a(int i2, int i3) {
        this.s = i3;
        this.r = i2;
        return i2 + 1;
    }

    private int c() {
        switch (this.m) {
            case '\t':
                return a(0, 2, 50);
            case '\f':
                return a(0, 3, 50);
            case ' ':
                return a(0, 1, 50);
            case '.':
                return a(-4611686018427387904L, 3071L);
            case 'A':
                return a(131072L, 0L);
            case 'B':
                return a(263882790666240L, 0L);
            case 'C':
                return a(1128107587141632L, 0L);
            case 'D':
                return a(1048576L, 0L);
            case 'E':
                return a(268435456L, 0L);
            case 'F':
                return a(2252005972115456L, 0L);
            case 'G':
                return a(4503599627374080L, 0L);
            case 'I':
                return a(8796093022208L, 0L);
            case 'J':
                return a(134217728L, 0L);
            case 'L':
                return a(1644167616L, 0L);
            case 'M':
                return a(2621472L, 0L);
            case 'N':
                return a(16809984L, 0L);
            case 'O':
                return a(9007199254740992L, 0L);
            case 'P':
                return a(4194304L, 0L);
            case 'R':
                return a(34359738368L, 0L);
            case 'S':
                return a(54888719970562048L, 0L);
            case 'T':
                return a(848256040960L, 0L);
            case 'U':
                return a(8388608L, 0L);
            case 'V':
                return a(4398046511104L, 0L);
            case '[':
                return a(0, 88);
            case ']':
                return a(0, 89);
            case 'f':
                return a(288230376151711744L, 0L);
            case 'n':
                return a(72057594037927936L, 0L);
            case 't':
                return a(144115188075855872L, 0L);
            default:
                return b(6, 0);
        }
    }

    private int a(long j2, long j3) {
        try {
            this.m = this.l.c();
            switch (this.m) {
                case '.':
                    if ((2048 & j3) != 0) {
                        return a(1, 75);
                    }
                    break;
                case 'A':
                    return a(j2, 39608188403712L, j3, 0L);
                case 'D':
                    return a(j2, 8796093153280L, j3, 0L);
                case 'E':
                    if ((1073741824 & j2) != 0) {
                        this.s = 30;
                        this.r = 1;
                    }
                    return a(j2, 18015538856984064L, j3, 0L);
                case 'F':
                    return a(j2, 824633720832L, j3, 0L);
                case 'H':
                    return a(j2, 844424930131968L, j3, 0L);
                case 'I':
                    return a(j2, 1048576L, j3, 0L);
                case 'K':
                    return a(j2, 36028797018963968L, j3, 0L);
                case 'L':
                    return a(j2, 2199023255552L, j3, 0L);
                case 'M':
                    return a(j2, 134217728L, j3, 0L);
                case 'N':
                    return a(j2, 17592194433024L, j3, 0L);
                case 'O':
                    return a(j2, 5700074526999008L, j3, 0L);
                case 'P':
                    if ((9007199254740992L & j2) != 0) {
                        return a(1, 53);
                    }
                    break;
                case 'Q':
                    if ((268435456 & j2) != 0) {
                        return a(1, 28);
                    }
                    break;
                case 'T':
                    if ((536870912 & j2) != 0) {
                        return a(1, 29);
                    }
                    break;
                case 'U':
                    return a(j2, 2251799814471680L, j3, 0L);
                case 'X':
                    return a(j2, 140737488355328L, j3, 0L);
                case 'a':
                    return a(j2, 288230376151711744L, j3, 0L);
                case 'e':
                    return a(j2, 0L, j3, 640L);
                case 'f':
                    return a(j2, 0L, j3, 256L);
                case 'i':
                    return a(j2, 72057594037927936L, j3, 4L);
                case 'l':
                    return a(j2, Long.MIN_VALUE, j3, 97L);
                case 'm':
                    return a(j2, 0L, j3, 8L);
                case 'n':
                    return a(j2, 0L, j3, 2L);
                case 'r':
                    return a(j2, 144115188075855872L, j3, 0L);
                case 's':
                    return a(j2, 4611686018427387904L, j3, 0L);
                case 'u':
                    return a(j2, 0L, j3, 16L);
            }
            return b(0, j2, j3);
        } catch (IOException e) {
            a(0, j2, j3);
            return 1;
        }
    }

    private int a(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return b(0, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'A':
                    return b(j6, 448L, j7, 0L);
                case 'B':
                    if ((262144 & j6) != 0) {
                        return a(2, 18);
                    }
                    break;
                case 'D':
                    if ((131072 & j6) != 0) {
                        return a(2, 17);
                    }
                    if ((2097152 & j6) != 0) {
                        return a(2, 21);
                    }
                    break;
                case 'I':
                    return b(j6, 36037610291855360L, j7, 0L);
                case 'L':
                    if ((524288 & j6) != 0) {
                        return a(2, 19);
                    }
                    if ((281474976710656L & j6) != 0) {
                        return a(2, 48);
                    }
                    return b(j6, 8590000128L, j7, 0L);
                case 'M':
                    if ((8388608 & j6) != 0) {
                        return a(2, 23);
                    }
                    break;
                case 'N':
                    if ((33554432 & j6) != 0) {
                        return a(2, 25);
                    }
                    return b(j6, 3412884159725568L, j7, 0L);
                case 'O':
                    return b(j6, 161353331376128L, j7, 0L);
                case 'P':
                    if ((134217728 & j6) != 0) {
                        return a(2, 27);
                    }
                    break;
                case 'R':
                    if ((70368744177664L & j6) != 0) {
                        return a(2, 46);
                    }
                    if ((562949953421312L & j6) != 0) {
                        return a(2, 49);
                    }
                    return b(j6, 4604204941312L, j7, 0L);
                case 'S':
                    return b(j6, 6442450944L, j7, 0L);
                case 'T':
                    if ((16777216 & j6) != 0) {
                        return a(2, 24);
                    }
                    return b(j6, 22519132008250880L, j7, 0L);
                case 'V':
                    if ((1048576 & j6) != 0) {
                        return a(2, 20);
                    }
                    return b(j6, 32L, j7, 0L);
                case 'W':
                    if ((4194304 & j6) != 0) {
                        return a(2, 22);
                    }
                    return b(j6, 32768L, j7, 0L);
                case 'a':
                    return b(j6, 0L, j7, 9L);
                case 'i':
                    return b(j6, Long.MIN_VALUE, j7, 32L);
                case 'l':
                    if ((72057594037927936L & j6) != 0) {
                        return a(2, 56);
                    }
                    return b(j6, 288230376151711744L, j7, 0L);
                case 'n':
                    return b(j6, 0L, j7, 640L);
                case 'o':
                    return b(j6, 4611686018427387904L, j7, 64L);
                case 'p':
                    return b(j6, 0L, j7, 16L);
                case 's':
                    return b(j6, 0L, j7, 4L);
                case 'u':
                    return b(j6, 144115188075855872L, j7, 258L);
            }
            return b(1, j6, j7);
        } catch (IOException e) {
            a(1, j6, j7);
            return 2;
        }
    }

    private int b(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return b(1, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'A':
                    return c(j6, 4398046511104L, j7, 0L);
                case 'C':
                    return c(j6, 2251799880794112L, j7, 0L);
                case 'D':
                    if ((35184372088832L & j6) != 0) {
                        return a(3, 45);
                    }
                    return c(j6, 448L, j7, 0L);
                case 'E':
                    if ((32 & j6) != 0) {
                        return a(3, 5);
                    }
                    break;
                case 'F':
                    if ((65536 & j6) != 0) {
                        return a(3, 16);
                    }
                    break;
                case 'L':
                    if ((8589934592L & j6) != 0) {
                        return a(3, 33);
                    }
                    return c(j6, 1185410973696L, j7, 0L);
                case 'O':
                    return c(j6, 4503599627370496L, j7, 0L);
                case 'P':
                    return c(j6, 36028934457917440L, j7, 0L);
                case 'R':
                    if ((140737488355328L & j6) != 0) {
                        return a(3, 47);
                    }
                    return c(j6, 824633720832L, j7, 0L);
                case 'S':
                    return c(j6, 1128098930098176L, j7, 0L);
                case 'T':
                    if ((2147483648L & j6) != 0) {
                        this.s = 31;
                        this.r = 3;
                    } else if ((17592186044416L & j6) != 0) {
                        return a(3, 44);
                    }
                    return c(j6, 4295023616L, j7, 0L);
                case 'U':
                    return c(j6, 34359747072L, j7, 0L);
                case 'V':
                    if ((8796093022208L & j6) != 0) {
                        return a(3, 43);
                    }
                    break;
                case '_':
                    return c(j6, 18014398509481984L, j7, 4L);
                case 'c':
                    return c(j6, 0L, j7, 64L);
                case 'd':
                    if ((512 & j7) != 0) {
                        this.s = 73;
                        this.r = 3;
                    }
                    return c(j6, 0L, j7, 128L);
                case 'e':
                    if ((144115188075855872L & j6) != 0) {
                        return a(3, 57);
                    }
                    break;
                case 'm':
                    return c(j6, 0L, j7, 2L);
                case 'n':
                    return c(j6, Long.MIN_VALUE, j7, 288L);
                case 's':
                    return c(j6, 288230376151711744L, j7, 1L);
                case 'u':
                    return c(j6, 4611686018427387904L, j7, 0L);
                case 'v':
                    return c(j6, 0L, j7, 16L);
                case 'x':
                    return c(j6, 0L, j7, 8L);
            }
            return b(2, j6, j7);
        } catch (IOException e) {
            a(2, j6, j7);
            return 3;
        }
    }

    private int c(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return b(2, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case ' ':
                    return d(j6, 0L, j7, 128L);
                case 'A':
                    return d(j6, 67165184L, j7, 0L);
                case 'B':
                    return d(j6, 128L, j7, 0L);
                case 'C':
                    return d(j6, 292057776128L, j7, 0L);
                case 'I':
                    return d(j6, 1099511627776L, j7, 0L);
                case 'K':
                    if ((64 & j6) != 0) {
                        return a(4, 6);
                    }
                    break;
                case 'L':
                    return d(j6, 549755813888L, j7, 0L);
                case 'N':
                    return d(j6, 256L, j7, 0L);
                case 'O':
                    return d(j6, 68719476736L, j7, 0L);
                case 'P':
                    return d(j6, 8704L, j7, 0L);
                case 'R':
                    return d(j6, 4569845202944L, j7, 0L);
                case 'S':
                    return d(j6, 4294967296L, j7, 0L);
                case 'T':
                    if ((1125899906842624L & j6) != 0) {
                        return a(4, 50);
                    }
                    return d(j6, 18014398509481984L, j7, 0L);
                case 'U':
                    return d(j6, 2199023255552L, j7, 0L);
                case '[':
                    if ((2251799813685248L & j6) != 0) {
                        return a(4, 51);
                    }
                    if ((4503599627370496L & j6) != 0) {
                        return a(4, 52);
                    }
                    break;
                case '_':
                    return d(j6, 36028797018963968L, j7, 0L);
                case 'a':
                    return d(j6, 0L, j7, 80L);
                case 'c':
                    if ((256 & j7) != 0) {
                        return a(4, 72);
                    }
                    break;
                case 'e':
                    if ((288230376151711744L & j6) != 0) {
                        return a(4, 58);
                    }
                    if ((32 & j7) != 0) {
                        this.s = 69;
                        this.r = 4;
                    }
                    return d(j6, Long.MIN_VALUE, j7, 0L);
                case 'p':
                    return d(j6, 0L, j7, 2L);
                case 'r':
                    return d(j6, 4611686018427387904L, j7, 0L);
                case 's':
                    return d(j6, 0L, j7, 8L);
                case 't':
                    return d(j6, 0L, j7, 1L);
                case 'v':
                    return d(j6, 0L, j7, 4L);
            }
            return b(3, j6, j7);
        } catch (IOException e) {
            a(3, j6, j7);
            return 4;
        }
    }

    private int d(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return b(3, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'A':
                    return e(j6, 292057776128L, j7, 0L);
                case 'B':
                    return e(j6, 56320L, j7, 0L);
                case 'E':
                    return e(j6, 141733920768L, j7, 0L);
                case 'G':
                    if ((4398046511104L & j6) != 0) {
                        return a(5, 42);
                    }
                    break;
                case 'I':
                    return e(j6, 256L, j7, 0L);
                case 'N':
                    if ((34359738368L & j6) != 0) {
                        return a(5, 35);
                    }
                    return e(j6, 36028797018963968L, j7, 0L);
                case 'O':
                    return e(j6, 18015016984772736L, j7, 0L);
                case 'R':
                    return e(j6, 2199023255552L, j7, 0L);
                case 'S':
                    return e(j6, 1099511627776L, j7, 0L);
                case 'T':
                    if ((67108864 & j6) != 0) {
                        return a(5, 26);
                    }
                    break;
                case 'V':
                    return e(j6, 8704L, j7, 0L);
                case 'a':
                    return e(j6, 0L, j7, 6L);
                case 'c':
                    return e(j6, 4611686018427387904L, j7, 0L);
                case 'd':
                    return e(j6, Long.MIN_VALUE, j7, 0L);
                case 'l':
                    if ((16 & j7) != 0) {
                        return a(5, 68);
                    }
                    if ((64 & j7) != 0) {
                        return a(5, 70);
                    }
                    return e(j6, 0L, j7, 129L);
                case 't':
                    return e(j6, 0L, j7, 8L);
            }
            return b(4, j6, j7);
        } catch (IOException e) {
            a(4, j6, j7);
            return 5;
        }
    }

    private int e(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return b(4, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'A':
                    return f(j6, 8704L, j7, 0L);
                case 'E':
                    if ((2199023255552L & j6) != 0) {
                        return a(6, 41);
                    }
                    return f(j6, 36028797018963968L, j7, 0L);
                case 'L':
                    if ((256 & j6) != 0) {
                        return a(6, 8);
                    }
                    return f(j6, 292057827328L, j7, 0L);
                case 'O':
                    return f(j6, 549755814016L, j7, 0L);
                case 'P':
                    if ((68719476736L & j6) != 0) {
                        return a(6, 36);
                    }
                    if ((137438953472L & j6) != 0) {
                        return a(6, 37);
                    }
                    if ((18014398509481984L & j6) != 0) {
                        return a(6, 54);
                    }
                    break;
                case 'T':
                    if ((4294967296L & j6) != 0) {
                        return a(6, 32);
                    }
                    if ((1099511627776L & j6) != 0) {
                        return a(6, 40);
                    }
                    break;
                case 'U':
                    return f(j6, 5120L, j7, 0L);
                case 'a':
                    return f(j6, 0L, j7, 8L);
                case 'e':
                    if ((4611686018427387904L & j6) != 0) {
                        return a(6, 62);
                    }
                    return f(j6, Long.MIN_VALUE, j7, 0L);
                case 'i':
                    return f(j6, 0L, j7, 1L);
                case 'o':
                    return f(j6, 0L, j7, 128L);
                case 'r':
                    return f(j6, 0L, j7, 6L);
            }
            return b(5, j6, j7);
        } catch (IOException e) {
            a(5, j6, j7);
            return 6;
        }
    }

    private int f(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return b(5, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'E':
                    if ((2048 & j6) != 0) {
                        return a(7, 11);
                    }
                    if ((16384 & j6) != 0) {
                        return a(7, 14);
                    }
                    if ((32768 & j6) != 0) {
                        return a(7, 15);
                    }
                    break;
                case 'L':
                    if ((128 & j6) != 0) {
                        return a(7, 7);
                    }
                    if ((512 & j6) != 0) {
                        return a(7, 9);
                    }
                    if ((8192 & j6) != 0) {
                        return a(7, 13);
                    }
                    if ((17179869184L & j6) != 0) {
                        return a(7, 34);
                    }
                    if ((274877906944L & j6) != 0) {
                        return a(7, 38);
                    }
                    break;
                case 'P':
                    if ((1024 & j6) != 0) {
                        return a(7, 10);
                    }
                    if ((4096 & j6) != 0) {
                        return a(7, 12);
                    }
                    if ((549755813888L & j6) != 0) {
                        return a(7, 39);
                    }
                    break;
                case 'X':
                    return g(j6, 36028797018963968L, j7, 0L);
                case 'a':
                    return g(j6, 0L, j7, 6L);
                case 'c':
                    return g(j6, 0L, j7, 136L);
                case 'f':
                    return g(j6, Long.MIN_VALUE, j7, 0L);
                case 'n':
                    return g(j6, 0L, j7, 1L);
            }
            return b(6, j6, j7);
        } catch (IOException e) {
            a(6, j6, j7);
            return 7;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int g(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return b(6, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'T':
                    if ((36028797018963968L & j6) != 0) {
                        return a(8, 55);
                    }
                    break;
                case 'a':
                    return h(j6, 0L, j7, 128L);
                case 'e':
                    return h(j6, 0L, j7, 1L);
                case 'i':
                    return h(j6, Long.MIN_VALUE, j7, 0L);
                case 'k':
                    return h(j6, 0L, j7, 8L);
                case 'm':
                    return h(j6, 0L, j7, 2L);
                case 'r':
                    return h(j6, 0L, j7, 4L);
            }
            return b(7, j6, j7);
        } catch (IOException e) {
            a(7, j6, j7);
            return 8;
        }
    }

    private int h(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return b(7, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'd':
                    return i(j6, 0L, j7, 1L);
                case 'g':
                    if ((4 & j7) != 0) {
                        return a(9, 66);
                    }
                    break;
                case 'l':
                    if ((128 & j7) != 0) {
                        return a(9, 71);
                    }
                    break;
                case 'n':
                    return i(j6, Long.MIN_VALUE, j7, 0L);
                case 's':
                    if ((2 & j7) != 0) {
                        return a(9, 65);
                    }
                    return i(j6, 0L, j7, 8L);
            }
            return b(8, j6, j7);
        } catch (IOException e) {
            a(8, j6, j7);
            return 9;
        }
    }

    private int i(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return b(8, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'e':
                    return j(j6, Long.MIN_VALUE, j7, 1L);
                case 'i':
                    return j(j6, 0L, j7, 8L);
                default:
                    return b(9, j6, j7);
            }
        } catch (IOException e) {
            a(9, j6, j7);
            return 10;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int j(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return b(9, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'd':
                    if ((Long.MIN_VALUE & j6) != 0) {
                        return a(11, 63);
                    }
                    break;
                case 'f':
                    return k(j6, 0L, j7, 1L);
                case 'z':
                    return k(j6, 0L, j7, 8L);
            }
            return b(10, j6, j7);
        } catch (IOException e) {
            a(10, j6, j7);
            return 11;
        }
    }

    private int k(long j2, long j3, long j4, long j5) {
        long j6 = j5 & j4;
        if (((j3 & j2) | j6) == 0) {
            return b(10, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'i':
                    return b(j6, 1L);
                case 'e':
                    if ((8 & j6) != 0) {
                        return a(12, 67);
                    }
                    break;
            }
            return b(11, 0L, j6);
        } catch (IOException e) {
            a(11, 0L, j6);
            return 12;
        }
    }

    private int b(long j2, long j3) {
        long j4 = j3 & j2;
        if (j4 == 0) {
            return b(11, 0L, j2);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'n':
                    return c(j4, 1L);
                default:
                    return b(12, 0L, j4);
            }
        } catch (IOException e) {
            a(12, 0L, j4);
            return 13;
        }
    }

    private int c(long j2, long j3) {
        long j4 = j3 & j2;
        if (j4 == 0) {
            return b(12, 0L, j2);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'e':
                    return d(j4, 1L);
                default:
                    return b(13, 0L, j4);
            }
        } catch (IOException e) {
            a(13, 0L, j4);
            return 14;
        }
    }

    private int d(long j2, long j3) {
        long j4 = j3 & j2;
        if (j4 == 0) {
            return b(13, 0L, j2);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'd':
                    if ((1 & j4) != 0) {
                        return a(15, 64);
                    }
                    break;
            }
            return b(14, 0L, j4);
        } catch (IOException e) {
            a(14, 0L, j4);
            return 15;
        }
    }

    private int a(int i2, int i3, int i4) {
        this.s = i3;
        this.r = i2;
        try {
            this.m = this.l.c();
            return b(i4, i2 + 1);
        } catch (IOException e) {
            return i2 + 1;
        }
    }

    static {
        String[] strArr = new String[90];
        strArr[0] = "";
        strArr[5] = "MOVE";
        strArr[6] = "LOADK";
        strArr[7] = "LOADBOOL";
        strArr[8] = "LOADNIL";
        strArr[9] = "GETUPVAL";
        strArr[10] = "GETTABUP";
        strArr[11] = "GETTABLE";
        strArr[12] = "SETTABUP";
        strArr[13] = "SETUPVAL";
        strArr[14] = "SETTABLE";
        strArr[15] = "NEWTABLE";
        strArr[16] = "SELF";
        strArr[17] = "ADD";
        strArr[18] = "SUB";
        strArr[19] = "MUL";
        strArr[20] = "DIV";
        strArr[21] = "MOD";
        strArr[22] = "POW";
        strArr[23] = "UNM";
        strArr[24] = "NOT";
        strArr[25] = "LEN";
        strArr[26] = "CONCAT";
        strArr[27] = "JMP";
        strArr[28] = "EQ";
        strArr[29] = "LT";
        strArr[30] = "LE";
        strArr[31] = "TEST";
        strArr[32] = "TESTSET";
        strArr[33] = "CALL";
        strArr[34] = "TAILCALL";
        strArr[35] = "RETURN";
        strArr[36] = "FORLOOP";
        strArr[37] = "FORPREP";
        strArr[38] = "TFORCALL";
        strArr[39] = "TFORLOOP";
        strArr[40] = "SETLIST";
        strArr[41] = "CLOSURE";
        strArr[42] = "VARARG";
        strArr[43] = "IDIV";
        strArr[44] = "BNOT";
        strArr[45] = "BAND";
        strArr[46] = "BOR";
        strArr[47] = "BXOR";
        strArr[48] = "SHL";
        strArr[49] = "SHR";
        strArr[50] = "CONST";
        strArr[51] = "FUNC[";
        strArr[52] = "GOTO[";
        strArr[53] = "OP";
        strArr[54] = "SET_TOP";
        strArr[55] = "SKIP_NEXT";
        strArr[56] = "nil";
        strArr[57] = "true";
        strArr[58] = "false";
        strArr[62] = ".source";
        strArr[63] = ".linedefined";
        strArr[64] = ".lastlinedefined";
        strArr[65] = ".numparams";
        strArr[66] = ".is_vararg";
        strArr[67] = ".maxstacksize";
        strArr[68] = ".upval";
        strArr[69] = ".line";
        strArr[70] = ".local";
        strArr[71] = ".end local";
        strArr[72] = ".func";
        strArr[73] = ".end";
        strArr[75] = "..";
        strArr[88] = "[";
        strArr[89] = "]";
        f = strArr;
        g = new String[]{"STATE_NAME", "STATE_SINT", "STATE_V_NAME", "DEFAULT"};
        h = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, 0, 3, 3, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 3, -1, -1, -1, -1, 3, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        i = new long[]{-31, 51642367};
        j = new long[]{30};
        k = new long[]{16};
    }

    private int b(int i2, int i3) {
        int i4 = 0;
        this.p = 50;
        int i5 = 1;
        this.u[0] = i2;
        int i6 = Integer.MAX_VALUE;
        while (true) {
            int i7 = i5;
            int i8 = i4;
            int i9 = this.q + 1;
            this.q = i9;
            if (i9 == Integer.MAX_VALUE) {
                g();
            }
            if (this.m < '@') {
                long j2 = 1 << this.m;
                do {
                    i7--;
                    switch (this.u[i7]) {
                        case 0:
                            if ((9216 & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 74) {
                                    i6 = 74;
                                }
                                h(12, 15);
                                continue;
                            }
                        case 1:
                            if ((4294971904L & j2) != 0) {
                                g(1, 2);
                                continue;
                            } else {
                                continue;
                            }
                        case 2:
                            if (this.m == ';') {
                                h(0, 2);
                                continue;
                            } else {
                                continue;
                            }
                        case 3:
                            if (((-9217) & j2) != 0) {
                                h(0, 2);
                                continue;
                            } else {
                                continue;
                            }
                        case 4:
                            if (this.m != '\n') {
                                continue;
                            } else {
                                if (i6 > 74) {
                                    i6 = 74;
                                }
                                h(12, 15);
                                continue;
                            }
                        case 5:
                            if (this.m == '\r') {
                                int[] iArr = this.u;
                                int i10 = this.p;
                                this.p = i10 + 1;
                                iArr[i10] = 4;
                                continue;
                            } else {
                                continue;
                            }
                        case 6:
                            if ((287948901175001088L & j2) != 0) {
                                if (i6 > 79) {
                                    i6 = 79;
                                }
                                h(3, 7);
                            } else if ((4294971904L & j2) != 0) {
                                h(8, 11);
                            } else if ((9216 & j2) != 0) {
                                if (i6 > 74) {
                                    i6 = 74;
                                }
                                h(12, 15);
                            } else if (this.m == ';') {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                h(16, 19);
                            } else if (this.m == '.') {
                                a(28);
                            } else if (this.m == '-') {
                                f(20, 21);
                            } else if (this.m == '\'') {
                                h(22, 24);
                            } else if (this.m == '\"') {
                                h(25, 27);
                            } else if (this.m == ':') {
                                int[] iArr2 = this.u;
                                int i11 = this.p;
                                this.p = i11 + 1;
                                iArr2[i11] = 7;
                            }
                            if (this.m == '0') {
                                int[] iArr3 = this.u;
                                int i12 = this.p;
                                this.p = i12 + 1;
                                iArr3[i12] = 14;
                                continue;
                            } else if (this.m == '\r') {
                                int[] iArr4 = this.u;
                                int i13 = this.p;
                                this.p = i13 + 1;
                                iArr4[i13] = 4;
                                continue;
                            } else {
                                continue;
                            }
                        case 8:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 76) {
                                    i6 = 76;
                                }
                                int[] iArr5 = this.u;
                                int i14 = this.p;
                                this.p = i14 + 1;
                                iArr5[i14] = 8;
                                continue;
                            }
                        case 10:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 77) {
                                    i6 = 77;
                                }
                                int[] iArr6 = this.u;
                                int i15 = this.p;
                                this.p = i15 + 1;
                                iArr6[i15] = 10;
                                continue;
                            }
                        case 12:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 78) {
                                    i6 = 78;
                                }
                                int[] iArr7 = this.u;
                                int i16 = this.p;
                                this.p = i16 + 1;
                                iArr7[i16] = 12;
                                continue;
                            }
                        case 13:
                            if (this.m == '0') {
                                int[] iArr8 = this.u;
                                int i17 = this.p;
                                this.p = i17 + 1;
                                iArr8[i17] = 14;
                                continue;
                            } else {
                                continue;
                            }
                        case 15:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 80) {
                                    i6 = 80;
                                }
                                int[] iArr9 = this.u;
                                int i18 = this.p;
                                this.p = i18 + 1;
                                iArr9[i18] = 15;
                                continue;
                            }
                        case 16:
                            if (this.m == '\"') {
                                h(25, 27);
                                continue;
                            } else {
                                continue;
                            }
                        case 18:
                            h(25, 27);
                            continue;
                        case 19:
                            if (((-17179869185L) & j2) != 0) {
                                h(25, 27);
                                continue;
                            } else {
                                continue;
                            }
                        case 20:
                            if (this.m == '\"' && i6 > 81) {
                                i6 = 81;
                                continue;
                            }
                            break;
                        case 21:
                            if (this.m == '\'') {
                                h(22, 24);
                                continue;
                            } else {
                                continue;
                            }
                        case 23:
                            h(22, 24);
                            continue;
                        case 24:
                            if (((-549755813889L) & j2) != 0) {
                                h(22, 24);
                                continue;
                            } else {
                                continue;
                            }
                        case 25:
                            if (this.m == '\'' && i6 > 81) {
                                i6 = 81;
                                continue;
                            }
                            break;
                        case 26:
                            if (this.m == '-') {
                                f(20, 21);
                                continue;
                            } else {
                                continue;
                            }
                        case 27:
                            if (this.m == '.') {
                                a(28);
                                continue;
                            } else {
                                continue;
                            }
                        case 28:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                g(28, 29);
                                continue;
                            }
                        case 30:
                            if ((43980465111040L & j2) != 0) {
                                a(31);
                                continue;
                            } else {
                                continue;
                            }
                        case 31:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                a(31);
                                continue;
                            }
                        case 32:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                h(28, 31);
                                continue;
                            }
                        case 33:
                            if ((287948901175001088L & j2) != 0) {
                                g(33, 34);
                                continue;
                            } else {
                                continue;
                            }
                        case 34:
                            if (this.m != '.') {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                g(35, 36);
                                continue;
                            }
                        case 35:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                g(35, 36);
                                continue;
                            }
                        case 37:
                            if ((43980465111040L & j2) != 0) {
                                a(38);
                                continue;
                            } else {
                                continue;
                            }
                        case 38:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                a(38);
                                continue;
                            }
                        case 39:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                g(39, 40);
                                continue;
                            }
                        case 41:
                            if ((43980465111040L & j2) != 0) {
                                a(42);
                                continue;
                            } else {
                                continue;
                            }
                        case 42:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                a(42);
                                continue;
                            }
                        case 43:
                            if ((4294971904L & j2) != 0) {
                                h(8, 11);
                                continue;
                            } else {
                                continue;
                            }
                        case 44:
                            if ((4294971904L & j2) != 0) {
                                g(44, 45);
                                continue;
                            } else {
                                continue;
                            }
                        case 45:
                            if (this.m != ';') {
                                continue;
                            } else {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                a(46);
                                continue;
                            }
                        case 46:
                            if (((-9217) & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                a(46);
                                continue;
                            }
                        case 47:
                            if (this.m != ';') {
                                continue;
                            } else {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                h(16, 19);
                                continue;
                            }
                        case 48:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 79) {
                                    i6 = 79;
                                }
                                h(3, 7);
                                continue;
                            }
                        case 49:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 79) {
                                    i6 = 79;
                                }
                                a(49);
                                continue;
                            }
                        case 50:
                            if ((4294971904L & j2) != 0) {
                                g(1, 2);
                            } else if (this.m == ';') {
                                h(0, 2);
                            }
                            if ((4294971904L & j2) != 0) {
                                g(44, 45);
                                continue;
                            } else if (this.m != ';') {
                                continue;
                            } else {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                a(46);
                                continue;
                            }
                    }
                } while (i7 != i8);
            } else if (this.m < 128) {
                long j3 = 1 << (this.m & '?');
                do {
                    i7--;
                    switch (this.u[i7]) {
                        case 3:
                            f(0, 2);
                            continue;
                        case 6:
                            if (this.m == 'u') {
                                int[] iArr10 = this.u;
                                int i19 = this.p;
                                this.p = i19 + 1;
                                iArr10[i19] = 12;
                                continue;
                            } else if (this.m == 'v') {
                                int[] iArr11 = this.u;
                                int i20 = this.p;
                                this.p = i20 + 1;
                                iArr11[i20] = 10;
                                continue;
                            } else {
                                continue;
                            }
                        case 7:
                        case 8:
                            if ((576460745995190270L & j3) == 0) {
                                continue;
                            } else {
                                if (i6 > 76) {
                                    i6 = 76;
                                }
                                a(8);
                                continue;
                            }
                        case 9:
                            if (this.m == 'v') {
                                int[] iArr12 = this.u;
                                int i21 = this.p;
                                this.p = i21 + 1;
                                iArr12[i21] = 10;
                                continue;
                            } else {
                                continue;
                            }
                        case 11:
                            if (this.m == 'u') {
                                int[] iArr13 = this.u;
                                int i22 = this.p;
                                this.p = i22 + 1;
                                iArr13[i22] = 12;
                                continue;
                            } else {
                                continue;
                            }
                        case 14:
                            if ((72057594054705152L & j3) != 0) {
                                a(15);
                                continue;
                            } else {
                                continue;
                            }
                        case 15:
                            if ((541165879422L & j3) == 0) {
                                continue;
                            } else {
                                if (i6 > 80) {
                                    i6 = 80;
                                }
                                a(15);
                                continue;
                            }
                        case 17:
                            if (this.m == '\\') {
                                int[] iArr14 = this.u;
                                int i23 = this.p;
                                this.p = i23 + 1;
                                iArr14[i23] = 18;
                                continue;
                            } else {
                                continue;
                            }
                        case 18:
                            h(25, 27);
                            continue;
                        case 19:
                            if (((-268435457) & j3) != 0) {
                                h(25, 27);
                                continue;
                            } else {
                                continue;
                            }
                        case 22:
                            if (this.m == '\\') {
                                int[] iArr15 = this.u;
                                int i24 = this.p;
                                this.p = i24 + 1;
                                iArr15[i24] = 23;
                                continue;
                            } else {
                                continue;
                            }
                        case 23:
                            h(22, 24);
                            continue;
                        case 24:
                            if (((-268435457) & j3) != 0) {
                                h(22, 24);
                                continue;
                            } else {
                                continue;
                            }
                        case 29:
                            if ((137438953504L & j3) != 0) {
                                f(32, 33);
                                continue;
                            } else {
                                continue;
                            }
                        case 36:
                            if ((137438953504L & j3) != 0) {
                                f(34, 35);
                                continue;
                            } else {
                                continue;
                            }
                        case 40:
                            if ((137438953504L & j3) != 0) {
                                f(36, 37);
                                continue;
                            } else {
                                continue;
                            }
                        case 46:
                            if (i6 > 4) {
                                i6 = 4;
                            }
                            int[] iArr16 = this.u;
                            int i25 = this.p;
                            this.p = i25 + 1;
                            iArr16[i25] = 46;
                            continue;
                    }
                } while (i7 != i8);
            } else {
                int i26 = this.m >> '\b';
                int i27 = i26 >> 6;
                long j4 = 1 << (i26 & 63);
                int i28 = (this.m & 255) >> 6;
                long j5 = 1 << (this.m & '?');
                do {
                    i7--;
                    switch (this.u[i7]) {
                        case 3:
                            if (a(i26, i27, i28, j4, j5)) {
                                f(0, 2);
                                continue;
                            } else {
                                continue;
                            }
                        case 18:
                        case 19:
                            if (a(i26, i27, i28, j4, j5)) {
                                h(25, 27);
                                continue;
                            } else {
                                continue;
                            }
                        case 23:
                        case 24:
                            if (a(i26, i27, i28, j4, j5)) {
                                h(22, 24);
                                continue;
                            } else {
                                continue;
                            }
                        case 46:
                            if (a(i26, i27, i28, j4, j5)) {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                int[] iArr17 = this.u;
                                int i29 = this.p;
                                this.p = i29 + 1;
                                iArr17[i29] = 46;
                                continue;
                            } else {
                                continue;
                            }
                    }
                } while (i7 != i8);
            }
            if (i6 != Integer.MAX_VALUE) {
                this.s = i6;
                this.r = i3;
                i6 = Integer.MAX_VALUE;
            }
            i3++;
            i5 = this.p;
            this.p = i8;
            i4 = 50 - i8;
            if (i5 != i4) {
                try {
                    this.m = this.l.c();
                } catch (IOException e) {
                }
            }
            return i3;
        }
    }

    private final int c(int i2, long j2, long j3) {
        switch (i2) {
            case 0:
                if (((-4611686018427387904L) & j2) == 0 && (3071 & j3) == 0) {
                    return (14 & j2) != 0 ? 51 : -1;
                }
                return 26;
            default:
                return -1;
        }
    }

    private final int d(int i2, long j2, long j3) {
        return c(c(i2, j2, j3), i2 + 1);
    }

    private int d() {
        switch (this.m) {
            case '\t':
                return b(0, 2, 51);
            case '\f':
                return b(0, 3, 51);
            case ' ':
                return b(0, 1, 51);
            case '.':
                return e(-4611686018427387904L, 3071L);
            case 'A':
                return e(131072L, 0L);
            case 'B':
                return e(263882790666240L, 0L);
            case 'C':
                return e(1128107587141632L, 0L);
            case 'D':
                return e(1048576L, 0L);
            case 'E':
                return e(268435456L, 0L);
            case 'F':
                return e(2252005972115456L, 0L);
            case 'G':
                return e(4503599627374080L, 0L);
            case 'I':
                return e(8796093022208L, 0L);
            case 'J':
                return e(134217728L, 0L);
            case 'L':
                return e(1644167616L, 0L);
            case 'M':
                return e(2621472L, 0L);
            case 'N':
                return e(16809984L, 0L);
            case 'O':
                return e(9007199254740992L, 0L);
            case 'P':
                return e(4194304L, 0L);
            case 'R':
                return e(34359738368L, 0L);
            case 'S':
                return e(54888719970562048L, 0L);
            case 'T':
                return e(848256040960L, 0L);
            case 'U':
                return e(8388608L, 0L);
            case 'V':
                return e(4398046511104L, 0L);
            case 'f':
                return e(288230376151711744L, 0L);
            case 'n':
                return e(72057594037927936L, 0L);
            case 't':
                return e(144115188075855872L, 0L);
            default:
                return c(6, 0);
        }
    }

    private int e(long j2, long j3) {
        try {
            this.m = this.l.c();
            switch (this.m) {
                case '.':
                    if ((2048 & j3) != 0) {
                        return a(1, 75);
                    }
                    break;
                case 'A':
                    return l(j2, 39608188403712L, j3, 0L);
                case 'D':
                    return l(j2, 8796093153280L, j3, 0L);
                case 'E':
                    if ((1073741824 & j2) != 0) {
                        this.s = 30;
                        this.r = 1;
                    }
                    return l(j2, 18015538856984064L, j3, 0L);
                case 'F':
                    return l(j2, 824633720832L, j3, 0L);
                case 'H':
                    return l(j2, 844424930131968L, j3, 0L);
                case 'I':
                    return l(j2, 1048576L, j3, 0L);
                case 'K':
                    return l(j2, 36028797018963968L, j3, 0L);
                case 'L':
                    return l(j2, 2199023255552L, j3, 0L);
                case 'M':
                    return l(j2, 134217728L, j3, 0L);
                case 'N':
                    return l(j2, 17592194433024L, j3, 0L);
                case 'O':
                    return l(j2, 5700074526999008L, j3, 0L);
                case 'P':
                    if ((9007199254740992L & j2) != 0) {
                        return a(1, 53);
                    }
                    break;
                case 'Q':
                    if ((268435456 & j2) != 0) {
                        return a(1, 28);
                    }
                    break;
                case 'T':
                    if ((536870912 & j2) != 0) {
                        return a(1, 29);
                    }
                    break;
                case 'U':
                    return l(j2, 2251799814471680L, j3, 0L);
                case 'X':
                    return l(j2, 140737488355328L, j3, 0L);
                case 'a':
                    return l(j2, 288230376151711744L, j3, 0L);
                case 'e':
                    return l(j2, 0L, j3, 640L);
                case 'f':
                    return l(j2, 0L, j3, 256L);
                case 'i':
                    return l(j2, 72057594037927936L, j3, 4L);
                case 'l':
                    return l(j2, Long.MIN_VALUE, j3, 97L);
                case 'm':
                    return l(j2, 0L, j3, 8L);
                case 'n':
                    return l(j2, 0L, j3, 2L);
                case 'r':
                    return l(j2, 144115188075855872L, j3, 0L);
                case 's':
                    return l(j2, 4611686018427387904L, j3, 0L);
                case 'u':
                    return l(j2, 0L, j3, 16L);
            }
            return d(0, j2, j3);
        } catch (IOException e) {
            c(0, j2, j3);
            return 1;
        }
    }

    private int l(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return d(0, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'A':
                    return m(j6, 448L, j7, 0L);
                case 'B':
                    if ((262144 & j6) != 0) {
                        return a(2, 18);
                    }
                    break;
                case 'D':
                    if ((131072 & j6) != 0) {
                        return a(2, 17);
                    }
                    if ((2097152 & j6) != 0) {
                        return a(2, 21);
                    }
                    break;
                case 'I':
                    return m(j6, 36037610291855360L, j7, 0L);
                case 'L':
                    if ((524288 & j6) != 0) {
                        return a(2, 19);
                    }
                    if ((281474976710656L & j6) != 0) {
                        return a(2, 48);
                    }
                    return m(j6, 8590000128L, j7, 0L);
                case 'M':
                    if ((8388608 & j6) != 0) {
                        return a(2, 23);
                    }
                    break;
                case 'N':
                    if ((33554432 & j6) != 0) {
                        return a(2, 25);
                    }
                    return m(j6, 3412884159725568L, j7, 0L);
                case 'O':
                    return m(j6, 161353331376128L, j7, 0L);
                case 'P':
                    if ((134217728 & j6) != 0) {
                        return a(2, 27);
                    }
                    break;
                case 'R':
                    if ((70368744177664L & j6) != 0) {
                        return a(2, 46);
                    }
                    if ((562949953421312L & j6) != 0) {
                        return a(2, 49);
                    }
                    return m(j6, 4604204941312L, j7, 0L);
                case 'S':
                    return m(j6, 6442450944L, j7, 0L);
                case 'T':
                    if ((16777216 & j6) != 0) {
                        return a(2, 24);
                    }
                    return m(j6, 22519132008250880L, j7, 0L);
                case 'V':
                    if ((1048576 & j6) != 0) {
                        return a(2, 20);
                    }
                    return m(j6, 32L, j7, 0L);
                case 'W':
                    if ((4194304 & j6) != 0) {
                        return a(2, 22);
                    }
                    return m(j6, 32768L, j7, 0L);
                case 'a':
                    return m(j6, 0L, j7, 9L);
                case 'i':
                    return m(j6, Long.MIN_VALUE, j7, 32L);
                case 'l':
                    if ((72057594037927936L & j6) != 0) {
                        return a(2, 56);
                    }
                    return m(j6, 288230376151711744L, j7, 0L);
                case 'n':
                    return m(j6, 0L, j7, 640L);
                case 'o':
                    return m(j6, 4611686018427387904L, j7, 64L);
                case 'p':
                    return m(j6, 0L, j7, 16L);
                case 's':
                    return m(j6, 0L, j7, 4L);
                case 'u':
                    return m(j6, 144115188075855872L, j7, 258L);
            }
            return d(1, j6, j7);
        } catch (IOException e) {
            c(1, j6, j7);
            return 2;
        }
    }

    private int m(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return d(1, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'A':
                    return n(j6, 4398046511104L, j7, 0L);
                case 'C':
                    return n(j6, 2251799880794112L, j7, 0L);
                case 'D':
                    if ((35184372088832L & j6) != 0) {
                        return a(3, 45);
                    }
                    return n(j6, 448L, j7, 0L);
                case 'E':
                    if ((32 & j6) != 0) {
                        return a(3, 5);
                    }
                    break;
                case 'F':
                    if ((65536 & j6) != 0) {
                        return a(3, 16);
                    }
                    break;
                case 'L':
                    if ((8589934592L & j6) != 0) {
                        return a(3, 33);
                    }
                    return n(j6, 1185410973696L, j7, 0L);
                case 'O':
                    return n(j6, 4503599627370496L, j7, 0L);
                case 'P':
                    return n(j6, 36028934457917440L, j7, 0L);
                case 'R':
                    if ((140737488355328L & j6) != 0) {
                        return a(3, 47);
                    }
                    return n(j6, 824633720832L, j7, 0L);
                case 'S':
                    return n(j6, 1128098930098176L, j7, 0L);
                case 'T':
                    if ((2147483648L & j6) != 0) {
                        this.s = 31;
                        this.r = 3;
                    } else if ((17592186044416L & j6) != 0) {
                        return a(3, 44);
                    }
                    return n(j6, 4295023616L, j7, 0L);
                case 'U':
                    return n(j6, 34359747072L, j7, 0L);
                case 'V':
                    if ((8796093022208L & j6) != 0) {
                        return a(3, 43);
                    }
                    break;
                case '_':
                    return n(j6, 18014398509481984L, j7, 4L);
                case 'c':
                    return n(j6, 0L, j7, 64L);
                case 'd':
                    if ((512 & j7) != 0) {
                        this.s = 73;
                        this.r = 3;
                    }
                    return n(j6, 0L, j7, 128L);
                case 'e':
                    if ((144115188075855872L & j6) != 0) {
                        return a(3, 57);
                    }
                    break;
                case 'm':
                    return n(j6, 0L, j7, 2L);
                case 'n':
                    return n(j6, Long.MIN_VALUE, j7, 288L);
                case 's':
                    return n(j6, 288230376151711744L, j7, 1L);
                case 'u':
                    return n(j6, 4611686018427387904L, j7, 0L);
                case 'v':
                    return n(j6, 0L, j7, 16L);
                case 'x':
                    return n(j6, 0L, j7, 8L);
            }
            return d(2, j6, j7);
        } catch (IOException e) {
            c(2, j6, j7);
            return 3;
        }
    }

    private int n(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return d(2, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case ' ':
                    return o(j6, 0L, j7, 128L);
                case 'A':
                    return o(j6, 67165184L, j7, 0L);
                case 'B':
                    return o(j6, 128L, j7, 0L);
                case 'C':
                    return o(j6, 292057776128L, j7, 0L);
                case 'I':
                    return o(j6, 1099511627776L, j7, 0L);
                case 'K':
                    if ((64 & j6) != 0) {
                        return a(4, 6);
                    }
                    break;
                case 'L':
                    return o(j6, 549755813888L, j7, 0L);
                case 'N':
                    return o(j6, 256L, j7, 0L);
                case 'O':
                    return o(j6, 68719476736L, j7, 0L);
                case 'P':
                    return o(j6, 8704L, j7, 0L);
                case 'R':
                    return o(j6, 4569845202944L, j7, 0L);
                case 'S':
                    return o(j6, 4294967296L, j7, 0L);
                case 'T':
                    if ((1125899906842624L & j6) != 0) {
                        return a(4, 50);
                    }
                    return o(j6, 18014398509481984L, j7, 0L);
                case 'U':
                    return o(j6, 2199023255552L, j7, 0L);
                case '[':
                    if ((2251799813685248L & j6) != 0) {
                        return a(4, 51);
                    }
                    if ((4503599627370496L & j6) != 0) {
                        return a(4, 52);
                    }
                    break;
                case '_':
                    return o(j6, 36028797018963968L, j7, 0L);
                case 'a':
                    return o(j6, 0L, j7, 80L);
                case 'c':
                    if ((256 & j7) != 0) {
                        return a(4, 72);
                    }
                    break;
                case 'e':
                    if ((288230376151711744L & j6) != 0) {
                        return a(4, 58);
                    }
                    if ((32 & j7) != 0) {
                        this.s = 69;
                        this.r = 4;
                    }
                    return o(j6, Long.MIN_VALUE, j7, 0L);
                case 'p':
                    return o(j6, 0L, j7, 2L);
                case 'r':
                    return o(j6, 4611686018427387904L, j7, 0L);
                case 's':
                    return o(j6, 0L, j7, 8L);
                case 't':
                    return o(j6, 0L, j7, 1L);
                case 'v':
                    return o(j6, 0L, j7, 4L);
            }
            return d(3, j6, j7);
        } catch (IOException e) {
            c(3, j6, j7);
            return 4;
        }
    }

    private int o(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return d(3, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'A':
                    return p(j6, 292057776128L, j7, 0L);
                case 'B':
                    return p(j6, 56320L, j7, 0L);
                case 'E':
                    return p(j6, 141733920768L, j7, 0L);
                case 'G':
                    if ((4398046511104L & j6) != 0) {
                        return a(5, 42);
                    }
                    break;
                case 'I':
                    return p(j6, 256L, j7, 0L);
                case 'N':
                    if ((34359738368L & j6) != 0) {
                        return a(5, 35);
                    }
                    return p(j6, 36028797018963968L, j7, 0L);
                case 'O':
                    return p(j6, 18015016984772736L, j7, 0L);
                case 'R':
                    return p(j6, 2199023255552L, j7, 0L);
                case 'S':
                    return p(j6, 1099511627776L, j7, 0L);
                case 'T':
                    if ((67108864 & j6) != 0) {
                        return a(5, 26);
                    }
                    break;
                case 'V':
                    return p(j6, 8704L, j7, 0L);
                case 'a':
                    return p(j6, 0L, j7, 6L);
                case 'c':
                    return p(j6, 4611686018427387904L, j7, 0L);
                case 'd':
                    return p(j6, Long.MIN_VALUE, j7, 0L);
                case 'l':
                    if ((16 & j7) != 0) {
                        return a(5, 68);
                    }
                    if ((64 & j7) != 0) {
                        return a(5, 70);
                    }
                    return p(j6, 0L, j7, 129L);
                case 't':
                    return p(j6, 0L, j7, 8L);
            }
            return d(4, j6, j7);
        } catch (IOException e) {
            c(4, j6, j7);
            return 5;
        }
    }

    private int p(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return d(4, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'A':
                    return q(j6, 8704L, j7, 0L);
                case 'E':
                    if ((2199023255552L & j6) != 0) {
                        return a(6, 41);
                    }
                    return q(j6, 36028797018963968L, j7, 0L);
                case 'L':
                    if ((256 & j6) != 0) {
                        return a(6, 8);
                    }
                    return q(j6, 292057827328L, j7, 0L);
                case 'O':
                    return q(j6, 549755814016L, j7, 0L);
                case 'P':
                    if ((68719476736L & j6) != 0) {
                        return a(6, 36);
                    }
                    if ((137438953472L & j6) != 0) {
                        return a(6, 37);
                    }
                    if ((18014398509481984L & j6) != 0) {
                        return a(6, 54);
                    }
                    break;
                case 'T':
                    if ((4294967296L & j6) != 0) {
                        return a(6, 32);
                    }
                    if ((1099511627776L & j6) != 0) {
                        return a(6, 40);
                    }
                    break;
                case 'U':
                    return q(j6, 5120L, j7, 0L);
                case 'a':
                    return q(j6, 0L, j7, 8L);
                case 'e':
                    if ((4611686018427387904L & j6) != 0) {
                        return a(6, 62);
                    }
                    return q(j6, Long.MIN_VALUE, j7, 0L);
                case 'i':
                    return q(j6, 0L, j7, 1L);
                case 'o':
                    return q(j6, 0L, j7, 128L);
                case 'r':
                    return q(j6, 0L, j7, 6L);
            }
            return d(5, j6, j7);
        } catch (IOException e) {
            c(5, j6, j7);
            return 6;
        }
    }

    private int q(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return d(5, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'E':
                    if ((2048 & j6) != 0) {
                        return a(7, 11);
                    }
                    if ((16384 & j6) != 0) {
                        return a(7, 14);
                    }
                    if ((32768 & j6) != 0) {
                        return a(7, 15);
                    }
                    break;
                case 'L':
                    if ((128 & j6) != 0) {
                        return a(7, 7);
                    }
                    if ((512 & j6) != 0) {
                        return a(7, 9);
                    }
                    if ((8192 & j6) != 0) {
                        return a(7, 13);
                    }
                    if ((17179869184L & j6) != 0) {
                        return a(7, 34);
                    }
                    if ((274877906944L & j6) != 0) {
                        return a(7, 38);
                    }
                    break;
                case 'P':
                    if ((1024 & j6) != 0) {
                        return a(7, 10);
                    }
                    if ((4096 & j6) != 0) {
                        return a(7, 12);
                    }
                    if ((549755813888L & j6) != 0) {
                        return a(7, 39);
                    }
                    break;
                case 'X':
                    return r(j6, 36028797018963968L, j7, 0L);
                case 'a':
                    return r(j6, 0L, j7, 6L);
                case 'c':
                    return r(j6, 0L, j7, 136L);
                case 'f':
                    return r(j6, Long.MIN_VALUE, j7, 0L);
                case 'n':
                    return r(j6, 0L, j7, 1L);
            }
            return d(6, j6, j7);
        } catch (IOException e) {
            c(6, j6, j7);
            return 7;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int r(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return d(6, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'T':
                    if ((36028797018963968L & j6) != 0) {
                        return a(8, 55);
                    }
                    break;
                case 'a':
                    return s(j6, 0L, j7, 128L);
                case 'e':
                    return s(j6, 0L, j7, 1L);
                case 'i':
                    return s(j6, Long.MIN_VALUE, j7, 0L);
                case 'k':
                    return s(j6, 0L, j7, 8L);
                case 'm':
                    return s(j6, 0L, j7, 2L);
                case 'r':
                    return s(j6, 0L, j7, 4L);
            }
            return d(7, j6, j7);
        } catch (IOException e) {
            c(7, j6, j7);
            return 8;
        }
    }

    private int s(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return d(7, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'd':
                    return t(j6, 0L, j7, 1L);
                case 'g':
                    if ((4 & j7) != 0) {
                        return a(9, 66);
                    }
                    break;
                case 'l':
                    if ((128 & j7) != 0) {
                        return a(9, 71);
                    }
                    break;
                case 'n':
                    return t(j6, Long.MIN_VALUE, j7, 0L);
                case 's':
                    if ((2 & j7) != 0) {
                        return a(9, 65);
                    }
                    return t(j6, 0L, j7, 8L);
            }
            return d(8, j6, j7);
        } catch (IOException e) {
            c(8, j6, j7);
            return 9;
        }
    }

    private int t(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return d(8, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'e':
                    return u(j6, Long.MIN_VALUE, j7, 1L);
                case 'i':
                    return u(j6, 0L, j7, 8L);
                default:
                    return d(9, j6, j7);
            }
        } catch (IOException e) {
            c(9, j6, j7);
            return 10;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int u(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return d(9, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'd':
                    if ((Long.MIN_VALUE & j6) != 0) {
                        return a(11, 63);
                    }
                    break;
                case 'f':
                    return v(j6, 0L, j7, 1L);
                case 'z':
                    return v(j6, 0L, j7, 8L);
            }
            return d(10, j6, j7);
        } catch (IOException e) {
            c(10, j6, j7);
            return 11;
        }
    }

    private int v(long j2, long j3, long j4, long j5) {
        long j6 = j5 & j4;
        if (((j3 & j2) | j6) == 0) {
            return d(10, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'i':
                    return f(j6, 1L);
                case 'e':
                    if ((8 & j6) != 0) {
                        return a(12, 67);
                    }
                    break;
            }
            return d(11, 0L, j6);
        } catch (IOException e) {
            c(11, 0L, j6);
            return 12;
        }
    }

    private int f(long j2, long j3) {
        long j4 = j3 & j2;
        if (j4 == 0) {
            return d(11, 0L, j2);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'n':
                    return g(j4, 1L);
                default:
                    return d(12, 0L, j4);
            }
        } catch (IOException e) {
            c(12, 0L, j4);
            return 13;
        }
    }

    private int g(long j2, long j3) {
        long j4 = j3 & j2;
        if (j4 == 0) {
            return d(12, 0L, j2);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'e':
                    return h(j4, 1L);
                default:
                    return d(13, 0L, j4);
            }
        } catch (IOException e) {
            c(13, 0L, j4);
            return 14;
        }
    }

    private int h(long j2, long j3) {
        long j4 = j3 & j2;
        if (j4 == 0) {
            return d(13, 0L, j2);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'd':
                    if ((1 & j4) != 0) {
                        return a(15, 64);
                    }
                    break;
            }
            return d(14, 0L, j4);
        } catch (IOException e) {
            c(14, 0L, j4);
            return 15;
        }
    }

    private int b(int i2, int i3, int i4) {
        this.s = i3;
        this.r = i2;
        try {
            this.m = this.l.c();
            return c(i4, i2 + 1);
        } catch (IOException e) {
            return i2 + 1;
        }
    }

    private int c(int i2, int i3) {
        int i4 = 0;
        this.p = 51;
        int i5 = 1;
        this.u[0] = i2;
        int i6 = Integer.MAX_VALUE;
        while (true) {
            int i7 = i5;
            int i8 = i4;
            int i9 = this.q + 1;
            this.q = i9;
            if (i9 == Integer.MAX_VALUE) {
                g();
            }
            if (this.m < '@') {
                long j2 = 1 << this.m;
                do {
                    i7--;
                    switch (this.u[i7]) {
                        case 0:
                            if ((9216 & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 74) {
                                    i6 = 74;
                                }
                                h(12, 15);
                                continue;
                            }
                        case 1:
                            if ((4294971904L & j2) != 0) {
                                g(1, 2);
                                continue;
                            } else {
                                continue;
                            }
                        case 2:
                            if (this.m == ';') {
                                h(0, 2);
                                continue;
                            } else {
                                continue;
                            }
                        case 3:
                            if (((-9217) & j2) != 0) {
                                h(0, 2);
                                continue;
                            } else {
                                continue;
                            }
                        case 4:
                            if (this.m != '\n') {
                                continue;
                            } else {
                                if (i6 > 74) {
                                    i6 = 74;
                                }
                                h(12, 15);
                                continue;
                            }
                        case 5:
                            if (this.m == '\r') {
                                int[] iArr = this.u;
                                int i10 = this.p;
                                this.p = i10 + 1;
                                iArr[i10] = 4;
                                continue;
                            } else {
                                continue;
                            }
                        case 6:
                            if ((287948901175001088L & j2) != 0) {
                                if (i6 > 79) {
                                    i6 = 79;
                                }
                                h(38, 42);
                            } else if ((4294971904L & j2) != 0) {
                                h(43, 46);
                            } else if ((9216 & j2) != 0) {
                                if (i6 > 74) {
                                    i6 = 74;
                                }
                                h(12, 15);
                            } else if (this.m == ';') {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                h(47, 50);
                            } else if (this.m == '.') {
                                a(26);
                            } else if (this.m == '-') {
                                f(51, 52);
                            } else if (this.m == '\'') {
                                h(53, 55);
                            } else if (this.m == '\"') {
                                h(56, 58);
                            } else if (this.m == ':') {
                                int[] iArr2 = this.u;
                                int i11 = this.p;
                                this.p = i11 + 1;
                                iArr2[i11] = 7;
                            }
                            if (this.m == '0') {
                                int[] iArr3 = this.u;
                                int i12 = this.p;
                                this.p = i12 + 1;
                                iArr3[i12] = 12;
                                continue;
                            } else if (this.m == '\r') {
                                int[] iArr4 = this.u;
                                int i13 = this.p;
                                this.p = i13 + 1;
                                iArr4[i13] = 4;
                                continue;
                            } else {
                                continue;
                            }
                        case 8:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 76) {
                                    i6 = 76;
                                }
                                int[] iArr5 = this.u;
                                int i14 = this.p;
                                this.p = i14 + 1;
                                iArr5[i14] = 8;
                                continue;
                            }
                        case 10:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 78) {
                                    i6 = 78;
                                }
                                int[] iArr6 = this.u;
                                int i15 = this.p;
                                this.p = i15 + 1;
                                iArr6[i15] = 10;
                                continue;
                            }
                        case 11:
                            if (this.m == '0') {
                                int[] iArr7 = this.u;
                                int i16 = this.p;
                                this.p = i16 + 1;
                                iArr7[i16] = 12;
                                continue;
                            } else {
                                continue;
                            }
                        case 13:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 80) {
                                    i6 = 80;
                                }
                                int[] iArr8 = this.u;
                                int i17 = this.p;
                                this.p = i17 + 1;
                                iArr8[i17] = 13;
                                continue;
                            }
                        case 14:
                            if (this.m == '\"') {
                                h(56, 58);
                                continue;
                            } else {
                                continue;
                            }
                        case 16:
                            h(56, 58);
                            continue;
                        case 17:
                            if (((-17179869185L) & j2) != 0) {
                                h(56, 58);
                                continue;
                            } else {
                                continue;
                            }
                        case 18:
                            if (this.m == '\"' && i6 > 81) {
                                i6 = 81;
                                continue;
                            }
                            break;
                        case 19:
                            if (this.m == '\'') {
                                h(53, 55);
                                continue;
                            } else {
                                continue;
                            }
                        case 21:
                            h(53, 55);
                            continue;
                        case 22:
                            if (((-549755813889L) & j2) != 0) {
                                h(53, 55);
                                continue;
                            } else {
                                continue;
                            }
                        case 23:
                            if (this.m == '\'' && i6 > 81) {
                                i6 = 81;
                                continue;
                            }
                            break;
                        case 24:
                            if (this.m == '-') {
                                f(51, 52);
                                continue;
                            } else {
                                continue;
                            }
                        case 25:
                            if (this.m == '.') {
                                a(26);
                                continue;
                            } else {
                                continue;
                            }
                        case 26:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                g(26, 27);
                                continue;
                            }
                        case 28:
                            if ((43980465111040L & j2) != 0) {
                                a(29);
                                continue;
                            } else {
                                continue;
                            }
                        case 29:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                a(29);
                                continue;
                            }
                        case 30:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                h(59, 62);
                                continue;
                            }
                        case 31:
                            if ((287948901175001088L & j2) != 0) {
                                g(31, 32);
                                continue;
                            } else {
                                continue;
                            }
                        case 32:
                            if (this.m != '.') {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                g(33, 34);
                                continue;
                            }
                        case 33:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                g(33, 34);
                                continue;
                            }
                        case 35:
                            if ((43980465111040L & j2) != 0) {
                                a(36);
                                continue;
                            } else {
                                continue;
                            }
                        case 36:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                a(36);
                                continue;
                            }
                        case 37:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                g(37, 38);
                                continue;
                            }
                        case 39:
                            if ((43980465111040L & j2) != 0) {
                                a(40);
                                continue;
                            } else {
                                continue;
                            }
                        case 40:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                a(40);
                                continue;
                            }
                        case 41:
                            if ((4294971904L & j2) != 0) {
                                h(43, 46);
                                continue;
                            } else {
                                continue;
                            }
                        case 42:
                            if ((4294971904L & j2) != 0) {
                                g(42, 43);
                                continue;
                            } else {
                                continue;
                            }
                        case 43:
                            if (this.m != ';') {
                                continue;
                            } else {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                a(44);
                                continue;
                            }
                        case 44:
                            if (((-9217) & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                a(44);
                                continue;
                            }
                        case 45:
                            if (this.m != ';') {
                                continue;
                            } else {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                h(47, 50);
                                continue;
                            }
                        case 47:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 59) {
                                    i6 = 59;
                                }
                                int[] iArr9 = this.u;
                                int i18 = this.p;
                                this.p = i18 + 1;
                                iArr9[i18] = 47;
                                continue;
                            }
                        case 48:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 77) {
                                    i6 = 77;
                                }
                                int[] iArr10 = this.u;
                                int i19 = this.p;
                                this.p = i19 + 1;
                                iArr10[i19] = 48;
                                continue;
                            }
                        case 49:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 79) {
                                    i6 = 79;
                                }
                                h(38, 42);
                                continue;
                            }
                        case 50:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 79) {
                                    i6 = 79;
                                }
                                a(50);
                                continue;
                            }
                        case 51:
                            if ((4294971904L & j2) != 0) {
                                g(1, 2);
                            } else if (this.m == ';') {
                                h(0, 2);
                            }
                            if ((4294971904L & j2) != 0) {
                                g(42, 43);
                                continue;
                            } else if (this.m != ';') {
                                continue;
                            } else {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                a(44);
                                continue;
                            }
                    }
                } while (i7 != i8);
            } else if (this.m < 128) {
                long j3 = 1 << (this.m & '?');
                do {
                    i7--;
                    switch (this.u[i7]) {
                        case 3:
                            f(0, 2);
                            continue;
                        case 6:
                            if (this.m == 'v') {
                                f(63, 64);
                                continue;
                            } else if (this.m == 'u') {
                                int[] iArr11 = this.u;
                                int i20 = this.p;
                                this.p = i20 + 1;
                                iArr11[i20] = 10;
                                continue;
                            } else {
                                continue;
                            }
                        case 7:
                        case 8:
                            if ((576460745995190270L & j3) == 0) {
                                continue;
                            } else {
                                if (i6 > 76) {
                                    i6 = 76;
                                }
                                a(8);
                                continue;
                            }
                        case 9:
                            if (this.m == 'u') {
                                int[] iArr12 = this.u;
                                int i21 = this.p;
                                this.p = i21 + 1;
                                iArr12[i21] = 10;
                                continue;
                            } else {
                                continue;
                            }
                        case 12:
                            if ((72057594054705152L & j3) != 0) {
                                a(13);
                                continue;
                            } else {
                                continue;
                            }
                        case 13:
                            if ((541165879422L & j3) == 0) {
                                continue;
                            } else {
                                if (i6 > 80) {
                                    i6 = 80;
                                }
                                a(13);
                                continue;
                            }
                        case 15:
                            if (this.m == '\\') {
                                int[] iArr13 = this.u;
                                int i22 = this.p;
                                this.p = i22 + 1;
                                iArr13[i22] = 16;
                                continue;
                            } else {
                                continue;
                            }
                        case 16:
                            h(56, 58);
                            continue;
                        case 17:
                            if (((-268435457) & j3) != 0) {
                                h(56, 58);
                                continue;
                            } else {
                                continue;
                            }
                        case 20:
                            if (this.m == '\\') {
                                int[] iArr14 = this.u;
                                int i23 = this.p;
                                this.p = i23 + 1;
                                iArr14[i23] = 21;
                                continue;
                            } else {
                                continue;
                            }
                        case 21:
                            h(53, 55);
                            continue;
                        case 22:
                            if (((-268435457) & j3) != 0) {
                                h(53, 55);
                                continue;
                            } else {
                                continue;
                            }
                        case 27:
                            if ((137438953504L & j3) != 0) {
                                f(65, 66);
                                continue;
                            } else {
                                continue;
                            }
                        case 34:
                            if ((137438953504L & j3) != 0) {
                                f(67, 68);
                                continue;
                            } else {
                                continue;
                            }
                        case 38:
                            if ((137438953504L & j3) != 0) {
                                f(69, 70);
                                continue;
                            } else {
                                continue;
                            }
                        case 44:
                            if (i6 > 4) {
                                i6 = 4;
                            }
                            int[] iArr15 = this.u;
                            int i24 = this.p;
                            this.p = i24 + 1;
                            iArr15[i24] = 44;
                            continue;
                        case 46:
                            if (this.m == 'v') {
                                f(63, 64);
                                continue;
                            } else {
                                continue;
                            }
                    }
                } while (i7 != i8);
            } else {
                int i25 = this.m >> '\b';
                int i26 = i25 >> 6;
                long j4 = 1 << (i25 & 63);
                int i27 = (this.m & 255) >> 6;
                long j5 = 1 << (this.m & '?');
                do {
                    i7--;
                    switch (this.u[i7]) {
                        case 3:
                            if (a(i25, i26, i27, j4, j5)) {
                                f(0, 2);
                                continue;
                            } else {
                                continue;
                            }
                        case 16:
                        case 17:
                            if (a(i25, i26, i27, j4, j5)) {
                                h(56, 58);
                                continue;
                            } else {
                                continue;
                            }
                        case 21:
                        case 22:
                            if (a(i25, i26, i27, j4, j5)) {
                                h(53, 55);
                                continue;
                            } else {
                                continue;
                            }
                        case 44:
                            if (a(i25, i26, i27, j4, j5)) {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                int[] iArr16 = this.u;
                                int i28 = this.p;
                                this.p = i28 + 1;
                                iArr16[i28] = 44;
                                continue;
                            } else {
                                continue;
                            }
                    }
                } while (i7 != i8);
            }
            if (i6 != Integer.MAX_VALUE) {
                this.s = i6;
                this.r = i3;
                i6 = Integer.MAX_VALUE;
            }
            i3++;
            i5 = this.p;
            this.p = i8;
            i4 = 51 - i8;
            if (i5 != i4) {
                try {
                    this.m = this.l.c();
                } catch (IOException e) {
                }
            }
            return i3;
        }
    }

    private final int e(int i2, long j2, long j3) {
        switch (i2) {
            case 0:
                if ((14 & j2) != 0) {
                    return 51;
                }
                return (((-4611686018427387904L) & j2) == 0 && (3071 & j3) == 0) ? -1 : 27;
            default:
                return -1;
        }
    }

    private final int f(int i2, long j2, long j3) {
        return d(e(i2, j2, j3), i2 + 1);
    }

    private int e() {
        switch (this.m) {
            case '\t':
                return c(0, 2, 51);
            case '\f':
                return c(0, 3, 51);
            case ' ':
                return c(0, 1, 51);
            case '.':
                return i(-4611686018427387904L, 3071L);
            case 'A':
                return i(131072L, 0L);
            case 'B':
                return i(263882790666240L, 0L);
            case 'C':
                return i(1128107587141632L, 0L);
            case 'D':
                return i(1048576L, 0L);
            case 'E':
                return i(268435456L, 0L);
            case 'F':
                return i(2252005972115456L, 0L);
            case 'G':
                return i(4503599627374080L, 0L);
            case 'I':
                return i(8796093022208L, 0L);
            case 'J':
                return i(134217728L, 0L);
            case 'L':
                return i(1644167616L, 0L);
            case 'M':
                return i(2621472L, 0L);
            case 'N':
                return i(16809984L, 0L);
            case 'O':
                return i(9007199254740992L, 0L);
            case 'P':
                return i(4194304L, 0L);
            case 'R':
                return i(34359738368L, 0L);
            case 'S':
                return i(54888719970562048L, 0L);
            case 'T':
                return i(848256040960L, 0L);
            case 'U':
                return i(8388608L, 0L);
            case 'V':
                return i(4398046511104L, 0L);
            case 'f':
                return i(288230376151711744L, 0L);
            case 'n':
                return i(72057594037927936L, 0L);
            case 't':
                return i(144115188075855872L, 0L);
            default:
                return d(6, 0);
        }
    }

    private int i(long j2, long j3) {
        try {
            this.m = this.l.c();
            switch (this.m) {
                case '.':
                    if ((2048 & j3) != 0) {
                        return a(1, 75);
                    }
                    break;
                case 'A':
                    return w(j2, 39608188403712L, j3, 0L);
                case 'D':
                    return w(j2, 8796093153280L, j3, 0L);
                case 'E':
                    if ((1073741824 & j2) != 0) {
                        this.s = 30;
                        this.r = 1;
                    }
                    return w(j2, 18015538856984064L, j3, 0L);
                case 'F':
                    return w(j2, 824633720832L, j3, 0L);
                case 'H':
                    return w(j2, 844424930131968L, j3, 0L);
                case 'I':
                    return w(j2, 1048576L, j3, 0L);
                case 'K':
                    return w(j2, 36028797018963968L, j3, 0L);
                case 'L':
                    return w(j2, 2199023255552L, j3, 0L);
                case 'M':
                    return w(j2, 134217728L, j3, 0L);
                case 'N':
                    return w(j2, 17592194433024L, j3, 0L);
                case 'O':
                    return w(j2, 5700074526999008L, j3, 0L);
                case 'P':
                    if ((9007199254740992L & j2) != 0) {
                        return a(1, 53);
                    }
                    break;
                case 'Q':
                    if ((268435456 & j2) != 0) {
                        return a(1, 28);
                    }
                    break;
                case 'T':
                    if ((536870912 & j2) != 0) {
                        return a(1, 29);
                    }
                    break;
                case 'U':
                    return w(j2, 2251799814471680L, j3, 0L);
                case 'X':
                    return w(j2, 140737488355328L, j3, 0L);
                case 'a':
                    return w(j2, 288230376151711744L, j3, 0L);
                case 'e':
                    return w(j2, 0L, j3, 640L);
                case 'f':
                    return w(j2, 0L, j3, 256L);
                case 'i':
                    return w(j2, 72057594037927936L, j3, 4L);
                case 'l':
                    return w(j2, Long.MIN_VALUE, j3, 97L);
                case 'm':
                    return w(j2, 0L, j3, 8L);
                case 'n':
                    return w(j2, 0L, j3, 2L);
                case 'r':
                    return w(j2, 144115188075855872L, j3, 0L);
                case 's':
                    return w(j2, 4611686018427387904L, j3, 0L);
                case 'u':
                    return w(j2, 0L, j3, 16L);
            }
            return f(0, j2, j3);
        } catch (IOException e) {
            e(0, j2, j3);
            return 1;
        }
    }

    private int w(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return f(0, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'A':
                    return x(j6, 448L, j7, 0L);
                case 'B':
                    if ((262144 & j6) != 0) {
                        return a(2, 18);
                    }
                    break;
                case 'D':
                    if ((131072 & j6) != 0) {
                        return a(2, 17);
                    }
                    if ((2097152 & j6) != 0) {
                        return a(2, 21);
                    }
                    break;
                case 'I':
                    return x(j6, 36037610291855360L, j7, 0L);
                case 'L':
                    if ((524288 & j6) != 0) {
                        return a(2, 19);
                    }
                    if ((281474976710656L & j6) != 0) {
                        return a(2, 48);
                    }
                    return x(j6, 8590000128L, j7, 0L);
                case 'M':
                    if ((8388608 & j6) != 0) {
                        return a(2, 23);
                    }
                    break;
                case 'N':
                    if ((33554432 & j6) != 0) {
                        return a(2, 25);
                    }
                    return x(j6, 3412884159725568L, j7, 0L);
                case 'O':
                    return x(j6, 161353331376128L, j7, 0L);
                case 'P':
                    if ((134217728 & j6) != 0) {
                        return a(2, 27);
                    }
                    break;
                case 'R':
                    if ((70368744177664L & j6) != 0) {
                        return a(2, 46);
                    }
                    if ((562949953421312L & j6) != 0) {
                        return a(2, 49);
                    }
                    return x(j6, 4604204941312L, j7, 0L);
                case 'S':
                    return x(j6, 6442450944L, j7, 0L);
                case 'T':
                    if ((16777216 & j6) != 0) {
                        return a(2, 24);
                    }
                    return x(j6, 22519132008250880L, j7, 0L);
                case 'V':
                    if ((1048576 & j6) != 0) {
                        return a(2, 20);
                    }
                    return x(j6, 32L, j7, 0L);
                case 'W':
                    if ((4194304 & j6) != 0) {
                        return a(2, 22);
                    }
                    return x(j6, 32768L, j7, 0L);
                case 'a':
                    return x(j6, 0L, j7, 9L);
                case 'i':
                    return x(j6, Long.MIN_VALUE, j7, 32L);
                case 'l':
                    if ((72057594037927936L & j6) != 0) {
                        return a(2, 56);
                    }
                    return x(j6, 288230376151711744L, j7, 0L);
                case 'n':
                    return x(j6, 0L, j7, 640L);
                case 'o':
                    return x(j6, 4611686018427387904L, j7, 64L);
                case 'p':
                    return x(j6, 0L, j7, 16L);
                case 's':
                    return x(j6, 0L, j7, 4L);
                case 'u':
                    return x(j6, 144115188075855872L, j7, 258L);
            }
            return f(1, j6, j7);
        } catch (IOException e) {
            e(1, j6, j7);
            return 2;
        }
    }

    private int x(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return f(1, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'A':
                    return y(j6, 4398046511104L, j7, 0L);
                case 'C':
                    return y(j6, 2251799880794112L, j7, 0L);
                case 'D':
                    if ((35184372088832L & j6) != 0) {
                        return a(3, 45);
                    }
                    return y(j6, 448L, j7, 0L);
                case 'E':
                    if ((32 & j6) != 0) {
                        return a(3, 5);
                    }
                    break;
                case 'F':
                    if ((65536 & j6) != 0) {
                        return a(3, 16);
                    }
                    break;
                case 'L':
                    if ((8589934592L & j6) != 0) {
                        return a(3, 33);
                    }
                    return y(j6, 1185410973696L, j7, 0L);
                case 'O':
                    return y(j6, 4503599627370496L, j7, 0L);
                case 'P':
                    return y(j6, 36028934457917440L, j7, 0L);
                case 'R':
                    if ((140737488355328L & j6) != 0) {
                        return a(3, 47);
                    }
                    return y(j6, 824633720832L, j7, 0L);
                case 'S':
                    return y(j6, 1128098930098176L, j7, 0L);
                case 'T':
                    if ((2147483648L & j6) != 0) {
                        this.s = 31;
                        this.r = 3;
                    } else if ((17592186044416L & j6) != 0) {
                        return a(3, 44);
                    }
                    return y(j6, 4295023616L, j7, 0L);
                case 'U':
                    return y(j6, 34359747072L, j7, 0L);
                case 'V':
                    if ((8796093022208L & j6) != 0) {
                        return a(3, 43);
                    }
                    break;
                case '_':
                    return y(j6, 18014398509481984L, j7, 4L);
                case 'c':
                    return y(j6, 0L, j7, 64L);
                case 'd':
                    if ((512 & j7) != 0) {
                        this.s = 73;
                        this.r = 3;
                    }
                    return y(j6, 0L, j7, 128L);
                case 'e':
                    if ((144115188075855872L & j6) != 0) {
                        return a(3, 57);
                    }
                    break;
                case 'm':
                    return y(j6, 0L, j7, 2L);
                case 'n':
                    return y(j6, Long.MIN_VALUE, j7, 288L);
                case 's':
                    return y(j6, 288230376151711744L, j7, 1L);
                case 'u':
                    return y(j6, 4611686018427387904L, j7, 0L);
                case 'v':
                    return y(j6, 0L, j7, 16L);
                case 'x':
                    return y(j6, 0L, j7, 8L);
            }
            return f(2, j6, j7);
        } catch (IOException e) {
            e(2, j6, j7);
            return 3;
        }
    }

    private int y(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return f(2, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case ' ':
                    return z(j6, 0L, j7, 128L);
                case 'A':
                    return z(j6, 67165184L, j7, 0L);
                case 'B':
                    return z(j6, 128L, j7, 0L);
                case 'C':
                    return z(j6, 292057776128L, j7, 0L);
                case 'I':
                    return z(j6, 1099511627776L, j7, 0L);
                case 'K':
                    if ((64 & j6) != 0) {
                        return a(4, 6);
                    }
                    break;
                case 'L':
                    return z(j6, 549755813888L, j7, 0L);
                case 'N':
                    return z(j6, 256L, j7, 0L);
                case 'O':
                    return z(j6, 68719476736L, j7, 0L);
                case 'P':
                    return z(j6, 8704L, j7, 0L);
                case 'R':
                    return z(j6, 4569845202944L, j7, 0L);
                case 'S':
                    return z(j6, 4294967296L, j7, 0L);
                case 'T':
                    if ((1125899906842624L & j6) != 0) {
                        return a(4, 50);
                    }
                    return z(j6, 18014398509481984L, j7, 0L);
                case 'U':
                    return z(j6, 2199023255552L, j7, 0L);
                case '[':
                    if ((2251799813685248L & j6) != 0) {
                        return a(4, 51);
                    }
                    if ((4503599627370496L & j6) != 0) {
                        return a(4, 52);
                    }
                    break;
                case '_':
                    return z(j6, 36028797018963968L, j7, 0L);
                case 'a':
                    return z(j6, 0L, j7, 80L);
                case 'c':
                    if ((256 & j7) != 0) {
                        return a(4, 72);
                    }
                    break;
                case 'e':
                    if ((288230376151711744L & j6) != 0) {
                        return a(4, 58);
                    }
                    if ((32 & j7) != 0) {
                        this.s = 69;
                        this.r = 4;
                    }
                    return z(j6, Long.MIN_VALUE, j7, 0L);
                case 'p':
                    return z(j6, 0L, j7, 2L);
                case 'r':
                    return z(j6, 4611686018427387904L, j7, 0L);
                case 's':
                    return z(j6, 0L, j7, 8L);
                case 't':
                    return z(j6, 0L, j7, 1L);
                case 'v':
                    return z(j6, 0L, j7, 4L);
            }
            return f(3, j6, j7);
        } catch (IOException e) {
            e(3, j6, j7);
            return 4;
        }
    }

    private int z(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return f(3, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'A':
                    return A(j6, 292057776128L, j7, 0L);
                case 'B':
                    return A(j6, 56320L, j7, 0L);
                case 'E':
                    return A(j6, 141733920768L, j7, 0L);
                case 'G':
                    if ((4398046511104L & j6) != 0) {
                        return a(5, 42);
                    }
                    break;
                case 'I':
                    return A(j6, 256L, j7, 0L);
                case 'N':
                    if ((34359738368L & j6) != 0) {
                        return a(5, 35);
                    }
                    return A(j6, 36028797018963968L, j7, 0L);
                case 'O':
                    return A(j6, 18015016984772736L, j7, 0L);
                case 'R':
                    return A(j6, 2199023255552L, j7, 0L);
                case 'S':
                    return A(j6, 1099511627776L, j7, 0L);
                case 'T':
                    if ((67108864 & j6) != 0) {
                        return a(5, 26);
                    }
                    break;
                case 'V':
                    return A(j6, 8704L, j7, 0L);
                case 'a':
                    return A(j6, 0L, j7, 6L);
                case 'c':
                    return A(j6, 4611686018427387904L, j7, 0L);
                case 'd':
                    return A(j6, Long.MIN_VALUE, j7, 0L);
                case 'l':
                    if ((16 & j7) != 0) {
                        return a(5, 68);
                    }
                    if ((64 & j7) != 0) {
                        return a(5, 70);
                    }
                    return A(j6, 0L, j7, 129L);
                case 't':
                    return A(j6, 0L, j7, 8L);
            }
            return f(4, j6, j7);
        } catch (IOException e) {
            e(4, j6, j7);
            return 5;
        }
    }

    private int A(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return f(4, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'A':
                    return B(j6, 8704L, j7, 0L);
                case 'E':
                    if ((2199023255552L & j6) != 0) {
                        return a(6, 41);
                    }
                    return B(j6, 36028797018963968L, j7, 0L);
                case 'L':
                    if ((256 & j6) != 0) {
                        return a(6, 8);
                    }
                    return B(j6, 292057827328L, j7, 0L);
                case 'O':
                    return B(j6, 549755814016L, j7, 0L);
                case 'P':
                    if ((68719476736L & j6) != 0) {
                        return a(6, 36);
                    }
                    if ((137438953472L & j6) != 0) {
                        return a(6, 37);
                    }
                    if ((18014398509481984L & j6) != 0) {
                        return a(6, 54);
                    }
                    break;
                case 'T':
                    if ((4294967296L & j6) != 0) {
                        return a(6, 32);
                    }
                    if ((1099511627776L & j6) != 0) {
                        return a(6, 40);
                    }
                    break;
                case 'U':
                    return B(j6, 5120L, j7, 0L);
                case 'a':
                    return B(j6, 0L, j7, 8L);
                case 'e':
                    if ((4611686018427387904L & j6) != 0) {
                        return a(6, 62);
                    }
                    return B(j6, Long.MIN_VALUE, j7, 0L);
                case 'i':
                    return B(j6, 0L, j7, 1L);
                case 'o':
                    return B(j6, 0L, j7, 128L);
                case 'r':
                    return B(j6, 0L, j7, 6L);
            }
            return f(5, j6, j7);
        } catch (IOException e) {
            e(5, j6, j7);
            return 6;
        }
    }

    private int B(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return f(5, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'E':
                    if ((2048 & j6) != 0) {
                        return a(7, 11);
                    }
                    if ((16384 & j6) != 0) {
                        return a(7, 14);
                    }
                    if ((32768 & j6) != 0) {
                        return a(7, 15);
                    }
                    break;
                case 'L':
                    if ((128 & j6) != 0) {
                        return a(7, 7);
                    }
                    if ((512 & j6) != 0) {
                        return a(7, 9);
                    }
                    if ((8192 & j6) != 0) {
                        return a(7, 13);
                    }
                    if ((17179869184L & j6) != 0) {
                        return a(7, 34);
                    }
                    if ((274877906944L & j6) != 0) {
                        return a(7, 38);
                    }
                    break;
                case 'P':
                    if ((1024 & j6) != 0) {
                        return a(7, 10);
                    }
                    if ((4096 & j6) != 0) {
                        return a(7, 12);
                    }
                    if ((549755813888L & j6) != 0) {
                        return a(7, 39);
                    }
                    break;
                case 'X':
                    return C(j6, 36028797018963968L, j7, 0L);
                case 'a':
                    return C(j6, 0L, j7, 6L);
                case 'c':
                    return C(j6, 0L, j7, 136L);
                case 'f':
                    return C(j6, Long.MIN_VALUE, j7, 0L);
                case 'n':
                    return C(j6, 0L, j7, 1L);
            }
            return f(6, j6, j7);
        } catch (IOException e) {
            e(6, j6, j7);
            return 7;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int C(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return f(6, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'T':
                    if ((36028797018963968L & j6) != 0) {
                        return a(8, 55);
                    }
                    break;
                case 'a':
                    return D(j6, 0L, j7, 128L);
                case 'e':
                    return D(j6, 0L, j7, 1L);
                case 'i':
                    return D(j6, Long.MIN_VALUE, j7, 0L);
                case 'k':
                    return D(j6, 0L, j7, 8L);
                case 'm':
                    return D(j6, 0L, j7, 2L);
                case 'r':
                    return D(j6, 0L, j7, 4L);
            }
            return f(7, j6, j7);
        } catch (IOException e) {
            e(7, j6, j7);
            return 8;
        }
    }

    private int D(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return f(7, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'd':
                    return E(j6, 0L, j7, 1L);
                case 'g':
                    if ((4 & j7) != 0) {
                        return a(9, 66);
                    }
                    break;
                case 'l':
                    if ((128 & j7) != 0) {
                        return a(9, 71);
                    }
                    break;
                case 'n':
                    return E(j6, Long.MIN_VALUE, j7, 0L);
                case 's':
                    if ((2 & j7) != 0) {
                        return a(9, 65);
                    }
                    return E(j6, 0L, j7, 8L);
            }
            return f(8, j6, j7);
        } catch (IOException e) {
            e(8, j6, j7);
            return 9;
        }
    }

    private int E(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return f(8, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'e':
                    return F(j6, Long.MIN_VALUE, j7, 1L);
                case 'i':
                    return F(j6, 0L, j7, 8L);
                default:
                    return f(9, j6, j7);
            }
        } catch (IOException e) {
            e(9, j6, j7);
            return 10;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int F(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return f(9, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'd':
                    if ((Long.MIN_VALUE & j6) != 0) {
                        return a(11, 63);
                    }
                    break;
                case 'f':
                    return G(j6, 0L, j7, 1L);
                case 'z':
                    return G(j6, 0L, j7, 8L);
            }
            return f(10, j6, j7);
        } catch (IOException e) {
            e(10, j6, j7);
            return 11;
        }
    }

    private int G(long j2, long j3, long j4, long j5) {
        long j6 = j5 & j4;
        if (((j3 & j2) | j6) == 0) {
            return f(10, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'i':
                    return j(j6, 1L);
                case 'e':
                    if ((8 & j6) != 0) {
                        return a(12, 67);
                    }
                    break;
            }
            return f(11, 0L, j6);
        } catch (IOException e) {
            e(11, 0L, j6);
            return 12;
        }
    }

    private int j(long j2, long j3) {
        long j4 = j3 & j2;
        if (j4 == 0) {
            return f(11, 0L, j2);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'n':
                    return k(j4, 1L);
                default:
                    return f(12, 0L, j4);
            }
        } catch (IOException e) {
            e(12, 0L, j4);
            return 13;
        }
    }

    private int k(long j2, long j3) {
        long j4 = j3 & j2;
        if (j4 == 0) {
            return f(12, 0L, j2);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'e':
                    return l(j4, 1L);
                default:
                    return f(13, 0L, j4);
            }
        } catch (IOException e) {
            e(13, 0L, j4);
            return 14;
        }
    }

    private int l(long j2, long j3) {
        long j4 = j3 & j2;
        if (j4 == 0) {
            return f(13, 0L, j2);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'd':
                    if ((1 & j4) != 0) {
                        return a(15, 64);
                    }
                    break;
            }
            return f(14, 0L, j4);
        } catch (IOException e) {
            e(14, 0L, j4);
            return 15;
        }
    }

    private int c(int i2, int i3, int i4) {
        this.s = i3;
        this.r = i2;
        try {
            this.m = this.l.c();
            return d(i4, i2 + 1);
        } catch (IOException e) {
            return i2 + 1;
        }
    }

    private int d(int i2, int i3) {
        int i4 = 0;
        this.p = 51;
        int i5 = 1;
        this.u[0] = i2;
        int i6 = Integer.MAX_VALUE;
        while (true) {
            int i7 = i5;
            int i8 = i4;
            int i9 = this.q + 1;
            this.q = i9;
            if (i9 == Integer.MAX_VALUE) {
                g();
            }
            if (this.m < '@') {
                long j2 = 1 << this.m;
                do {
                    i7--;
                    switch (this.u[i7]) {
                        case 0:
                            if ((9216 & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 74) {
                                    i6 = 74;
                                }
                                h(12, 15);
                                continue;
                            }
                        case 1:
                            if ((4294971904L & j2) != 0) {
                                g(1, 2);
                                continue;
                            } else {
                                continue;
                            }
                        case 2:
                            if (this.m == ';') {
                                h(0, 2);
                                continue;
                            } else {
                                continue;
                            }
                        case 3:
                            if (((-9217) & j2) != 0) {
                                h(0, 2);
                                continue;
                            } else {
                                continue;
                            }
                        case 4:
                            if (this.m != '\n') {
                                continue;
                            } else {
                                if (i6 > 74) {
                                    i6 = 74;
                                }
                                h(12, 15);
                                continue;
                            }
                        case 5:
                            if (this.m == '\r') {
                                int[] iArr = this.u;
                                int i10 = this.p;
                                this.p = i10 + 1;
                                iArr[i10] = 4;
                                continue;
                            } else {
                                continue;
                            }
                        case 6:
                            if ((287948901175001088L & j2) != 0) {
                                if (i6 > 60) {
                                    i6 = 60;
                                }
                                h(71, 76);
                            } else if ((4294971904L & j2) != 0) {
                                h(77, 80);
                            } else if ((9216 & j2) != 0) {
                                if (i6 > 74) {
                                    i6 = 74;
                                }
                                h(12, 15);
                            } else if (this.m == '-') {
                                h(81, 83);
                            } else if (this.m == ';') {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                h(84, 87);
                            } else if (this.m == '.') {
                                a(27);
                            } else if (this.m == '\'') {
                                h(22, 24);
                            } else if (this.m == '\"') {
                                h(25, 27);
                            } else if (this.m == ':') {
                                int[] iArr2 = this.u;
                                int i11 = this.p;
                                this.p = i11 + 1;
                                iArr2[i11] = 7;
                            }
                            if (this.m == '0') {
                                int[] iArr3 = this.u;
                                int i12 = this.p;
                                this.p = i12 + 1;
                                iArr3[i12] = 14;
                                continue;
                            } else if (this.m == '\r') {
                                int[] iArr4 = this.u;
                                int i13 = this.p;
                                this.p = i13 + 1;
                                iArr4[i13] = 4;
                                continue;
                            } else {
                                continue;
                            }
                        case 8:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 76) {
                                    i6 = 76;
                                }
                                int[] iArr5 = this.u;
                                int i14 = this.p;
                                this.p = i14 + 1;
                                iArr5[i14] = 8;
                                continue;
                            }
                        case 10:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 77) {
                                    i6 = 77;
                                }
                                int[] iArr6 = this.u;
                                int i15 = this.p;
                                this.p = i15 + 1;
                                iArr6[i15] = 10;
                                continue;
                            }
                        case 12:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 78) {
                                    i6 = 78;
                                }
                                int[] iArr7 = this.u;
                                int i16 = this.p;
                                this.p = i16 + 1;
                                iArr7[i16] = 12;
                                continue;
                            }
                        case 13:
                            if (this.m == '0') {
                                int[] iArr8 = this.u;
                                int i17 = this.p;
                                this.p = i17 + 1;
                                iArr8[i17] = 14;
                                continue;
                            } else {
                                continue;
                            }
                        case 15:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 80) {
                                    i6 = 80;
                                }
                                int[] iArr9 = this.u;
                                int i18 = this.p;
                                this.p = i18 + 1;
                                iArr9[i18] = 15;
                                continue;
                            }
                        case 16:
                            if (this.m == '\"') {
                                h(25, 27);
                                continue;
                            } else {
                                continue;
                            }
                        case 18:
                            h(25, 27);
                            continue;
                        case 19:
                            if (((-17179869185L) & j2) != 0) {
                                h(25, 27);
                                continue;
                            } else {
                                continue;
                            }
                        case 20:
                            if (this.m == '\"' && i6 > 81) {
                                i6 = 81;
                                continue;
                            }
                            break;
                        case 21:
                            if (this.m == '\'') {
                                h(22, 24);
                                continue;
                            } else {
                                continue;
                            }
                        case 23:
                            h(22, 24);
                            continue;
                        case 24:
                            if (((-549755813889L) & j2) != 0) {
                                h(22, 24);
                                continue;
                            } else {
                                continue;
                            }
                        case 25:
                            if (this.m == '\'' && i6 > 81) {
                                i6 = 81;
                                continue;
                            }
                            break;
                        case 26:
                            if (this.m == '.') {
                                a(27);
                                continue;
                            } else {
                                continue;
                            }
                        case 27:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                g(27, 28);
                                continue;
                            }
                        case 29:
                            if ((43980465111040L & j2) != 0) {
                                a(30);
                                continue;
                            } else {
                                continue;
                            }
                        case 30:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                a(30);
                                continue;
                            }
                        case 31:
                            if ((4294971904L & j2) != 0) {
                                h(77, 80);
                                continue;
                            } else {
                                continue;
                            }
                        case 32:
                            if ((4294971904L & j2) != 0) {
                                g(32, 33);
                                continue;
                            } else {
                                continue;
                            }
                        case 33:
                            if (this.m != ';') {
                                continue;
                            } else {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                a(34);
                                continue;
                            }
                        case 34:
                            if (((-9217) & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                a(34);
                                continue;
                            }
                        case 35:
                            if (this.m != ';') {
                                continue;
                            } else {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                h(84, 87);
                                continue;
                            }
                        case 36:
                            if (this.m == '-') {
                                h(81, 83);
                                continue;
                            } else {
                                continue;
                            }
                        case 37:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 60) {
                                    i6 = 60;
                                }
                                a(37);
                                continue;
                            }
                        case 38:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                h(88, 91);
                                continue;
                            }
                        case 39:
                            if ((287948901175001088L & j2) != 0) {
                                g(39, 40);
                                continue;
                            } else {
                                continue;
                            }
                        case 40:
                            if (this.m != '.') {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                g(41, 42);
                                continue;
                            }
                        case 41:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                g(41, 42);
                                continue;
                            }
                        case 43:
                            if ((43980465111040L & j2) != 0) {
                                a(44);
                                continue;
                            } else {
                                continue;
                            }
                        case 44:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                a(44);
                                continue;
                            }
                        case 45:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                g(45, 46);
                                continue;
                            }
                        case 47:
                            if ((43980465111040L & j2) != 0) {
                                a(48);
                                continue;
                            } else {
                                continue;
                            }
                        case 48:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                a(48);
                                continue;
                            }
                        case 49:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 60) {
                                    i6 = 60;
                                }
                                h(71, 76);
                                continue;
                            }
                        case 50:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 79) {
                                    i6 = 79;
                                }
                                a(50);
                                continue;
                            }
                        case 51:
                            if ((4294971904L & j2) != 0) {
                                g(1, 2);
                            } else if (this.m == ';') {
                                h(0, 2);
                            }
                            if ((4294971904L & j2) != 0) {
                                g(32, 33);
                                continue;
                            } else if (this.m != ';') {
                                continue;
                            } else {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                a(34);
                                continue;
                            }
                    }
                } while (i7 != i8);
            } else if (this.m < 128) {
                long j3 = 1 << (this.m & '?');
                do {
                    i7--;
                    switch (this.u[i7]) {
                        case 3:
                            f(0, 2);
                            continue;
                        case 6:
                            if (this.m == 'u') {
                                int[] iArr10 = this.u;
                                int i19 = this.p;
                                this.p = i19 + 1;
                                iArr10[i19] = 12;
                                continue;
                            } else if (this.m == 'v') {
                                int[] iArr11 = this.u;
                                int i20 = this.p;
                                this.p = i20 + 1;
                                iArr11[i20] = 10;
                                continue;
                            } else {
                                continue;
                            }
                        case 7:
                        case 8:
                            if ((576460745995190270L & j3) == 0) {
                                continue;
                            } else {
                                if (i6 > 76) {
                                    i6 = 76;
                                }
                                a(8);
                                continue;
                            }
                        case 9:
                            if (this.m == 'v') {
                                int[] iArr12 = this.u;
                                int i21 = this.p;
                                this.p = i21 + 1;
                                iArr12[i21] = 10;
                                continue;
                            } else {
                                continue;
                            }
                        case 11:
                            if (this.m == 'u') {
                                int[] iArr13 = this.u;
                                int i22 = this.p;
                                this.p = i22 + 1;
                                iArr13[i22] = 12;
                                continue;
                            } else {
                                continue;
                            }
                        case 14:
                            if ((72057594054705152L & j3) != 0) {
                                a(15);
                                continue;
                            } else {
                                continue;
                            }
                        case 15:
                            if ((541165879422L & j3) == 0) {
                                continue;
                            } else {
                                if (i6 > 80) {
                                    i6 = 80;
                                }
                                a(15);
                                continue;
                            }
                        case 17:
                            if (this.m == '\\') {
                                int[] iArr14 = this.u;
                                int i23 = this.p;
                                this.p = i23 + 1;
                                iArr14[i23] = 18;
                                continue;
                            } else {
                                continue;
                            }
                        case 18:
                            h(25, 27);
                            continue;
                        case 19:
                            if (((-268435457) & j3) != 0) {
                                h(25, 27);
                                continue;
                            } else {
                                continue;
                            }
                        case 22:
                            if (this.m == '\\') {
                                int[] iArr15 = this.u;
                                int i24 = this.p;
                                this.p = i24 + 1;
                                iArr15[i24] = 23;
                                continue;
                            } else {
                                continue;
                            }
                        case 23:
                            h(22, 24);
                            continue;
                        case 24:
                            if (((-268435457) & j3) != 0) {
                                h(22, 24);
                                continue;
                            } else {
                                continue;
                            }
                        case 28:
                            if ((137438953504L & j3) != 0) {
                                f(92, 93);
                                continue;
                            } else {
                                continue;
                            }
                        case 34:
                            if (i6 > 4) {
                                i6 = 4;
                            }
                            int[] iArr16 = this.u;
                            int i25 = this.p;
                            this.p = i25 + 1;
                            iArr16[i25] = 34;
                            continue;
                        case 42:
                            if ((137438953504L & j3) != 0) {
                                f(94, 95);
                                continue;
                            } else {
                                continue;
                            }
                        case 46:
                            if ((137438953504L & j3) != 0) {
                                f(63, 64);
                                continue;
                            } else {
                                continue;
                            }
                    }
                } while (i7 != i8);
            } else {
                int i26 = this.m >> '\b';
                int i27 = i26 >> 6;
                long j4 = 1 << (i26 & 63);
                int i28 = (this.m & 255) >> 6;
                long j5 = 1 << (this.m & '?');
                do {
                    i7--;
                    switch (this.u[i7]) {
                        case 3:
                            if (a(i26, i27, i28, j4, j5)) {
                                f(0, 2);
                                continue;
                            } else {
                                continue;
                            }
                        case 18:
                        case 19:
                            if (a(i26, i27, i28, j4, j5)) {
                                h(25, 27);
                                continue;
                            } else {
                                continue;
                            }
                        case 23:
                        case 24:
                            if (a(i26, i27, i28, j4, j5)) {
                                h(22, 24);
                                continue;
                            } else {
                                continue;
                            }
                        case 34:
                            if (a(i26, i27, i28, j4, j5)) {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                int[] iArr17 = this.u;
                                int i29 = this.p;
                                this.p = i29 + 1;
                                iArr17[i29] = 34;
                                continue;
                            } else {
                                continue;
                            }
                    }
                } while (i7 != i8);
            }
            if (i6 != Integer.MAX_VALUE) {
                this.s = i6;
                this.r = i3;
                i6 = Integer.MAX_VALUE;
            }
            i3++;
            i5 = this.p;
            this.p = i8;
            i4 = 51 - i8;
            if (i5 != i4) {
                try {
                    this.m = this.l.c();
                } catch (IOException e) {
                }
            }
            return i3;
        }
    }

    private final int g(int i2, long j2, long j3) {
        switch (i2) {
            case 0:
                if ((576460752303423456L & j2) != 0) {
                    this.s = 61;
                    return 1;
                } else if ((14 & j2) != 0) {
                    return 52;
                } else {
                    return (((-4611686018427387904L) & j2) == 0 && (3071 & j3) == 0) ? -1 : 30;
                }
            case 1:
                if ((9007201167343616L & j2) == 0) {
                    if ((567453551136079840L & j2) != 0) {
                        if (this.r != 1) {
                            this.s = 61;
                            this.r = 1;
                            return 1;
                        }
                        return 1;
                    }
                    return -1;
                }
                return 1;
            case 2:
                if ((72972387913433088L & j2) == 0) {
                    if ((494481163256201184L & j2) != 0) {
                        this.s = 61;
                        this.r = 2;
                        return 1;
                    }
                    return -1;
                }
                return 1;
            case 3:
                if ((144317513247817760L & j2) == 0) {
                    if ((350163650008383424L & j2) != 0) {
                        if (this.r != 3) {
                            this.s = 61;
                            this.r = 3;
                            return 1;
                        }
                        return 1;
                    }
                    return -1;
                }
                return 1;
            case 4:
                if ((289356276058554432L & j2) == 0) {
                    if ((54051978803740544L & j2) != 0) {
                        if (this.r != 4) {
                            this.s = 61;
                            this.r = 4;
                            return 1;
                        }
                        return 1;
                    }
                    return -1;
                }
                return 1;
            case 5:
                if ((4432473358336L & j2) == 0) {
                    if ((54047546330382208L & j2) != 0) {
                        this.s = 61;
                        this.r = 5;
                        return 1;
                    }
                    return -1;
                }
                return 1;
            case 6:
                if ((36029638832619136L & j2) == 0) {
                    return (18017907497763072L & j2) == 0 ? -1 : 1;
                }
                this.s = 61;
                this.r = 6;
                return 1;
            case 7:
                if ((36028797018963968L & j2) == 0) {
                    return (841813655168L & j2) == 0 ? -1 : 1;
                }
                this.s = 61;
                this.r = 7;
                return 1;
            case 8:
                return (36028797018963968L & j2) == 0 ? -1 : 1;
            default:
                return -1;
        }
    }

    private final int h(int i2, long j2, long j3) {
        return e(g(i2, j2, j3), i2 + 1);
    }

    private int f() {
        switch (this.m) {
            case '\t':
                return d(0, 2, 52);
            case '\f':
                return d(0, 3, 52);
            case ' ':
                return d(0, 1, 52);
            case '.':
                return m(-4611686018427387904L, 3071L);
            case 'A':
                return m(131072L, 0L);
            case 'B':
                return m(263882790666240L, 0L);
            case 'C':
                return m(1128107587141632L, 0L);
            case 'D':
                return m(1048576L, 0L);
            case 'E':
                return m(268435456L, 0L);
            case 'F':
                return m(2252005972115456L, 0L);
            case 'G':
                return m(4503599627374080L, 0L);
            case 'I':
                return m(8796093022208L, 0L);
            case 'J':
                return m(134217728L, 0L);
            case 'L':
                return m(1644167616L, 0L);
            case 'M':
                return m(2621472L, 0L);
            case 'N':
                return m(16809984L, 0L);
            case 'O':
                return m(9007199254740992L, 0L);
            case 'P':
                return m(4194304L, 0L);
            case 'R':
                return m(34359738368L, 0L);
            case 'S':
                return m(54888719970562048L, 0L);
            case 'T':
                return m(848256040960L, 0L);
            case 'U':
                return m(8388608L, 0L);
            case 'V':
                return m(4398046511104L, 0L);
            case 'f':
                return m(288230376151711744L, 0L);
            case 'n':
                return m(72057594037927936L, 0L);
            case 't':
                return m(144115188075855872L, 0L);
            default:
                return e(0, 0);
        }
    }

    private int m(long j2, long j3) {
        try {
            this.m = this.l.c();
            switch (this.m) {
                case '.':
                    if ((2048 & j3) != 0) {
                        return a(1, 75);
                    }
                    break;
                case 'A':
                    return H(j2, 39608188403712L, j3, 0L);
                case 'D':
                    return H(j2, 8796093153280L, j3, 0L);
                case 'E':
                    if ((1073741824 & j2) != 0) {
                        this.s = 30;
                        this.r = 1;
                    }
                    return H(j2, 18015538856984064L, j3, 0L);
                case 'F':
                    return H(j2, 824633720832L, j3, 0L);
                case 'H':
                    return H(j2, 844424930131968L, j3, 0L);
                case 'I':
                    return H(j2, 1048576L, j3, 0L);
                case 'K':
                    return H(j2, 36028797018963968L, j3, 0L);
                case 'L':
                    return H(j2, 2199023255552L, j3, 0L);
                case 'M':
                    return H(j2, 134217728L, j3, 0L);
                case 'N':
                    return H(j2, 17592194433024L, j3, 0L);
                case 'O':
                    return H(j2, 5700074526999008L, j3, 0L);
                case 'P':
                    if ((9007199254740992L & j2) != 0) {
                        return d(1, 53, 1);
                    }
                    break;
                case 'Q':
                    if ((268435456 & j2) != 0) {
                        return d(1, 28, 1);
                    }
                    break;
                case 'T':
                    if ((536870912 & j2) != 0) {
                        return d(1, 29, 1);
                    }
                    break;
                case 'U':
                    return H(j2, 2251799814471680L, j3, 0L);
                case 'X':
                    return H(j2, 140737488355328L, j3, 0L);
                case 'a':
                    return H(j2, 288230376151711744L, j3, 0L);
                case 'e':
                    return H(j2, 0L, j3, 640L);
                case 'f':
                    return H(j2, 0L, j3, 256L);
                case 'i':
                    return H(j2, 72057594037927936L, j3, 4L);
                case 'l':
                    return H(j2, Long.MIN_VALUE, j3, 97L);
                case 'm':
                    return H(j2, 0L, j3, 8L);
                case 'n':
                    return H(j2, 0L, j3, 2L);
                case 'r':
                    return H(j2, 144115188075855872L, j3, 0L);
                case 's':
                    return H(j2, 4611686018427387904L, j3, 0L);
                case 'u':
                    return H(j2, 0L, j3, 16L);
            }
            return h(0, j2, j3);
        } catch (IOException e) {
            g(0, j2, j3);
            return 1;
        }
    }

    private int H(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return h(0, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'A':
                    return I(j6, 448L, j7, 0L);
                case 'B':
                    if ((262144 & j6) != 0) {
                        return d(2, 18, 1);
                    }
                    break;
                case 'D':
                    if ((131072 & j6) != 0) {
                        return d(2, 17, 1);
                    }
                    if ((2097152 & j6) != 0) {
                        return d(2, 21, 1);
                    }
                    break;
                case 'I':
                    return I(j6, 36037610291855360L, j7, 0L);
                case 'L':
                    if ((524288 & j6) != 0) {
                        return d(2, 19, 1);
                    }
                    if ((281474976710656L & j6) != 0) {
                        return d(2, 48, 1);
                    }
                    return I(j6, 8590000128L, j7, 0L);
                case 'M':
                    if ((8388608 & j6) != 0) {
                        return d(2, 23, 1);
                    }
                    break;
                case 'N':
                    if ((33554432 & j6) != 0) {
                        return d(2, 25, 1);
                    }
                    return I(j6, 3412884159725568L, j7, 0L);
                case 'O':
                    return I(j6, 161353331376128L, j7, 0L);
                case 'P':
                    if ((134217728 & j6) != 0) {
                        return d(2, 27, 1);
                    }
                    break;
                case 'R':
                    if ((70368744177664L & j6) != 0) {
                        return d(2, 46, 1);
                    }
                    if ((562949953421312L & j6) != 0) {
                        return d(2, 49, 1);
                    }
                    return I(j6, 4604204941312L, j7, 0L);
                case 'S':
                    return I(j6, 6442450944L, j7, 0L);
                case 'T':
                    if ((16777216 & j6) != 0) {
                        return d(2, 24, 1);
                    }
                    return I(j6, 22519132008250880L, j7, 0L);
                case 'V':
                    if ((1048576 & j6) != 0) {
                        return d(2, 20, 1);
                    }
                    return I(j6, 32L, j7, 0L);
                case 'W':
                    if ((4194304 & j6) != 0) {
                        return d(2, 22, 1);
                    }
                    return I(j6, 32768L, j7, 0L);
                case 'a':
                    return I(j6, 0L, j7, 9L);
                case 'i':
                    return I(j6, Long.MIN_VALUE, j7, 32L);
                case 'l':
                    if ((72057594037927936L & j6) != 0) {
                        return d(2, 56, 1);
                    }
                    return I(j6, 288230376151711744L, j7, 0L);
                case 'n':
                    return I(j6, 0L, j7, 640L);
                case 'o':
                    return I(j6, 4611686018427387904L, j7, 64L);
                case 'p':
                    return I(j6, 0L, j7, 16L);
                case 's':
                    return I(j6, 0L, j7, 4L);
                case 'u':
                    return I(j6, 144115188075855872L, j7, 258L);
            }
            return h(1, j6, j7);
        } catch (IOException e) {
            g(1, j6, j7);
            return 2;
        }
    }

    private int I(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return h(1, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'A':
                    return J(j6, 4398046511104L, j7, 0L);
                case 'C':
                    return J(j6, 2251799880794112L, j7, 0L);
                case 'D':
                    if ((35184372088832L & j6) != 0) {
                        return d(3, 45, 1);
                    }
                    return J(j6, 448L, j7, 0L);
                case 'E':
                    if ((32 & j6) != 0) {
                        return d(3, 5, 1);
                    }
                    break;
                case 'F':
                    if ((65536 & j6) != 0) {
                        return d(3, 16, 1);
                    }
                    break;
                case 'L':
                    if ((8589934592L & j6) != 0) {
                        return d(3, 33, 1);
                    }
                    return J(j6, 1185410973696L, j7, 0L);
                case 'O':
                    return J(j6, 4503599627370496L, j7, 0L);
                case 'P':
                    return J(j6, 36028934457917440L, j7, 0L);
                case 'R':
                    if ((140737488355328L & j6) != 0) {
                        return d(3, 47, 1);
                    }
                    return J(j6, 824633720832L, j7, 0L);
                case 'S':
                    return J(j6, 1128098930098176L, j7, 0L);
                case 'T':
                    if ((2147483648L & j6) != 0) {
                        this.s = 31;
                        this.r = 3;
                    } else if ((17592186044416L & j6) != 0) {
                        return d(3, 44, 1);
                    }
                    return J(j6, 4295023616L, j7, 0L);
                case 'U':
                    return J(j6, 34359747072L, j7, 0L);
                case 'V':
                    if ((8796093022208L & j6) != 0) {
                        return d(3, 43, 1);
                    }
                    break;
                case '_':
                    return J(j6, 18014398509481984L, j7, 4L);
                case 'c':
                    return J(j6, 0L, j7, 64L);
                case 'd':
                    if ((512 & j7) != 0) {
                        this.s = 73;
                        this.r = 3;
                    }
                    return J(j6, 0L, j7, 128L);
                case 'e':
                    if ((144115188075855872L & j6) != 0) {
                        return d(3, 57, 1);
                    }
                    break;
                case 'm':
                    return J(j6, 0L, j7, 2L);
                case 'n':
                    return J(j6, Long.MIN_VALUE, j7, 288L);
                case 's':
                    return J(j6, 288230376151711744L, j7, 1L);
                case 'u':
                    return J(j6, 4611686018427387904L, j7, 0L);
                case 'v':
                    return J(j6, 0L, j7, 16L);
                case 'x':
                    return J(j6, 0L, j7, 8L);
            }
            return h(2, j6, j7);
        } catch (IOException e) {
            g(2, j6, j7);
            return 3;
        }
    }

    private int J(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return h(2, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case ' ':
                    return K(j6, 0L, j7, 128L);
                case 'A':
                    return K(j6, 67165184L, j7, 0L);
                case 'B':
                    return K(j6, 128L, j7, 0L);
                case 'C':
                    return K(j6, 292057776128L, j7, 0L);
                case 'I':
                    return K(j6, 1099511627776L, j7, 0L);
                case 'K':
                    if ((64 & j6) != 0) {
                        return d(4, 6, 1);
                    }
                    break;
                case 'L':
                    return K(j6, 549755813888L, j7, 0L);
                case 'N':
                    return K(j6, 256L, j7, 0L);
                case 'O':
                    return K(j6, 68719476736L, j7, 0L);
                case 'P':
                    return K(j6, 8704L, j7, 0L);
                case 'R':
                    return K(j6, 4569845202944L, j7, 0L);
                case 'S':
                    return K(j6, 4294967296L, j7, 0L);
                case 'T':
                    if ((1125899906842624L & j6) != 0) {
                        return d(4, 50, 1);
                    }
                    return K(j6, 18014398509481984L, j7, 0L);
                case 'U':
                    return K(j6, 2199023255552L, j7, 0L);
                case '[':
                    if ((2251799813685248L & j6) != 0) {
                        return a(4, 51);
                    }
                    if ((4503599627370496L & j6) != 0) {
                        return a(4, 52);
                    }
                    break;
                case '_':
                    return K(j6, 36028797018963968L, j7, 0L);
                case 'a':
                    return K(j6, 0L, j7, 80L);
                case 'c':
                    if ((256 & j7) != 0) {
                        return a(4, 72);
                    }
                    break;
                case 'e':
                    if ((288230376151711744L & j6) != 0) {
                        return d(4, 58, 1);
                    }
                    if ((32 & j7) != 0) {
                        this.s = 69;
                        this.r = 4;
                    }
                    return K(j6, Long.MIN_VALUE, j7, 0L);
                case 'p':
                    return K(j6, 0L, j7, 2L);
                case 'r':
                    return K(j6, 4611686018427387904L, j7, 0L);
                case 's':
                    return K(j6, 0L, j7, 8L);
                case 't':
                    return K(j6, 0L, j7, 1L);
                case 'v':
                    return K(j6, 0L, j7, 4L);
            }
            return h(3, j6, j7);
        } catch (IOException e) {
            g(3, j6, j7);
            return 4;
        }
    }

    private int K(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return h(3, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'A':
                    return L(j6, 292057776128L, j7, 0L);
                case 'B':
                    return L(j6, 56320L, j7, 0L);
                case 'E':
                    return L(j6, 141733920768L, j7, 0L);
                case 'G':
                    if ((4398046511104L & j6) != 0) {
                        return d(5, 42, 1);
                    }
                    break;
                case 'I':
                    return L(j6, 256L, j7, 0L);
                case 'N':
                    if ((34359738368L & j6) != 0) {
                        return d(5, 35, 1);
                    }
                    return L(j6, 36028797018963968L, j7, 0L);
                case 'O':
                    return L(j6, 18015016984772736L, j7, 0L);
                case 'R':
                    return L(j6, 2199023255552L, j7, 0L);
                case 'S':
                    return L(j6, 1099511627776L, j7, 0L);
                case 'T':
                    if ((67108864 & j6) != 0) {
                        return d(5, 26, 1);
                    }
                    break;
                case 'V':
                    return L(j6, 8704L, j7, 0L);
                case 'a':
                    return L(j6, 0L, j7, 6L);
                case 'c':
                    return L(j6, 4611686018427387904L, j7, 0L);
                case 'd':
                    return L(j6, Long.MIN_VALUE, j7, 0L);
                case 'l':
                    if ((16 & j7) != 0) {
                        return a(5, 68);
                    }
                    if ((64 & j7) != 0) {
                        return a(5, 70);
                    }
                    return L(j6, 0L, j7, 129L);
                case 't':
                    return L(j6, 0L, j7, 8L);
            }
            return h(4, j6, j7);
        } catch (IOException e) {
            g(4, j6, j7);
            return 5;
        }
    }

    private int L(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return h(4, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'A':
                    return M(j6, 8704L, j7, 0L);
                case 'E':
                    if ((2199023255552L & j6) != 0) {
                        return d(6, 41, 1);
                    }
                    return M(j6, 36028797018963968L, j7, 0L);
                case 'L':
                    if ((256 & j6) != 0) {
                        return d(6, 8, 1);
                    }
                    return M(j6, 292057827328L, j7, 0L);
                case 'O':
                    return M(j6, 549755814016L, j7, 0L);
                case 'P':
                    if ((68719476736L & j6) != 0) {
                        return d(6, 36, 1);
                    }
                    if ((137438953472L & j6) != 0) {
                        return d(6, 37, 1);
                    }
                    if ((18014398509481984L & j6) != 0) {
                        return d(6, 54, 1);
                    }
                    break;
                case 'T':
                    if ((4294967296L & j6) != 0) {
                        return d(6, 32, 1);
                    }
                    if ((1099511627776L & j6) != 0) {
                        return d(6, 40, 1);
                    }
                    break;
                case 'U':
                    return M(j6, 5120L, j7, 0L);
                case 'a':
                    return M(j6, 0L, j7, 8L);
                case 'e':
                    if ((4611686018427387904L & j6) != 0) {
                        return a(6, 62);
                    }
                    return M(j6, Long.MIN_VALUE, j7, 0L);
                case 'i':
                    return M(j6, 0L, j7, 1L);
                case 'o':
                    return M(j6, 0L, j7, 128L);
                case 'r':
                    return M(j6, 0L, j7, 6L);
            }
            return h(5, j6, j7);
        } catch (IOException e) {
            g(5, j6, j7);
            return 6;
        }
    }

    private int M(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return h(5, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'E':
                    if ((2048 & j6) != 0) {
                        return d(7, 11, 1);
                    }
                    if ((16384 & j6) != 0) {
                        return d(7, 14, 1);
                    }
                    if ((32768 & j6) != 0) {
                        return d(7, 15, 1);
                    }
                    break;
                case 'L':
                    if ((128 & j6) != 0) {
                        return d(7, 7, 1);
                    }
                    if ((512 & j6) != 0) {
                        return d(7, 9, 1);
                    }
                    if ((8192 & j6) != 0) {
                        return d(7, 13, 1);
                    }
                    if ((17179869184L & j6) != 0) {
                        return d(7, 34, 1);
                    }
                    if ((274877906944L & j6) != 0) {
                        return d(7, 38, 1);
                    }
                    break;
                case 'P':
                    if ((1024 & j6) != 0) {
                        return d(7, 10, 1);
                    }
                    if ((4096 & j6) != 0) {
                        return d(7, 12, 1);
                    }
                    if ((549755813888L & j6) != 0) {
                        return d(7, 39, 1);
                    }
                    break;
                case 'X':
                    return N(j6, 36028797018963968L, j7, 0L);
                case 'a':
                    return N(j6, 0L, j7, 6L);
                case 'c':
                    return N(j6, 0L, j7, 136L);
                case 'f':
                    return N(j6, Long.MIN_VALUE, j7, 0L);
                case 'n':
                    return N(j6, 0L, j7, 1L);
            }
            return h(6, j6, j7);
        } catch (IOException e) {
            g(6, j6, j7);
            return 7;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int N(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return h(6, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'T':
                    if ((36028797018963968L & j6) != 0) {
                        return d(8, 55, 1);
                    }
                    break;
                case 'a':
                    return O(j6, 0L, j7, 128L);
                case 'e':
                    return O(j6, 0L, j7, 1L);
                case 'i':
                    return O(j6, Long.MIN_VALUE, j7, 0L);
                case 'k':
                    return O(j6, 0L, j7, 8L);
                case 'm':
                    return O(j6, 0L, j7, 2L);
                case 'r':
                    return O(j6, 0L, j7, 4L);
            }
            return h(7, j6, j7);
        } catch (IOException e) {
            g(7, j6, j7);
            return 8;
        }
    }

    private int O(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return h(7, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'd':
                    return P(j6, 0L, j7, 1L);
                case 'g':
                    if ((4 & j7) != 0) {
                        return a(9, 66);
                    }
                    break;
                case 'l':
                    if ((128 & j7) != 0) {
                        return a(9, 71);
                    }
                    break;
                case 'n':
                    return P(j6, Long.MIN_VALUE, j7, 0L);
                case 's':
                    if ((2 & j7) != 0) {
                        return a(9, 65);
                    }
                    return P(j6, 0L, j7, 8L);
            }
            return h(8, j6, j7);
        } catch (IOException e) {
            g(8, j6, j7);
            return 9;
        }
    }

    private int P(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return h(8, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'e':
                    return Q(j6, Long.MIN_VALUE, j7, 1L);
                case 'i':
                    return Q(j6, 0L, j7, 8L);
                default:
                    return h(9, j6, j7);
            }
        } catch (IOException e) {
            g(9, j6, j7);
            return 10;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int Q(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return h(9, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'd':
                    if ((Long.MIN_VALUE & j6) != 0) {
                        return a(11, 63);
                    }
                    break;
                case 'f':
                    return R(j6, 0L, j7, 1L);
                case 'z':
                    return R(j6, 0L, j7, 8L);
            }
            return h(10, j6, j7);
        } catch (IOException e) {
            g(10, j6, j7);
            return 11;
        }
    }

    private int R(long j2, long j3, long j4, long j5) {
        long j6 = j5 & j4;
        if (((j3 & j2) | j6) == 0) {
            return h(10, j2, j4);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'i':
                    return n(j6, 1L);
                case 'e':
                    if ((8 & j6) != 0) {
                        return a(12, 67);
                    }
                    break;
            }
            return h(11, 0L, j6);
        } catch (IOException e) {
            g(11, 0L, j6);
            return 12;
        }
    }

    private int n(long j2, long j3) {
        long j4 = j3 & j2;
        if (j4 == 0) {
            return h(11, 0L, j2);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'n':
                    return o(j4, 1L);
                default:
                    return h(12, 0L, j4);
            }
        } catch (IOException e) {
            g(12, 0L, j4);
            return 13;
        }
    }

    private int o(long j2, long j3) {
        long j4 = j3 & j2;
        if (j4 == 0) {
            return h(12, 0L, j2);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'e':
                    return p(j4, 1L);
                default:
                    return h(13, 0L, j4);
            }
        } catch (IOException e) {
            g(13, 0L, j4);
            return 14;
        }
    }

    private int p(long j2, long j3) {
        long j4 = j3 & j2;
        if (j4 == 0) {
            return h(13, 0L, j2);
        }
        try {
            this.m = this.l.c();
            switch (this.m) {
                case 'd':
                    if ((1 & j4) != 0) {
                        return a(15, 64);
                    }
                    break;
            }
            return h(14, 0L, j4);
        } catch (IOException e) {
            g(14, 0L, j4);
            return 15;
        }
    }

    private int d(int i2, int i3, int i4) {
        this.s = i3;
        this.r = i2;
        try {
            this.m = this.l.c();
            return e(i4, i2 + 1);
        } catch (IOException e) {
            return i2 + 1;
        }
    }

    private int e(int i2, int i3) {
        int i4 = 0;
        this.p = 52;
        int i5 = 1;
        this.u[0] = i2;
        int i6 = Integer.MAX_VALUE;
        while (true) {
            int i7 = i5;
            int i8 = i4;
            int i9 = this.q + 1;
            this.q = i9;
            if (i9 == Integer.MAX_VALUE) {
                g();
            }
            if (this.m < '@') {
                long j2 = 1 << this.m;
                do {
                    i7--;
                    switch (this.u[i7]) {
                        case 0:
                            if ((287948901175001088L & j2) != 0) {
                                if (i6 > 79) {
                                    i6 = 79;
                                }
                                h(96, 100);
                            } else if ((4294971904L & j2) != 0) {
                                h(101, 104);
                            } else if ((9216 & j2) != 0) {
                                if (i6 > 74) {
                                    i6 = 74;
                                }
                                h(105, 108);
                            } else if (this.m == ';') {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                h(109, 112);
                            } else if (this.m == '.') {
                                a(30);
                            } else if (this.m == '-') {
                                f(113, 114);
                            } else if (this.m == '\'') {
                                h(115, 117);
                            } else if (this.m == '\"') {
                                h(118, 120);
                            } else if (this.m == ':') {
                                int[] iArr = this.u;
                                int i10 = this.p;
                                this.p = i10 + 1;
                                iArr[i10] = 9;
                            }
                            if (this.m == '0') {
                                int[] iArr2 = this.u;
                                int i11 = this.p;
                                this.p = i11 + 1;
                                iArr2[i11] = 16;
                                continue;
                            } else if (this.m == '\r') {
                                int[] iArr3 = this.u;
                                int i12 = this.p;
                                this.p = i12 + 1;
                                iArr3[i12] = 6;
                                continue;
                            } else {
                                continue;
                            }
                        case 1:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 61) {
                                    i6 = 61;
                                }
                                int[] iArr4 = this.u;
                                int i13 = this.p;
                                this.p = i13 + 1;
                                iArr4[i13] = 1;
                                continue;
                            }
                        case 2:
                            if ((9216 & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 74) {
                                    i6 = 74;
                                }
                                h(105, 108);
                                continue;
                            }
                        case 3:
                            if ((4294971904L & j2) != 0) {
                                g(3, 4);
                                continue;
                            } else {
                                continue;
                            }
                        case 4:
                            if (this.m == ';') {
                                h(121, 123);
                                continue;
                            } else {
                                continue;
                            }
                        case 5:
                            if (((-9217) & j2) != 0) {
                                h(121, 123);
                                continue;
                            } else {
                                continue;
                            }
                        case 6:
                            if (this.m != '\n') {
                                continue;
                            } else {
                                if (i6 > 74) {
                                    i6 = 74;
                                }
                                h(105, 108);
                                continue;
                            }
                        case 7:
                            if (this.m == '\r') {
                                int[] iArr5 = this.u;
                                int i14 = this.p;
                                this.p = i14 + 1;
                                iArr5[i14] = 6;
                                continue;
                            } else {
                                continue;
                            }
                        case 8:
                            if (this.m == ':') {
                                int[] iArr6 = this.u;
                                int i15 = this.p;
                                this.p = i15 + 1;
                                iArr6[i15] = 9;
                                continue;
                            } else {
                                continue;
                            }
                        case 10:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 76) {
                                    i6 = 76;
                                }
                                int[] iArr7 = this.u;
                                int i16 = this.p;
                                this.p = i16 + 1;
                                iArr7[i16] = 10;
                                continue;
                            }
                        case 12:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 77) {
                                    i6 = 77;
                                }
                                int[] iArr8 = this.u;
                                int i17 = this.p;
                                this.p = i17 + 1;
                                iArr8[i17] = 12;
                                continue;
                            }
                        case 14:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 78) {
                                    i6 = 78;
                                }
                                int[] iArr9 = this.u;
                                int i18 = this.p;
                                this.p = i18 + 1;
                                iArr9[i18] = 14;
                                continue;
                            }
                        case 15:
                            if (this.m == '0') {
                                int[] iArr10 = this.u;
                                int i19 = this.p;
                                this.p = i19 + 1;
                                iArr10[i19] = 16;
                                continue;
                            } else {
                                continue;
                            }
                        case 17:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 80) {
                                    i6 = 80;
                                }
                                int[] iArr11 = this.u;
                                int i20 = this.p;
                                this.p = i20 + 1;
                                iArr11[i20] = 17;
                                continue;
                            }
                        case 18:
                            if (this.m == '\"') {
                                h(118, 120);
                                continue;
                            } else {
                                continue;
                            }
                        case 20:
                            h(118, 120);
                            continue;
                        case 21:
                            if (((-17179869185L) & j2) != 0) {
                                h(118, 120);
                                continue;
                            } else {
                                continue;
                            }
                        case 22:
                            if (this.m == '\"' && i6 > 81) {
                                i6 = 81;
                                continue;
                            }
                            break;
                        case 23:
                            if (this.m == '\'') {
                                h(115, 117);
                                continue;
                            } else {
                                continue;
                            }
                        case 25:
                            h(115, 117);
                            continue;
                        case 26:
                            if (((-549755813889L) & j2) != 0) {
                                h(115, 117);
                                continue;
                            } else {
                                continue;
                            }
                        case 27:
                            if (this.m == '\'' && i6 > 81) {
                                i6 = 81;
                                continue;
                            }
                            break;
                        case 28:
                            if (this.m == '-') {
                                f(113, 114);
                                continue;
                            } else {
                                continue;
                            }
                        case 29:
                            if (this.m == '.') {
                                a(30);
                                continue;
                            } else {
                                continue;
                            }
                        case 30:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                g(30, 31);
                                continue;
                            }
                        case 32:
                            if ((43980465111040L & j2) != 0) {
                                a(33);
                                continue;
                            } else {
                                continue;
                            }
                        case 33:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                a(33);
                                continue;
                            }
                        case 34:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                h(124, 127);
                                continue;
                            }
                        case 35:
                            if ((287948901175001088L & j2) != 0) {
                                g(35, 36);
                                continue;
                            } else {
                                continue;
                            }
                        case 36:
                            if (this.m != '.') {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                g(37, 38);
                                continue;
                            }
                        case 37:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                g(37, 38);
                                continue;
                            }
                        case 39:
                            if ((43980465111040L & j2) != 0) {
                                a(40);
                                continue;
                            } else {
                                continue;
                            }
                        case 40:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                a(40);
                                continue;
                            }
                        case 41:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                g(41, 42);
                                continue;
                            }
                        case 43:
                            if ((43980465111040L & j2) != 0) {
                                a(44);
                                continue;
                            } else {
                                continue;
                            }
                        case 44:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 84) {
                                    i6 = 84;
                                }
                                a(44);
                                continue;
                            }
                        case 45:
                            if ((4294971904L & j2) != 0) {
                                h(101, 104);
                                continue;
                            } else {
                                continue;
                            }
                        case 46:
                            if ((4294971904L & j2) != 0) {
                                g(46, 47);
                                continue;
                            } else {
                                continue;
                            }
                        case 47:
                            if (this.m != ';') {
                                continue;
                            } else {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                a(48);
                                continue;
                            }
                        case 48:
                            if (((-9217) & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                a(48);
                                continue;
                            }
                        case 49:
                            if (this.m != ';') {
                                continue;
                            } else {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                h(109, 112);
                                continue;
                            }
                        case 50:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 79) {
                                    i6 = 79;
                                }
                                h(96, 100);
                                continue;
                            }
                        case 51:
                            if ((287948901175001088L & j2) == 0) {
                                continue;
                            } else {
                                if (i6 > 79) {
                                    i6 = 79;
                                }
                                a(51);
                                continue;
                            }
                        case 52:
                            if ((4294971904L & j2) != 0) {
                                g(3, 4);
                            } else if (this.m == ';') {
                                h(121, 123);
                            }
                            if ((4294971904L & j2) != 0) {
                                g(46, 47);
                                continue;
                            } else if (this.m != ';') {
                                continue;
                            } else {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                a(48);
                                continue;
                            }
                    }
                } while (i7 != i8);
            } else if (this.m < 128) {
                long j3 = 1 << (this.m & '?');
                do {
                    i7--;
                    switch (this.u[i7]) {
                        case 0:
                            if ((576460745995190270L & j3) != 0) {
                                if (i6 > 61) {
                                    i6 = 61;
                                }
                                a(1);
                            }
                            if (this.m == 'u') {
                                int[] iArr12 = this.u;
                                int i21 = this.p;
                                this.p = i21 + 1;
                                iArr12[i21] = 14;
                                continue;
                            } else if (this.m == 'v') {
                                int[] iArr13 = this.u;
                                int i22 = this.p;
                                this.p = i22 + 1;
                                iArr13[i22] = 12;
                                continue;
                            } else {
                                continue;
                            }
                        case 1:
                            if ((576460745995190270L & j3) == 0) {
                                continue;
                            } else {
                                if (i6 > 61) {
                                    i6 = 61;
                                }
                                a(1);
                                continue;
                            }
                        case 5:
                            f(121, 123);
                            continue;
                        case 9:
                        case 10:
                            if ((576460745995190270L & j3) == 0) {
                                continue;
                            } else {
                                if (i6 > 76) {
                                    i6 = 76;
                                }
                                a(10);
                                continue;
                            }
                        case 11:
                            if (this.m == 'v') {
                                int[] iArr14 = this.u;
                                int i23 = this.p;
                                this.p = i23 + 1;
                                iArr14[i23] = 12;
                                continue;
                            } else {
                                continue;
                            }
                        case 13:
                            if (this.m == 'u') {
                                int[] iArr15 = this.u;
                                int i24 = this.p;
                                this.p = i24 + 1;
                                iArr15[i24] = 14;
                                continue;
                            } else {
                                continue;
                            }
                        case 16:
                            if ((72057594054705152L & j3) != 0) {
                                a(17);
                                continue;
                            } else {
                                continue;
                            }
                        case 17:
                            if ((541165879422L & j3) == 0) {
                                continue;
                            } else {
                                if (i6 > 80) {
                                    i6 = 80;
                                }
                                a(17);
                                continue;
                            }
                        case 19:
                            if (this.m == '\\') {
                                int[] iArr16 = this.u;
                                int i25 = this.p;
                                this.p = i25 + 1;
                                iArr16[i25] = 20;
                                continue;
                            } else {
                                continue;
                            }
                        case 20:
                            h(118, 120);
                            continue;
                        case 21:
                            if (((-268435457) & j3) != 0) {
                                h(118, 120);
                                continue;
                            } else {
                                continue;
                            }
                        case 24:
                            if (this.m == '\\') {
                                int[] iArr17 = this.u;
                                int i26 = this.p;
                                this.p = i26 + 1;
                                iArr17[i26] = 25;
                                continue;
                            } else {
                                continue;
                            }
                        case 25:
                            h(115, 117);
                            continue;
                        case 26:
                            if (((-268435457) & j3) != 0) {
                                h(115, 117);
                                continue;
                            } else {
                                continue;
                            }
                        case 31:
                            if ((137438953504L & j3) != 0) {
                                f(128, 129);
                                continue;
                            } else {
                                continue;
                            }
                        case 38:
                            if ((137438953504L & j3) != 0) {
                                f(69, 70);
                                continue;
                            } else {
                                continue;
                            }
                        case 42:
                            if ((137438953504L & j3) != 0) {
                                f(94, 95);
                                continue;
                            } else {
                                continue;
                            }
                        case 48:
                            if (i6 > 4) {
                                i6 = 4;
                            }
                            int[] iArr18 = this.u;
                            int i27 = this.p;
                            this.p = i27 + 1;
                            iArr18[i27] = 48;
                            continue;
                    }
                } while (i7 != i8);
            } else {
                int i28 = this.m >> '\b';
                int i29 = i28 >> 6;
                long j4 = 1 << (i28 & 63);
                int i30 = (this.m & 255) >> 6;
                long j5 = 1 << (this.m & '?');
                do {
                    i7--;
                    switch (this.u[i7]) {
                        case 5:
                            if (a(i28, i29, i30, j4, j5)) {
                                f(121, 123);
                                continue;
                            } else {
                                continue;
                            }
                        case 20:
                        case 21:
                            if (a(i28, i29, i30, j4, j5)) {
                                h(118, 120);
                                continue;
                            } else {
                                continue;
                            }
                        case 25:
                        case 26:
                            if (a(i28, i29, i30, j4, j5)) {
                                h(115, 117);
                                continue;
                            } else {
                                continue;
                            }
                        case 48:
                            if (a(i28, i29, i30, j4, j5)) {
                                if (i6 > 4) {
                                    i6 = 4;
                                }
                                int[] iArr19 = this.u;
                                int i31 = this.p;
                                this.p = i31 + 1;
                                iArr19[i31] = 48;
                                continue;
                            } else {
                                continue;
                            }
                    }
                } while (i7 != i8);
            }
            if (i6 != Integer.MAX_VALUE) {
                this.s = i6;
                this.r = i3;
                i6 = Integer.MAX_VALUE;
            }
            i3++;
            i5 = this.p;
            this.p = i8;
            i4 = 52 - i8;
            if (i5 != i4) {
                try {
                    this.m = this.l.c();
                } catch (IOException e) {
                }
            }
            return i3;
        }
    }

    private static final boolean a(int i2, int i3, int i4, long j2, long j3) {
        switch (i2) {
            case 0:
                return (c[i4] & j3) != 0;
            default:
                return (b[i3] & j2) != 0;
        }
    }

    public f(h hVar) {
        this.l = hVar;
    }

    private void g() {
        this.q = -2147483647;
        int i2 = 52;
        while (true) {
            int i3 = i2 - 1;
            if (i2 > 0) {
                this.t[i3] = Integer.MIN_VALUE;
                i2 = i3;
            } else {
                return;
            }
        }
    }

    protected i a() {
        String str = f[this.s];
        if (str == null) {
            str = this.l.h();
        }
        int g2 = this.l.g();
        int f2 = this.l.f();
        int e = this.l.e();
        int d2 = this.l.d();
        i a = i.a(this.s, str);
        a.b = g2;
        a.d = e;
        a.c = f2;
        a.e = d2;
        return a;
    }

    public i b() {
        boolean z;
        i iVar;
        String str = null;
        int i2 = 0;
        i iVar2 = null;
        while (true) {
            try {
                this.m = this.l.b();
                switch (this.n) {
                    case 0:
                        this.s = Integer.MAX_VALUE;
                        this.r = 0;
                        i2 = f();
                        break;
                    case 1:
                        this.s = Integer.MAX_VALUE;
                        this.r = 0;
                        i2 = e();
                        break;
                    case 2:
                        this.s = Integer.MAX_VALUE;
                        this.r = 0;
                        i2 = d();
                        break;
                    case 3:
                        this.s = Integer.MAX_VALUE;
                        this.r = 0;
                        i2 = c();
                        break;
                }
                if (this.s != Integer.MAX_VALUE) {
                    if (this.r + 1 < i2) {
                        this.l.a((i2 - this.r) - 1);
                    }
                    if ((i[this.s >> 6] & (1 << (this.s & 63))) != 0) {
                        i a = a();
                        a.h = iVar2;
                        if (h[this.s] != -1) {
                            this.n = h[this.s];
                            return a;
                        }
                        return a;
                    }
                    if ((k[this.s >> 6] & (1 << (this.s & 63))) != 0) {
                        iVar = a();
                        if (iVar2 != null) {
                            iVar.h = iVar2;
                            iVar2.g = iVar;
                        }
                    } else {
                        iVar = iVar2;
                    }
                    if (h[this.s] != -1) {
                        this.n = h[this.s];
                        iVar2 = iVar;
                    } else {
                        iVar2 = iVar;
                    }
                } else {
                    int e = this.l.e();
                    int d2 = this.l.d();
                    try {
                        this.l.c();
                        this.l.a(1);
                        z = false;
                    } catch (IOException e2) {
                        String h2 = i2 <= 1 ? "" : this.l.h();
                        if (this.m == '\n' || this.m == '\r') {
                            e++;
                            z = true;
                            str = h2;
                            d2 = 0;
                        } else {
                            d2++;
                            z = true;
                            str = h2;
                        }
                    }
                    if (!z) {
                        this.l.a(1);
                        str = i2 <= 1 ? "" : this.l.h();
                    }
                    throw new j(z, this.n, e, d2, str, this.m, 0);
                }
            } catch (IOException e3) {
                this.s = 0;
                i a2 = a();
                a2.h = iVar2;
                return a2;
            }
        }
    }

    private void a(int i2) {
        if (this.t[i2] != this.q) {
            int[] iArr = this.u;
            int i3 = this.p;
            this.p = i3 + 1;
            iArr[i3] = i2;
            this.t[i2] = this.q;
        }
    }

    private void f(int i2, int i3) {
        while (true) {
            int[] iArr = this.u;
            int i4 = this.p;
            this.p = i4 + 1;
            iArr[i4] = d[i2];
            int i5 = i2 + 1;
            if (i2 == i3) {
                return;
            }
            i2 = i5;
        }
    }

    private void g(int i2, int i3) {
        a(i2);
        a(i3);
    }

    private void h(int i2, int i3) {
        while (true) {
            a(d[i2]);
            int i4 = i2 + 1;
            if (i2 == i3) {
                return;
            }
            i2 = i4;
        }
    }
}
