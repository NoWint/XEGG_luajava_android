package android.ext;

import catch_.me_.if_.you_.can_.R;
import java.util.Locale;

/* compiled from: src */
/* loaded from: classes.dex */
public class ai {
    static final String[] a = {"EQ", "NE", "CS", "CC", "MI", "PL", "VS", "VC", "HI", "LS", "GE", "LT", "GT", "LE", "AL", "<UND>", ""};
    static final String[] b = {"R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "SP", "LR", "PC"};
    static final String[] c = {"0.0", "1.0", "2.0", "3.0", "4.0", "5.0", "0.5", "10.0"};
    static final String[] d = {"LSL", "LSR", "ASR", "ROR"};
    static final ao f = new ao();
    am e;
    private int g;
    private int h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(StringBuilder sb, long j, long j2) {
        if (j == 0) {
            if (j2 < 0) {
                sb.append('-');
                j2 = -j2;
            } else {
                sb.append('+');
            }
        }
        sb.append("0x");
        long j3 = j + j2;
        if (j3 != 0) {
            ItemContextMenu.a(j3);
        }
        ts.a(sb, 8, j3);
        sb.append("; ").append(j2 <= 0 ? '-' : '+').append("0x").append(Long.toHexString(j2 > 0 ? j2 : -j2).toUpperCase(Locale.US)).append(' ').append(j2 > 0 ? (char) 8595 : (char) 8593);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final char a(String str, int i, int i2) {
        if (i2 < i) {
            return str.charAt(i2);
        }
        return (char) 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void a(StringBuilder sb, char c2) {
        if (c2 != 0) {
            sb.append(c2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(String str, int i, int i2, int i3, ai aiVar) {
        char a2;
        int i4;
        int i5 = 0;
        int i6 = 0;
        do {
            a2 = a(str, i, i2);
            int i7 = 0;
            int i8 = i2;
            while (a2 >= '0' && a2 <= '9') {
                i7 = ((i7 * 10) + a2) - 48;
                i8++;
                a2 = a(str, i, i8);
            }
            if (a2 == '-') {
                i8++;
                a2 = a(str, i, i8);
                i4 = 0;
                while (a2 >= '0' && a2 <= '9') {
                    i4 = ((i4 * 10) + a2) - 48;
                    i8++;
                    a2 = a(str, i, i8);
                }
            } else {
                i4 = i7;
            }
            int i9 = i4 - i7;
            if (i9 < 0) {
                throw new RuntimeException("140 Bits is negative: " + i9 + "; " + i7 + "; " + i4 + "; '" + str + "'; " + i8 + "; " + i + "; 0x" + Integer.toHexString(i3));
            }
            i6 |= ((i3 >> i7) & ((2 << i9) - 1)) << i5;
            i5 += i9 + 1;
            i2 = i8 + 1;
        } while (a2 == ',');
        aiVar.g = i6;
        aiVar.h = i5;
        return i2 - 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(String str, int i, int i2, ai aiVar, int i3) {
        char a2;
        int i4;
        int i5 = 0;
        int i6 = aiVar.g;
        do {
            a2 = a(str, i, i2);
            int i7 = 0;
            int i8 = i2;
            while (a2 >= '0' && a2 <= '9') {
                i7 = ((i7 * 10) + a2) - 48;
                i8++;
                a2 = a(str, i, i8);
            }
            if (a2 == '-') {
                i8++;
                a2 = a(str, i, i8);
                i4 = 0;
                while (a2 >= '0' && a2 <= '9') {
                    i4 = ((i4 * 10) + a2) - 48;
                    i8++;
                    a2 = a(str, i, i8);
                }
            } else {
                i4 = i7;
            }
            int i9 = i4 - i7;
            if (i9 < 0) {
                throw new RuntimeException("141 Bits is negative: " + i9 + "; " + i7 + "; " + i4 + "; '" + str + "'; " + i8 + "; " + i + "; 0x" + Integer.toHexString(i3));
            }
            int i10 = (2 << i9) - 1;
            int i11 = ((i3 >> i5) & i10) << i7;
            i6 |= i11;
            if ((((i10 & ((-1) >> i5)) << i7) & i6) != i11) {
                throw f;
            }
            i5 += i9 + 1;
            i2 = i8 + 1;
        } while (a2 == ',');
        aiVar.g = i6;
        aiVar.h = i5;
        return i2 - 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(StringBuilder sb, int i, boolean z) {
        sb.append(b[i & 15]);
        if ((i & 4080) != 0) {
            if ((i & 16) == 0) {
                int i2 = (i & 3968) >> 7;
                int i3 = (i & 96) >> 5;
                if (i2 == 0) {
                    if (i3 == 3) {
                        sb.append(", RRX");
                        return;
                    }
                    i2 = 32;
                }
                sb.append(", ");
                if (z) {
                    sb.append(d[i3]).append(' ');
                }
                sb.append('#').append(i2);
            } else if ((i & 128) == 128) {
                sb.append(" <illegal shifter operand>");
            } else {
                sb.append(", ");
                if (z) {
                    sb.append(d[(i & 96) >> 5]).append(' ');
                }
                sb.append(b[(i & 3840) >> 8]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, am amVar, boolean z) {
        int a2 = amVar.a(b);
        if (a2 == -1) {
            throw f;
        }
        int i2 = a2 | i;
        if (amVar.b(", ")) {
            if (amVar.b("RRX")) {
                return i2 | 96;
            }
            if (z) {
                int a3 = amVar.a(d);
                if (a3 == -1) {
                    throw f;
                }
                i2 |= a3 << 5;
                if (!amVar.a(' ')) {
                    throw f;
                }
            }
            if (amVar.a('#')) {
                int f2 = (int) amVar.f();
                if (f2 < 0 || f2 > 32) {
                    throw f;
                }
                if (f2 == 32) {
                    f2 = 0;
                }
                return i2 | (f2 << 7);
            }
            int i3 = i2 | 16;
            int a4 = amVar.a(b);
            if (a4 == -1) {
                throw f;
            }
            return i3 | (a4 << 8);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(StringBuilder sb, int i) {
        String str;
        switch (i) {
            case 15:
                str = "CPSR";
                break;
            case 32:
                str = "R8_usr";
                break;
            case 33:
                str = "R9_usr";
                break;
            case 34:
                str = "R10_usr";
                break;
            case 35:
                str = "R11_usr";
                break;
            case 36:
                str = "R12_usr";
                break;
            case 37:
                str = "SP_usr";
                break;
            case 38:
                str = "LR_usr";
                break;
            case 40:
                str = "R8_fiq";
                break;
            case 41:
                str = "R9_fiq";
                break;
            case 42:
                str = "R10_fiq";
                break;
            case 43:
                str = "R11_fiq";
                break;
            case 44:
                str = "R12_fiq";
                break;
            case 45:
                str = "SP_fiq";
                break;
            case 46:
                str = "LR_fiq";
                break;
            case 48:
                str = "LR_irq";
                break;
            case 49:
                str = "SP_irq";
                break;
            case 50:
                str = "LR_svc";
                break;
            case 51:
                str = "SP_svc";
                break;
            case 52:
                str = "LR_abt";
                break;
            case 53:
                str = "SP_abt";
                break;
            case 54:
                str = "LR_und";
                break;
            case 55:
                str = "SP_und";
                break;
            case 60:
                str = "LR_mon";
                break;
            case 61:
                str = "SP_mon";
                break;
            case 62:
                str = "ELR_hyp";
                break;
            case 63:
                str = "SP_hyp";
                break;
            case 79:
                str = "SPSR";
                break;
            case 110:
                str = "SPSR_fiq";
                break;
            case 112:
                str = "SPSR_irq";
                break;
            case 114:
                str = "SPSR_svc";
                break;
            case 116:
                str = "SPSR_abt";
                break;
            case 118:
                str = "SPSR_und";
                break;
            case 124:
                str = "SPSR_mon";
                break;
            case 126:
                str = "SPSR_hyp";
                break;
            default:
                sb.append("(UNDEF: ").append(i).append(')');
                return;
        }
        sb.append(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(am amVar) {
        if (amVar.b("CPSR")) {
            return 15;
        }
        if (amVar.b("R8_USR")) {
            return 32;
        }
        if (amVar.b("R9_USR")) {
            return 33;
        }
        if (amVar.b("R10_USR")) {
            return 34;
        }
        if (amVar.b("R11_USR")) {
            return 35;
        }
        if (amVar.b("R12_USR")) {
            return 36;
        }
        if (amVar.b("SP_USR")) {
            return 37;
        }
        if (amVar.b("LR_USR")) {
            return 38;
        }
        if (amVar.b("R8_FIQ")) {
            return 40;
        }
        if (amVar.b("R9_FIQ")) {
            return 41;
        }
        if (amVar.b("R10_FIQ")) {
            return 42;
        }
        if (amVar.b("R11_FIQ")) {
            return 43;
        }
        if (amVar.b("R12_FIQ")) {
            return 44;
        }
        if (amVar.b("SP_FIQ")) {
            return 45;
        }
        if (amVar.b("LR_FIQ")) {
            return 46;
        }
        if (amVar.b("LR_IRQ")) {
            return 48;
        }
        if (amVar.b("SP_IRQ")) {
            return 49;
        }
        if (amVar.b("LR_SVC")) {
            return 50;
        }
        if (amVar.b("SP_SVC")) {
            return 51;
        }
        if (amVar.b("LR_ABT")) {
            return 52;
        }
        if (amVar.b("SP_ABT")) {
            return 53;
        }
        if (amVar.b("LR_UND")) {
            return 54;
        }
        if (amVar.b("SP_UND")) {
            return 55;
        }
        if (amVar.b("LR_MON")) {
            return 60;
        }
        if (amVar.b("SP_MON")) {
            return 61;
        }
        if (amVar.b("ELR_HYP")) {
            return 62;
        }
        if (amVar.b("SP_HYP")) {
            return 63;
        }
        if (amVar.b("SPSR_FIQ")) {
            return 110;
        }
        if (amVar.b("SPSR_IRQ")) {
            return 112;
        }
        if (amVar.b("SPSR_SVC")) {
            return 114;
        }
        if (amVar.b("SPSR_ABT")) {
            return 116;
        }
        if (amVar.b("SPSR_UND")) {
            return 118;
        }
        if (amVar.b("SPSR_MON")) {
            return 124;
        }
        if (amVar.b("SPSR_HYP")) {
            return 126;
        }
        if (amVar.b("SPSR")) {
            return 79;
        }
        if (amVar.b("(UNDEF: ")) {
            int f2 = (int) amVar.f();
            if ((f2 & (-128)) != 0) {
                throw f;
            }
            if (amVar.a(')')) {
                return f2;
            }
            throw f;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(StringBuilder sb, int i) {
        String str;
        int i2 = i & 15;
        switch (i2) {
            case 1:
                str = "oshld";
                break;
            case 2:
                str = "oshst";
                break;
            case 3:
                str = "osh";
                break;
            case 4:
            case 8:
            case 12:
            default:
                sb.append('#').append(i2);
                return;
            case 5:
                str = "nshld";
                break;
            case 6:
                str = "unst";
                break;
            case 7:
                str = "un";
                break;
            case 9:
                str = "ishld";
                break;
            case 10:
                str = "ishst";
                break;
            case 11:
                str = "ish";
                break;
            case 13:
                str = "ld";
                break;
            case 14:
                str = "st";
                break;
            case 15:
                str = "sy";
                break;
        }
        sb.append(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(am amVar) {
        if (amVar.b("OSHLD")) {
            return 1;
        }
        if (amVar.b("OSHST")) {
            return 2;
        }
        if (amVar.b("OSH")) {
            return 3;
        }
        if (amVar.b("NSHLD")) {
            return 5;
        }
        if (amVar.b("UNST")) {
            return 6;
        }
        if (amVar.b("UN")) {
            return 7;
        }
        if (amVar.b("ISHLD")) {
            return 9;
        }
        if (amVar.b("ISHST")) {
            return 10;
        }
        if (amVar.b("ISH")) {
            return 11;
        }
        if (amVar.b("LD")) {
            return 13;
        }
        if (amVar.b("ST")) {
            return 14;
        }
        if (amVar.b("SY")) {
            return 15;
        }
        if (amVar.a('#')) {
            int f2 = (int) amVar.f();
            if ((f2 & (-16)) != 0) {
                throw f;
            }
            return f2;
        }
        return -1;
    }

    public static String a(ai aiVar, long j, long j2) {
        if (aiVar == null) {
            try {
                aiVar = new ai();
            } catch (Throwable th) {
                String replace = th.toString().replace("java.lang.RuntimeException:", "RE:");
                la.a("Failed get OP 2", th);
                return replace;
            }
        }
        return aj.a(aiVar, j, (int) j2);
    }

    public static int a(ai aiVar, long j, String str) {
        if (aiVar == null) {
            aiVar = new ai();
        }
        int a2 = aj.a(aiVar, j, str, -1);
        if (a2 == -1) {
            String trim = a(aiVar, j, aiVar.e.e).trim();
            ak akVar = new ak(String.valueOf(Tools.a(qk.a((int) R.string.asm_failed), "ARM").trim()) + "\n'" + str + "'\n\n" + Tools.a(qk.a((int) R.string.asm_suggestion), "\n'" + trim + "'\n").trim());
            int indexOf = trim.indexOf(59);
            if (indexOf != -1) {
                trim = trim.substring(0, indexOf).trim();
            }
            akVar.a = trim;
            akVar.b = str;
            throw akVar;
        }
        return a2;
    }

    public static String b(ai aiVar, long j, long j2) {
        try {
            if ((j2 & 63488) == 63488 || (j2 & 63488) == 61440 || (j2 & 63488) == 59392) {
                long j3 = ((j2 & 65535) << 16) | ((((-65536) & j2) >> 16) & 65535);
                if (aiVar == null) {
                    aiVar = new ai();
                }
                return aq.a(aiVar, j, (int) j3);
            }
            return ap.a(j, (int) j2);
        } catch (Throwable th) {
            String replace = th.toString().replace("java.lang.RuntimeException:", "RE:");
            la.a("Failed get OP 1", th);
            return replace;
        }
    }

    public static int b(ai aiVar, long j, String str) {
        if (aiVar == null) {
            aiVar = new ai();
        }
        int a2 = ap.a(aiVar, j, str, -1);
        if (a2 == -1) {
            String trim = b(aiVar, j, aiVar.e.e).trim();
            ak akVar = new ak(String.valueOf(Tools.a(qk.a((int) R.string.asm_failed), "Thumb").trim()) + "\n'" + str + "'\n\n" + Tools.a(qk.a((int) R.string.asm_suggestion), "\n'" + trim + "'\n").trim());
            int indexOf = trim.indexOf(59);
            if (indexOf != -1) {
                trim = trim.substring(0, indexOf).trim();
            }
            akVar.a = trim;
            akVar.b = str;
            throw akVar;
        }
        return a2 & 65535;
    }
}
