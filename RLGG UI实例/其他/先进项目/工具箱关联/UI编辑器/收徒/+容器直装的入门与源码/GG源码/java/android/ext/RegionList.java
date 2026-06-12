package android.ext;

import android.content.Context;
import android.fix.ImageButtonView;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import catch_.me_.if_.you_.can_.R;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: src */
/* loaded from: classes.dex */
public class RegionList extends ImageButtonView implements View.OnClickListener {
    static CharSequence[] a;
    static int[] b;
    private static volatile List c = new ArrayList();
    private static volatile qs d = null;
    private static volatile SparseIntArray e = new SparseIntArray();
    private static int[] f;

    private static void a() {
        Config.a((int) R.id.config_ranges).c();
    }

    public static void a(int[] iArr, CharSequence[] charSequenceArr, int[] iArr2) {
        f = iArr;
        a = charSequenceArr;
        b = iArr2;
    }

    private static int b(int i) {
        int length = f.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            if ((f[i3] & i) == i) {
                i2 = i3;
            }
        }
        return i2;
    }

    public static CharSequence a(long j) {
        qs b2 = b(j);
        return b2 == null ? "?" : b2.b();
    }

    public static qs b(long j) {
        qs qsVar = d;
        if (qsVar == null || !Tools.b(qsVar.b, j) || !Tools.a(j, qsVar.c)) {
            List list = c;
            int i = 0;
            int size = list.size() - 1;
            while (i <= size) {
                int i2 = (i + size) >>> 1;
                qs qsVar2 = (qs) list.get(i2);
                if (Tools.b(qsVar2.c, j)) {
                    i = i2 + 1;
                } else if (Tools.a(j, qsVar2.b)) {
                    size = i2 - 1;
                } else {
                    d = qsVar2;
                    return qsVar2;
                }
            }
            return null;
        }
        return qsVar;
    }

    public static qs a(String str, String str2, long j) {
        File file;
        String str3;
        String trim = str.trim();
        String trim2 = str2.trim();
        if (trim2.length() > 0 && j >= 0) {
            List list = c;
            qs[] qsVarArr = new qs[6];
            int[] iArr = new int[qsVarArr.length];
            String str4 = String.valueOf('/') + file.getName();
            if (new File(trim2).getParentFile() == null) {
                str3 = null;
            } else {
                str3 = String.valueOf('/') + file.getParentFile().getName() + str4;
            }
            int a2 = a(trim);
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                qs qsVar = (qs) it.next();
                if (qsVar != null) {
                    String d2 = qsVar.d();
                    if (d2.length() != 0 && qsVar.c - qsVar.b > j) {
                        int i = (qsVar.a ^ a2) & 3840;
                        if (i != 0) {
                            i = Integer.bitCount(i);
                        }
                        if (d2.equals(trim2)) {
                            if (i == 0) {
                                qsVarArr[0] = qsVar;
                                break;
                            } else if (qsVarArr[1] == null || iArr[1] > i) {
                                qsVarArr[1] = qsVar;
                                iArr[1] = i;
                            }
                        }
                        if (str3 != null && d2.endsWith(str3)) {
                            if (i == 0) {
                                qsVarArr[2] = qsVar;
                            } else if (qsVarArr[3] == null || iArr[3] > i) {
                                qsVarArr[3] = qsVar;
                                iArr[3] = i;
                            }
                        }
                        if (d2.endsWith(str4)) {
                            if (i == 0) {
                                qsVarArr[4] = qsVar;
                            } else if (qsVarArr[5] == null || iArr[5] > i) {
                                qsVarArr[5] = qsVar;
                                iArr[5] = i;
                            }
                        }
                    }
                }
            }
            for (qs qsVar2 : qsVarArr) {
                if (qsVar2 != null) {
                    return qsVar2;
                }
            }
        }
        return null;
    }

    public static int a(String str) {
        if (str.length() != 4) {
            return 0;
        }
        int i = str.charAt(0) == 'r' ? 256 : 0;
        if (str.charAt(1) == 'w') {
            i |= 512;
        }
        if (str.charAt(2) == 'x') {
            i |= 1024;
        }
        return str.charAt(3) == 's' ? i | 2048 : i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0055, code lost:
        android.ext.la.c("Bad name length: " + r11, new java.lang.RuntimeException());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(android.ext.bk r14) {
        /*
            r14.g()
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            android.util.SparseIntArray r9 = new android.util.SparseIntArray
            r9.<init>()
            java.util.List r0 = android.ext.RegionList.c
            if (r0 == 0) goto L18
            int r0 = r0.size()
            r8.ensureCapacity(r0)
        L18:
            a()
            java.lang.String r0 = ""
        L1d:
            int r6 = r14.b()     // Catch: java.io.IOException -> L6d
            if (r6 != 0) goto L32
        L23:
            android.ext.RegionList.c = r8
            android.ext.RegionList.e = r9
            r0 = 0
            android.ext.RegionList.d = r0
            android.ext.MainService r0 = android.ext.MainService.instance
            android.ext.ow r0 = r0.K
            r0.f()
            return
        L32:
            int r10 = b(r6)     // Catch: java.io.IOException -> L6d
            long r2 = r14.d()     // Catch: java.io.IOException -> L6d
            long r4 = r14.d()     // Catch: java.io.IOException -> L6d
            int r1 = r14.b()     // Catch: java.io.IOException -> L6d
            int r1 = r1 << 8
            r1 = r1 | r10
            r6 = r6 & 2064(0x810, float:2.892E-42)
            if (r6 != 0) goto Lc5
            r0 = 0
            r7 = r0
        L4b:
            int r11 = r14.b()     // Catch: java.io.IOException -> L6d
            if (r11 < 0) goto L55
            r0 = 1024(0x400, float:1.435E-42)
            if (r11 <= r0) goto L74
        L55:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L6d
            java.lang.String r1 = "Bad name length: "
            r0.<init>(r1)     // Catch: java.io.IOException -> L6d
            java.lang.StringBuilder r0 = r0.append(r11)     // Catch: java.io.IOException -> L6d
            java.lang.String r0 = r0.toString()     // Catch: java.io.IOException -> L6d
            java.lang.RuntimeException r1 = new java.lang.RuntimeException     // Catch: java.io.IOException -> L6d
            r1.<init>()     // Catch: java.io.IOException -> L6d
            android.ext.la.c(r0, r1)     // Catch: java.io.IOException -> L6d
            goto L23
        L6d:
            r0 = move-exception
            java.lang.String r1 = "???"
            android.ext.la.c(r1, r0)
            goto L23
        L74:
            android.ext.qs r0 = b(r2)     // Catch: java.io.IOException -> L6d
            if (r0 != 0) goto Lc2
            r6 = 0
        L7b:
            java.lang.String r6 = r14.a(r11, r6)     // Catch: java.io.IOException -> L6d
            java.lang.String r6 = r6.trim()     // Catch: java.io.IOException -> L6d
            java.lang.String r6 = r6.intern()     // Catch: java.io.IOException -> L6d
            if (r0 == 0) goto L99
            int r11 = r0.a     // Catch: java.io.IOException -> L6d
            if (r11 != r1) goto L99
            long r12 = r0.b     // Catch: java.io.IOException -> L6d
            int r11 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r11 != 0) goto L99
            long r12 = r0.c     // Catch: java.io.IOException -> L6d
            int r11 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r11 == 0) goto L9e
        L99:
            android.ext.qs r0 = new android.ext.qs     // Catch: java.io.IOException -> L6d
            r0.<init>(r1, r2, r4)     // Catch: java.io.IOException -> L6d
        L9e:
            r0.d = r6     // Catch: java.io.IOException -> L6d
            r0.e = r7     // Catch: java.io.IOException -> L6d
            r8.add(r0)     // Catch: java.io.IOException -> L6d
            long r2 = r0.c     // Catch: java.io.IOException -> L6d
            long r0 = r0.b     // Catch: java.io.IOException -> L6d
            long r0 = r2 - r0
            r2 = 4096(0x1000, double:2.0237E-320)
            long r0 = r0 / r2
            r2 = 0
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 >= 0) goto Lb6
            r0 = 0
        Lb6:
            int r2 = r9.get(r10)     // Catch: java.io.IOException -> L6d
            int r0 = (int) r0     // Catch: java.io.IOException -> L6d
            int r0 = r0 + r2
            r9.put(r10, r0)     // Catch: java.io.IOException -> L6d
            r0 = r6
            goto L1d
        Lc2:
            java.lang.String r6 = r0.d     // Catch: java.io.IOException -> L6d
            goto L7b
        Lc5:
            r7 = r0
            goto L4b
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.RegionList.a(android.ext.bk):void");
    }

    public static long a(int i) {
        return 4096 * e.get(i);
    }

    public RegionList(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        b();
    }

    public RegionList(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        b();
    }

    public RegionList(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    public RegionList(Context context) {
        super(context);
        b();
    }

    private void b() {
        setOnClickListener(this);
        if (!isInEditMode()) {
            setImageResource(R.drawable.ic_arrow_down_drop_circle_white_24dp);
            Config.a(this);
        }
    }

    public static List getList() {
        return c;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a(view, this instanceof RegionListFiltered ? Config.i : 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x004f A[EDGE_INSN: B:55:0x004f->B:19:0x004f ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(android.view.View r14, int r15) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.RegionList.a(android.view.View, int):void");
    }
}
