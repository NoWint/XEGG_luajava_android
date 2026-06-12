package android.ext;

import android.content.DialogInterface;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.SectionIndexer;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ow extends BaseAdapterLC implements ur, Filterable, SectionIndexer {
    private static ai q = null;
    private static int[] r = null;
    private static volatile CharSequence[] u;
    private static volatile int[] v;
    volatile int c;
    private final byte[] e;
    private volatile long f;
    private ByteBuffer g;
    private long h;
    String a = "";
    private Filter d = null;
    short[] b = null;
    private int i = -1;
    private boolean[] j = null;
    private pe k = null;
    private int l = 2;
    private long m = 0;
    private final h n = new h();
    private final CharSequence[] o = new CharSequence[2];
    private long p = 1;
    private int s = 0;
    private int t = 0;
    private pa w = null;

    public ow() {
        this.c = -15999;
        this.c = Tools.s().getInt("memory-editor-format", -15999);
        l();
        this.e = new byte[8200];
        this.g = ByteBuffer.wrap(this.e);
        this.g.order(ByteOrder.LITTLE_ENDIAN);
        this.h = 0L;
        this.f = 0L;
        MainService.instance.u.setText(q());
    }

    public boolean[] a() {
        return this.j;
    }

    public int a(boolean[] zArr, SparseIntArray sparseIntArray) {
        int length = zArr.length - 1;
        int i = 0;
        for (int i2 = 1; i2 < length; i2++) {
            if (zArr[i2]) {
                i |= d.a(a(i2), false, sparseIntArray);
            }
        }
        if ((Config.B & 1024) != 0) {
            int p = p();
            return (Integer.bitCount(p) != 1 || (i & p) == 0) ? i : i & p;
        }
        return i;
    }

    private void l() {
        int i;
        int count = getCount();
        boolean[] zArr = this.j;
        pe peVar = this.k;
        int m = m();
        short[] sArr = this.b;
        if (zArr == null || count != zArr.length || peVar == null || m != peVar.a || sArr != this.b) {
            boolean[] zArr2 = new boolean[count];
            this.j = zArr2;
            if (peVar != null) {
                int i2 = peVar.a;
                short[] sArr2 = peVar.b;
                int i3 = (1 << i2) - 1;
                int i4 = count - 1;
                for (int i5 = 1; i5 < i4; i5++) {
                    int a = a(i5 - 1, sArr, m) << m;
                    if ((a & i3) == 0) {
                        int i6 = a >> i2;
                        int a2 = a(i6, sArr2);
                        if (i6 == a(a2, sArr2, i2) && (i = a2 + 1) >= 0 && i < zArr.length && zArr[i]) {
                            zArr2[i5] = true;
                        }
                    }
                }
            }
            this.k = new pe(m, sArr, null);
        }
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        getFilter().filter(this.a);
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        l();
        super.notifyDataSetChanged();
    }

    private int m() {
        int i = this.l;
        int i2 = this.c;
        long j = 17179869184L | i2;
        if (j != this.m) {
            if ((i2 & 2048) != 0) {
                i = 0;
            } else if ((i2 & 1056) != 0) {
                i = 1;
            } else {
                i = 2;
            }
            this.l = i;
            this.m = j;
        }
        return i;
    }

    public void a(long j, int i) {
        long j2 = (-8192) & j;
        if (j2 != this.h) {
            this.h = j2;
            Arrays.fill(this.j, false);
            notifyDataSetChanged();
        }
        Tools.a(MainService.instance.J, d(j), i);
    }

    private long n() {
        return this.h;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return o() + 2;
    }

    private int o() {
        return this.b == null ? c() : this.b.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return 8192 >> m();
    }

    private int d(int i) {
        return a(i, this.b, m());
    }

    private static int a(int i, short[] sArr, int i2) {
        return (sArr == null || i < 0) ? i : i >= sArr.length ? (i - sArr.length) + (8192 >> i2) : sArr[i];
    }

    private int e(int i) {
        return a(i, this.b);
    }

    private static int a(int i, short[] sArr) {
        if (sArr != null) {
            int binarySearch = Arrays.binarySearch(sArr, (short) i);
            if (binarySearch < 0) {
                int i2 = (-binarySearch) - 2;
                if (i2 < 0) {
                    i2 = 0;
                }
                return i2;
            }
            return binarySearch;
        }
        return i;
    }

    private int c(long j) {
        return (int) (8191 & j);
    }

    public long a(int i) {
        return a(d(i - 1));
    }

    public long a(long j) {
        return (j << m()) + n();
    }

    public int b(long j) {
        return e((int) ((j - n()) >> m())) + 1;
    }

    private int d(long j) {
        int b = b(j);
        this.i = b;
        return b;
    }

    public void d() {
        MainService.instance.i();
        MainService.instance.k.c(n(), 8196);
    }

    public void a(bk bkVar) {
        long c;
        int b;
        long n = n();
        try {
            bkVar.g();
            c = bkVar.c();
            b = bkVar.b();
        } catch (IOException e) {
            e = e;
            la.b("Failed load data to memory editor", e);
            Arrays.fill(this.e, (byte) 0);
            this.f = n;
            MainService.instance.J.post(new ox(this));
        } catch (RuntimeException e2) {
            e = e2;
            la.b("Failed load data to memory editor", e);
            Arrays.fill(this.e, (byte) 0);
            this.f = n;
            MainService.instance.J.post(new ox(this));
        }
        if (c != n) {
            throw new RuntimeException("Offset mismatch: " + c + " (" + Long.toHexString(c).toUpperCase(Locale.US) + ") != " + n + " (" + Long.toHexString(n).toUpperCase(Locale.US) + ")");
        }
        if (b < 8192) {
            throw new RuntimeException("Size mismatch: " + b + " (" + Integer.toHexString(b).toUpperCase(Locale.US) + ") != 8192 (" + Integer.toHexString(8192).toUpperCase(Locale.US) + ")");
        }
        bkVar.a(this.e, 0, b);
        this.f = n;
        MainService.instance.J.post(new ox(this));
    }

    public void e() {
        d();
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        uq uqVar = (uq) compoundButton.getTag();
        if (uqVar != null) {
            try {
                this.j[uqVar.o] = z;
                MainService.instance.E();
            } catch (IndexOutOfBoundsException e) {
                la.c("ArrayAdapter onCheckedChanged failed", e);
            }
            uqVar.a(z, this.i);
        }
    }

    private static void a(TextView textView, CharSequence charSequence) {
        if (charSequence == null) {
            textView.setVisibility(8);
            return;
        }
        textView.setVisibility(0);
        textView.setText(charSequence);
    }

    private int a(boolean z, g gVar, long j, long j2, int i, TextView textView, int i2, int i3, int i4, int i5) {
        String str;
        if (((i5 - 1) & j) == 0 && (this.c & (1 << i2)) != 0) {
            if (z) {
                String a = d.a(j, j2, i3);
                h hVar = this.n;
                gVar.a(j, i3, hVar);
                if (hVar.b) {
                    a = String.valueOf(a) + " (" + d.b(j, hVar.a, i3) + ')';
                }
                str = String.valueOf(a) + ((Object) d.g(i3)) + ';';
            } else {
                str = "?";
            }
            a(textView, str);
            return i == 0 ? i4 : i;
        }
        a(textView, (CharSequence) null);
        return i;
    }

    private int a(long j, long j2, int i, StringBuilder sb, int i2, int i3, int i4, int i5) {
        if (((i5 - 1) & j) == 0 && (this.c & (1 << i2)) != 0) {
            sb.append(d.a(j, j2, i3));
            sb.append("\n");
            return i == 0 ? i4 : i;
        }
        return i;
    }

    private long[] a(boolean z) {
        long j;
        long n = n();
        if (!z) {
            j = n == 0 ? n : n - 1;
        } else {
            n += 8192;
            j = n == 0 ? n - 1 : n;
        }
        return new long[]{j, n};
    }

    private CharSequence e(long j) {
        CharSequence[] charSequenceArr = this.o;
        long n = n();
        if (this.p != n) {
            this.p = n;
            for (int i = 0; i < charSequenceArr.length; i++) {
                charSequenceArr[i] = RegionList.a((i * 4096) + n);
            }
        }
        for (int i2 = 0; i2 < charSequenceArr.length; i2++) {
            if (Tools.b(j, (((i2 + 1) * 4096) + n) - 1)) {
                return charSequenceArr[i2];
            }
        }
        return "??";
    }

    public void f() {
        boolean z;
        boolean z2 = false;
        long n = n();
        this.p = n;
        int i = 0;
        while (true) {
            z = z2;
            if (i >= this.o.length) {
                break;
            }
            CharSequence a = RegionList.a((i * 4096) + n);
            if (a.equals(this.o[i])) {
                z2 = z;
            } else {
                this.o[i] = a;
                z2 = true;
            }
            i++;
        }
        if (z) {
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        return this.f == n();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(ai aiVar, int[] iArr, int i) {
        long j;
        if (g()) {
            long a = a(i);
            long j2 = this.g.getLong(c(a));
            StringBuilder sb = new StringBuilder();
            int a2 = a(a, j2, a(a, j2, a(a, j2, a(a, j2, a(a, j2, a(a, j2, a(a, j2, 0, sb, 9, 64, 8, 4), sb, 12, 32, 8, 4), sb, 8, 16, 4, 4), sb, 7, 4, 4, 4), sb, 13, 8, 4, 4), sb, 10, 2, 2, 2), sb, 11, 1, 1, 1);
            if (a2 == 0) {
                a2 = 1 << m();
            }
            boolean z = false;
            if ((this.c & 1) != 0) {
                if (a2 != 8) {
                    j2 &= (1 << (a2 * 8)) - 1;
                }
                sb.append(ts.a(a2 * 2, j2));
                sb.append("\n");
                z = a2 == 1;
                j = j2;
            } else {
                j = j2;
            }
            if (!z && (this.c & 2) != 0) {
                long reverseBytes = Long.reverseBytes(j) >> (64 - (a2 * 8));
                if (a2 != 8) {
                    reverseBytes &= (1 << (a2 * 8)) - 1;
                }
                sb.append(ts.a(a2 * 2, reverseBytes));
                sb.append("\n");
            }
            if ((this.c & 4) != 0) {
                sb.append(b(j, a2));
                sb.append("\n");
            }
            if ((this.c & 8) != 0) {
                sb.append(c(j, a2));
                sb.append("\n");
            }
            if ((this.c & 16) != 0) {
                sb.append(ai.a(aiVar, a, j));
                sb.append("\n");
            }
            if ((this.c & 32) != 0) {
                sb.append(ai.b(aiVar, a, j));
                sb.append("\n");
            }
            if ((this.c & 64) != 0) {
                ag.a(iArr, a, (int) j, sb);
                sb.append("\n");
            }
            return sb.toString();
        }
        return "";
    }

    private void a(us usVar, int i) {
        boolean z;
        usVar.c.getLayoutParams().height = (Config.q & (1 << (Tools.t() + 4))) != 0 ? -2 : Tools.b();
        if (i == 0 || i == getCount() - 1) {
            usVar.c.setVisibility(4);
            usVar.d.setVisibility(8);
            usVar.e.setVisibility(8);
            usVar.f.setVisibility(8);
            usVar.g.setVisibility(0);
            usVar.h.setVisibility(8);
            usVar.i.setVisibility(8);
            usVar.j.setVisibility(8);
            usVar.k.setVisibility(8);
            usVar.a.setVisibility(8);
            usVar.b.setVisibility(8);
            usVar.p.setVisibility(8);
            usVar.q.setVisibility(8);
            usVar.r.setVisibility(8);
            usVar.s.setVisibility(8);
            usVar.t.setVisibility(8);
            usVar.l.setVisibility(8);
            usVar.a(false, -2);
            usVar.g.setText(String.valueOf(qk.a((int) R.string.goto_address)) + ' ' + d.b(a(i != 0)[0], 32));
            return;
        }
        usVar.c.setVisibility(0);
        usVar.d.setVisibility(0);
        usVar.l.setVisibility(0);
        usVar.o = i;
        long a = a(i);
        usVar.l.setText(e(a));
        usVar.d.setText(d.b(a, 32));
        try {
            z = this.j[i];
        } catch (IndexOutOfBoundsException e) {
            la.c("ArrayAdapter getView failed", e);
            z = false;
        }
        usVar.c.setChecked(z);
        usVar.a(z, this.i);
        long j = this.g.getLong(c(a));
        boolean g = g();
        g gVar = MainService.instance.ao;
        int a2 = a(g, gVar, a, j, a(g, gVar, a, j, a(g, gVar, a, j, a(g, gVar, a, j, a(g, gVar, a, j, a(g, gVar, a, j, a(g, gVar, a, j, 0, usVar.p, 9, 64, 8, 4), usVar.s, 12, 32, 8, 4), usVar.b, 8, 16, 4, 4), usVar.a, 7, 4, 4, 4), usVar.t, 13, 8, 4, 4), usVar.q, 10, 2, 2, 2), usVar.r, 11, 1, 1, 1);
        if (a2 == 0) {
            a2 = 1 << m();
        }
        a(usVar, a, j, this.c, g, a2);
    }

    private static int a(TextView textView, CharSequence charSequence, int i, int i2) {
        a(textView, charSequence);
        return (charSequence == null || i >= i2) ? i : i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(uq uqVar, long j, long j2, int i, boolean z, int i2) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        int[] a;
        ai aiVar;
        ai aiVar2;
        TextView textView = uqVar.j;
        if ((1 & j) != 0 || (i & 32) == 0) {
            str = null;
        } else {
            if (q != null) {
                aiVar2 = q;
            } else {
                aiVar2 = new ai();
                q = aiVar2;
            }
            str = String.valueOf(ai.b(aiVar2, j, j2)) + ';';
        }
        int a2 = a(textView, str, i2, 2);
        TextView textView2 = uqVar.i;
        if ((3 & j) != 0 || (i & 16) == 0) {
            str2 = null;
        } else {
            if (q != null) {
                aiVar = q;
            } else {
                aiVar = new ai();
                q = aiVar;
            }
            str2 = String.valueOf(ai.a(aiVar, j, j2)) + ';';
        }
        int a3 = a(textView2, str2, a2, 4);
        TextView textView3 = uqVar.k;
        if ((3 & j) != 0 || (i & 64) == 0) {
            str3 = null;
        } else {
            if (r != null) {
                a = r;
            } else {
                a = ag.a();
                r = a;
            }
            str3 = ag.a(a, j, (int) j2, new StringBuilder()).append(';').toString();
        }
        int a4 = a(textView3, str3, a3, 4);
        boolean z2 = false;
        if ((i & 1) != 0) {
            qs qsVar = null;
            if (z) {
                if (a4 != 8) {
                    j2 &= (1 << (a4 * 8)) - 1;
                }
                str7 = String.valueOf(ts.a(a4 * 2, j2)) + "h;";
                qh qhVar = MainService.instance.ap;
                qsVar = (a4 == 4 || (qhVar != null && qhVar.n && a4 == 8)) ? RegionList.b(j2) : null;
            } else {
                str7 = "?";
            }
            a(uqVar.e, str7);
            uqVar.e.setTextColor(qs.a(qsVar));
            z2 = a4 == 1;
        } else {
            a(uqVar.e, (CharSequence) null);
        }
        if (!z2 && (i & 2) != 0) {
            if (z) {
                long reverseBytes = Long.reverseBytes(j2) >> (64 - (a4 * 8));
                if (a4 != 8) {
                    reverseBytes &= (1 << (a4 * 8)) - 1;
                }
                str6 = String.valueOf(ts.a(a4 * 2, reverseBytes)) + "r;";
            } else {
                str6 = "?";
            }
            a(uqVar.f, str6);
        } else {
            a(uqVar.f, (CharSequence) null);
        }
        TextView textView4 = uqVar.g;
        if ((i & 4) == 0) {
            str4 = null;
        } else {
            str4 = z ? String.valueOf('\'') + b(j2, a4) + "';" : "?";
        }
        a(textView4, str4);
        TextView textView5 = uqVar.h;
        if ((i & 8) == 0) {
            str5 = null;
        } else {
            str5 = z ? String.valueOf('\"') + c(j2, a4) + "\";" : "?";
        }
        a(textView5, str5);
    }

    private View a(ViewGroup viewGroup) {
        View a = android.fix.i.a(R.layout.service_memory_item, viewGroup, false);
        us usVar = new us(a, this);
        usVar.a = (TextView) a.findViewById(R.id.value_dword);
        usVar.b = (TextView) a.findViewById(R.id.value_float);
        usVar.p = (TextView) a.findViewById(R.id.value_double);
        usVar.q = (TextView) a.findViewById(R.id.value_word);
        usVar.r = (TextView) a.findViewById(R.id.value_byte);
        usVar.s = (TextView) a.findViewById(R.id.value_qword);
        usVar.t = (TextView) a.findViewById(R.id.value_xor);
        return a;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null || !(view.getTag() instanceof us)) {
            view = a(viewGroup);
        }
        us usVar = (us) view.getTag();
        if (usVar.a()) {
            view = a(viewGroup);
            usVar = (us) view.getTag();
        }
        a(usVar, i);
        return view;
    }

    public static String b(long j, int i) {
        byte[] bArr = new byte[8];
        bArr[0] = (byte) ((255 & j) >> 0);
        bArr[1] = (byte) ((65280 & j) >> 8);
        bArr[2] = (byte) ((16711680 & j) >> 16);
        bArr[3] = (byte) ((4278190080L & j) >> 24);
        bArr[4] = (byte) ((1095216660480L & j) >> 32);
        bArr[5] = (byte) ((280375465082880L & j) >> 40);
        bArr[6] = (byte) ((71776119061217280L & j) >> 48);
        bArr[7] = (byte) (((-72057594037927936L) & j) >> 56);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            if (bArr[i2] < 32) {
                bArr[i2] = 46;
            }
        }
        return new String(bArr).substring(0, i);
    }

    public static String c(long j, int i) {
        byte[] a = ps.a(j);
        byte b = a[8];
        if (b > i) {
            b = i;
        }
        if ((b & 1) == 0) {
            b++;
        }
        return new String(a, 0, b + 1, ps.a(true));
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        int a;
        if (i == 0 || i == getCount() - 1) {
            long[] a2 = a(i != 0);
            return new iq(a2[0], a2[1]);
        }
        long a3 = a(i);
        int a4 = d.a(a3, false);
        int p = p();
        if ((a4 & p) != 0) {
            a = a4 & p;
        } else {
            a = d.a(a3, true);
        }
        return new d(a3, this.g.getLong(c(a3)), a);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return a(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i) {
        if (i != this.c) {
            int m = m();
            tp a = Tools.a(MainService.instance.J);
            long a2 = a(a.a);
            long a3 = this.i < 0 ? -1L : a(this.i);
            this.c = i;
            new qw().a("memory-editor-format", this.c, -15999).commit();
            notifyDataSetChanged();
            if (m != m()) {
                a.a = b(a2);
                Tools.a(MainService.instance.J, a);
                if (this.i >= 0) {
                    this.i = b(a3);
                }
            }
            MainService.instance.u.setText(q());
        }
    }

    private int p() {
        int i;
        int i2 = 0;
        int i3 = this.c;
        if (i3 != this.t) {
            int[] iArr = {0, 0, 0, 0, 4, 2, 4, 4, 16, 64, 2, 1, 32, 8};
            int i4 = 0;
            while (true) {
                i = i2;
                if (i4 >= iArr.length) {
                    break;
                }
                i2 = ((1 << i4) & i3) != 0 ? iArr[i4] | i : i;
                i4++;
            }
            this.t = i3;
            this.s = i;
        }
        return this.s;
    }

    private CharSequence q() {
        return c(this.c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CharSequence c(int i) {
        int i2 = 0;
        CharSequence[] r2 = r();
        CharSequence[] charSequenceArr = new CharSequence[r2.length * 2];
        int i3 = 0;
        while (true) {
            int i4 = i2;
            if (i3 < r2.length) {
                if (((1 << i3) & i) != 0) {
                    if (i4 > 0) {
                        charSequenceArr[i4] = ",";
                        i4++;
                    }
                    i2 = i4 + 1;
                    charSequenceArr[i4] = r2[i3];
                } else {
                    i2 = i4;
                }
                i3++;
            } else {
                return Tools.a((CharSequence[]) Arrays.copyOf(charSequenceArr, i4));
            }
        }
    }

    private static CharSequence[] r() {
        if (u == null) {
            CharSequence[] charSequenceArr = new CharSequence[14];
            charSequenceArr[0] = qk.a((int) R.string.hex);
            charSequenceArr[1] = qk.a((int) R.string.rhex);
            charSequenceArr[2] = "S";
            charSequenceArr[3] = "J";
            charSequenceArr[4] = "A";
            charSequenceArr[5] = "T";
            charSequenceArr[6] = "A8";
            charSequenceArr[7] = qk.a((int) R.string.type_dword_short);
            charSequenceArr[8] = qk.a((int) R.string.type_float_short);
            charSequenceArr[9] = qk.a((int) R.string.type_double_short);
            charSequenceArr[10] = qk.a((int) R.string.type_word_short);
            charSequenceArr[11] = qk.a((int) R.string.type_byte_short);
            charSequenceArr[12] = qk.a((int) R.string.type_qword_short);
            charSequenceArr[13] = qk.a((int) R.string.type_xor_short);
            int[] h = h();
            for (int i = 0; i < charSequenceArr.length; i++) {
                charSequenceArr[i] = Tools.a(charSequenceArr[i], h[i]);
            }
            u = charSequenceArr;
            return charSequenceArr;
        }
        return u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] h() {
        if (v == null) {
            int e = Tools.e((int) R.color.region_code);
            int[] iArr = {-1, -1, -1, -1, e, Tools.e((int) R.color.region_system_code), e, d.k(4), d.k(16), d.k(64), d.k(2), d.k(1), d.k(32), d.k(8)};
            v = iArr;
            return iArr;
        }
        return v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CharSequence[] i() {
        return new CharSequence[]{qk.a((int) R.string.format_hex), qk.a((int) R.string.format_rhex), qk.a((int) R.string.format_string), "UTF-16LE", Tools.a(qk.a((int) R.string.format_asm_opcodes), "ARM (x32)"), Tools.a(qk.a((int) R.string.format_asm_opcodes), "Thumb"), Tools.a(qk.a((int) R.string.format_asm_opcodes), "ARM (x64)"), qk.a((int) R.string.type_dword), qk.a((int) R.string.type_float), qk.a((int) R.string.type_double), qk.a((int) R.string.type_word), qk.a((int) R.string.type_byte), qk.a((int) R.string.type_qword), qk.a((int) R.string.type_xor)};
    }

    public void j() {
        int i;
        boolean z = MainService.instance.r() == 2;
        CharSequence[] i2 = i();
        int i3 = this.c;
        if (z) {
            i = SavedListAdapter.a;
            i2 = (CharSequence[]) Arrays.copyOf(i2, 7);
        } else {
            i = i3;
        }
        boolean[] zArr = new boolean[i2.length];
        CharSequence[] r2 = r();
        int[] h = h();
        for (int i4 = 0; i4 < i2.length; i4++) {
            i2[i4] = Tools.a((CharSequence) (((Object) r2[i4]) + ": " + ((Object) i2[i4])), h[i4]);
            zArr[i4] = ((1 << i4) & i) != 0;
        }
        oy oyVar = new oy(this, z, zArr);
        i.a(i.a(Tools.o()).setCustomTitle(Tools.d((int) R.string.value_format)).setMultiChoiceItems(i2, zArr, new oz(this, zArr)).setPositiveButton(qk.a((int) R.string.yes), oyVar).setNeutralButton(qk.a((int) R.string.reset_button), oyVar).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null));
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        Object[] objArr = new Object[32];
        for (int i = 0; i < 32; i++) {
            objArr[i] = d.b(this.h + (i * 256), 4);
        }
        return objArr;
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i) {
        return b((256 * i) + this.h);
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i) {
        int a = (int) ((a(i) - n()) / 256);
        if (a < 0) {
            a = 0;
        }
        if (a >= 32) {
            return 31;
        }
        return a;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        Filter filter = this.d;
        if (filter == null) {
            pd pdVar = new pd(this, null);
            this.d = pdVar;
            return pdVar;
        }
        return filter;
    }

    public pj k() {
        pa paVar = this.w;
        if (paVar == null) {
            pa paVar2 = new pa(this);
            this.w = paVar2;
            return paVar2;
        }
        return paVar;
    }
}
