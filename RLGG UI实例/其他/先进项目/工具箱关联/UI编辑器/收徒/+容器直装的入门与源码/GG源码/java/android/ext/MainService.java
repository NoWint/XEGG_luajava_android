package android.ext;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentCallbacks;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.fix.WrapLayout;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.util.SparseBooleanArray;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TabHost;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* compiled from: src */
/* loaded from: classes.dex */
public class MainService extends rh implements View.OnClickListener, View.OnLongClickListener {
    private static int aE;
    private static volatile boolean aG;
    private static volatile ComponentCallbacks aK;
    private static volatile boolean aL;
    private static volatile boolean aM;
    private static long aQ;
    static int ai;
    public static volatile Context context;
    TextView A;
    final WrapLayout[] B;
    View C;
    ListView D;
    ic E;
    pj F;
    View G;
    ImageView H;
    ListView I;
    ListView J;
    ow K;
    pf L;
    ImageButton M;
    boolean N;
    boolean O;
    ik P;
    ra Q;
    ov R;
    ListView S;
    View T;
    View U;
    View V;
    View W;
    View X;
    TextView Y;
    ShowApp Z;
    private TextView aB;
    private TextView aC;
    private boolean aD;
    private SparseBooleanArray aF;
    private volatile ArrayList aH;
    private final int[] aI;
    private final Runnable aJ;
    private boolean aN;
    private boolean aO;
    private final up[] aP;
    bl aa;
    public ky ab;
    volatile int ac;
    volatile int ad;
    TimersEditor ae;
    TimersEditor ag;
    volatile long aj;
    boolean ak;
    boolean al;
    final android.c.a am;
    SavedListAdapter an;
    final g ao;
    public qh ap;
    ConfigListAdapter aq;
    Runnable ar;
    volatile boolean as;
    private ImageView at;
    private ImageView au;
    private ImageView av;
    private ImageView aw;
    private ImageButton ax;
    private boolean ay;
    private boolean az;
    Script d;
    View e;
    View f;
    boolean g;
    qm h;
    View i;
    z j;
    ex k;
    HotPoint l;
    TimeJumpPanel m;
    WindowManager n;
    TabHost o;
    volatile me p;
    View r;
    TextView s;
    TextView t;
    TextView u;
    View v;
    TextView w;
    View x;
    TextView y;
    View z;
    public static final String a = String.valueOf(y.d) + "_preferences";
    public static volatile MainService instance = null;
    public static volatile boolean b = false;
    public static volatile boolean c = false;
    public static final pj[][] q = new pj[3];
    private static volatile boolean aA = false;
    public static final boolean[] af = new boolean[176];
    public static final boolean[] ah = new boolean[76];

    static {
        for (int i = 0; i < ah.length; i++) {
            ah[i] = i % 4 < 2;
        }
        for (int i2 = 0; i2 < af.length; i2++) {
            af[i2] = i2 % 4 < 2;
        }
        for (int i3 : new int[]{40, 43, 44}) {
            int i4 = i3 - 1;
            af[(i4 * 4) + 0] = false;
            af[(i4 * 4) + 1] = false;
            af[(i4 * 4) + 2] = false;
            af[(i4 * 4) + 3] = false;
        }
        aE = 127;
        ai = 0;
        aG = true;
        aK = null;
        aL = false;
        aM = true;
        aQ = 0L;
    }

    public MainService(Context context2) {
        super(context2);
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = false;
        this.h = null;
        this.i = null;
        this.m = null;
        this.p = null;
        this.N = false;
        this.O = false;
        this.ay = false;
        this.az = false;
        this.aD = true;
        this.ac = 0;
        this.ad = 0;
        this.aj = 0L;
        this.ak = false;
        this.al = true;
        this.am = new android.c.a();
        this.an = new SavedListAdapter();
        this.ao = new g();
        this.ap = null;
        this.aF = new SparseBooleanArray();
        this.aH = new ArrayList();
        this.aI = new int[3];
        this.aJ = new mf(this);
        this.ar = null;
        this.aN = true;
        this.aO = false;
        this.aP = new up[4];
        this.as = false;
        if (context == null) {
            context = ri.a(context2);
        }
        instance = this;
        Tools.d();
        this.k = new ex();
        this.B = new WrapLayout[3];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a() {
        if (instance.aj == 0) {
            return 127;
        }
        return aE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b() {
        return (instance.aj == 0 || (aE & ai) == ai) ? ai : aE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i, int i2) {
        int i3 = i & 127;
        aE = i3;
        if (i2 == 0) {
            ai = i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        la.a("stopHotkeyDetection: " + this.l);
        if (this.l != null) {
            this.l.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        la.a("startHotkeyDetection: " + this.l);
        if (this.l != null) {
            this.l.d();
            this.k.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ListView listView) {
        if (listView != null) {
            a(listView.getAdapter());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ListAdapter listAdapter) {
        if (listAdapter != null) {
            rx.a(new mq(this, listAdapter));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.j.a(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j) {
        rx.a(new nd(this, j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i, int i2) {
        this.ac = i;
        this.ad = i2;
    }

    public void a(qh qhVar) {
        boolean z = this.ap == null || qhVar == null || this.ap.f != qhVar.f;
        if (z) {
            aG = true;
            W();
        }
        Config.c();
        this.ap = qhVar;
        Config.b();
        this.aq.b();
        if (qhVar != null) {
            this.au.setImageDrawable(Tools.a(qhVar.e));
            if (qhVar.e == null) {
                la.c("setProcessInfo icon is null: " + qhVar);
            }
            this.s.setText(qhVar.toString());
            this.l.a(Tools.a(qhVar.e));
            this.k.a(qhVar.f, qhVar.c, qhVar.d);
        }
        this.ae.b();
        this.ag.b();
        V();
        if (z) {
            x();
        }
    }

    private String b(String str) {
        qh qhVar = this.ap;
        if (qhVar != null) {
            return String.valueOf(str) + "\n\n" + qhVar.b + "\n[" + qhVar.c + "]";
        }
        return str;
    }

    public void e() {
        if (this.X == this.T || this.X == this.U || this.X == this.V) {
            Tools.f(this.G);
        }
    }

    void f() {
        la.a("ServiceProxy showDialog: " + this.p);
        if (this.p != null) {
            la.a("Something going wrong", new RuntimeException("mainDialog != null"));
            this.p.dismiss();
        }
        this.p = new me(context, this.o);
        for (int i = 0; i < this.B.length; i++) {
            this.B[i].setFill(Config.g - 1);
        }
        rx.a(new nt(this));
        this.Z.f();
        this.j.a(this.aD, (Runnable) null);
        this.l.f();
        V();
        this.k.k();
        if (!this.aa.a()) {
            x();
            if (aA) {
                aA = false;
                if (this.am.b() == 0 && this.aj != 0) {
                    j(false);
                }
                if (ex.b) {
                    this.P.onClick(this.G);
                } else {
                    this.Q.onClick(this.G);
                }
            }
        }
        u();
        a((Runnable) null);
    }

    private void V() {
        if (this.p != null) {
            if (this.ay || ((Config.B & 4) != 0 && this.j.b())) {
                i(false);
            }
            K();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        if (this.p == null) {
            if (z) {
                this.Z.f();
            } else {
                this.Z.b(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        c(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(boolean z) {
        String str;
        la.a("ServiceProxy dismissDialog: " + this.p);
        if (this.p != null) {
            this.aa.b(false);
            this.p.dismiss();
            this.p = null;
            this.Z.b(z);
            this.l.d();
            this.ay = this.N;
            boolean z2 = this.O;
            boolean z3 = (Config.A & 128) != 0;
            if (this.aa.a() && (z3 || z2)) {
                String str2 = z3 ? String.valueOf(str) + "- " + Tools.a(qk.a((int) R.string.by_option), String.valueOf(Tools.c((int) R.string.hide_from_game)) + ": 1") + ";\n" : String.valueOf(Tools.c((int) R.string.paused)) + ":\n";
                if (z2) {
                    str2 = (Config.B & 4) != 0 ? String.valueOf(str2) + "- " + Tools.a(qk.a((int) R.string.by_option), String.valueOf(Tools.c((int) R.string.autopause)) + ": " + qk.a((int) R.string.yes)) + ";\n" : String.valueOf(str2) + "- " + qk.a((int) R.string.by_pause_button) + ";\n";
                }
                String trim = str2.trim();
                if (!this.az) {
                    this.az = true;
                    i.c(i.a(ar.f).setMessage(trim).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null).create());
                } else {
                    Tools.b(trim);
                }
            }
            I();
            this.k.k();
            u();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        d(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(byte b2) {
        a(b2, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(boolean z) {
        a((byte) 0, z);
    }

    void a(byte b2, boolean z) {
        a(b2, z, true);
    }

    void a(byte b2, boolean z, boolean z2) {
        if (z) {
            this.al = true;
        }
        this.aj = 0L;
        if (z2) {
            this.k.h(b2);
        }
        instance.k.e.b();
        android.c.a aVar = this.am;
        synchronized (aVar) {
            aVar.c();
            aVar.a();
        }
        a(this.D.getAdapter());
        P();
        aA = false;
    }

    private void W() {
        I();
        d(true);
        this.ao.a();
        this.aD = true;
        this.av.setVisibility(4);
        this.ab.b();
        this.l.k();
        this.aF.clear();
        this.an.c();
        this.k.s();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        b((byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(byte b2) {
        if (this.aD) {
            a(false);
            qh qhVar = this.ap;
            if (qhVar != null) {
                this.k.a(b2, qhVar.f, qhVar.c, qhVar.d);
                this.aD = false;
                this.av.setVisibility(0);
                if (!this.Y.getText().toString().startsWith(String.valueOf(qk.a(R.string.type_xor_short - ("  ".length() * 9))) + ' ' + ((Object) this.k.x()))) {
                    rx.a().postDelayed(new nu(this), Tools.a.nextInt(300000) + 180000);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        if (aG && (Config.B & 2048) != 0 && this.ap != null && eu.c()) {
            aG = false;
            new hx(new nv(this), "CheckLibs").start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int k() {
        boolean z;
        ZipEntry nextElement;
        boolean z2 = true;
        try {
            ApplicationInfo j = Tools.j(this.ap.c);
            if (j == null) {
                return 1;
            }
            String str = j.nativeLibraryDir;
            if (str != null) {
                byte[] bArr = new byte[20];
                File[] listFiles = new File(str).listFiles();
                if (listFiles != null) {
                    z = false;
                    for (File file : listFiles) {
                        if (z) {
                            break;
                        }
                        if (file != null && file.getName().startsWith("lib") && file.getName().endsWith(".so")) {
                            try {
                                FileInputStream fileInputStream = new FileInputStream(file);
                                if (fileInputStream.read(bArr) > 13 && bArr[0] == Byte.MAX_VALUE && bArr[1] == 69 && bArr[2] == 76 && bArr[3] == 70 && bArr[18] == 40) {
                                    try {
                                        la.a("doCheckLibs: " + file + " is ARM lib");
                                        z = true;
                                    } catch (Throwable th) {
                                        th = th;
                                        z = true;
                                        la.c("Failed check lib " + file, th);
                                    }
                                }
                                fileInputStream.close();
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                    }
                } else {
                    z = false;
                }
                if (z) {
                    String str2 = j.sourceDir;
                    if (str2 == null) {
                        return 4;
                    }
                    ZipFile zipFile = new ZipFile(str2);
                    Enumeration<? extends ZipEntry> entries = zipFile.entries();
                    while (true) {
                        if (!entries.hasMoreElements()) {
                            z2 = false;
                            break;
                        }
                        if (entries.nextElement().getName().contains("lib/x86/lib")) {
                            la.a("doCheckLibs: " + nextElement.getName() + " is x86 lib");
                            break;
                        }
                    }
                    zipFile.close();
                    if (z2) {
                        i.a(i.c().setCustomTitle(Tools.i(Tools.c((int) R.string.check_libs))).setMessage(qk.a((int) R.string.arm_libs)).setPositiveButton(qk.a((int) R.string.fix_it), (Build.VERSION.SDK_INT < 21 || Config.C) ? new be("kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh278:0krz0wr0uhsodfh0dup0oleudulhv0zlwk0{;90oleudulhv0{0soruh2") : new nw(this, str2)).setNeutralButton(qk.a((int) R.string.skip), new nz(this)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
                        return 6;
                    }
                    return 5;
                }
                return 3;
            }
            return 2;
        } catch (Throwable th3) {
            la.c("Failed check libs for " + this.ap, th3);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Object obj, g gVar) {
        boolean z = gVar != null;
        g gVar2 = !z ? new g() : gVar;
        g gVar3 = this.ao;
        h hVar = new h();
        if (obj instanceof android.c.a) {
            android.c.a aVar = (android.c.a) obj;
            d dVar = new d();
            int b2 = aVar.b();
            for (int i = 0; i < b2; i++) {
                if (aVar.b(i)) {
                    aVar.a(i, dVar);
                    gVar3.a(dVar.b, dVar.d, hVar);
                    if (hVar.b) {
                        gVar2.a(dVar.b, dVar.d, hVar.a);
                    }
                }
            }
        } else if (obj instanceof android.c.e) {
            android.c.e eVar = (android.c.e) obj;
            int b3 = eVar.b();
            for (int i2 = 0; i2 < b3; i2++) {
                if (eVar.d(i2)) {
                    qx qxVar = (qx) eVar.c(i2);
                    if (qxVar instanceof qx) {
                        gVar3.a(qxVar.b, qxVar.d, hVar);
                        if (hVar.b) {
                            gVar2.a(qxVar.b, qxVar.d, hVar.a);
                        }
                    }
                }
            }
        }
        if (!z) {
            gVar2.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Object obj) {
        if (obj instanceof android.c.e) {
            android.c.e eVar = (android.c.e) obj;
            ArrayList arrayList = new ArrayList();
            int b2 = eVar.b();
            for (int i = 0; i < b2; i++) {
                if (eVar.d(i)) {
                    qx qxVar = (qx) eVar.c(i);
                    if (qxVar instanceof qx) {
                        arrayList.add(qxVar);
                    }
                }
            }
            this.an.a(arrayList);
        } else if (obj instanceof android.c.a) {
            android.c.a aVar = (android.c.a) obj;
            ArrayList arrayList2 = new ArrayList();
            int b3 = aVar.b();
            for (int i2 = 0; i2 < b3; i2++) {
                if (aVar.b(i2)) {
                    arrayList2.add(aVar.a(i2, (d) null));
                }
            }
            this.k.a(arrayList2);
            j(false);
        }
    }

    private void a(pj[][] pjVarArr) {
        this.P = new ik();
        this.Q = new ra();
        this.R = new ov();
        pj[] pjVarArr2 = new pj[23];
        pjVarArr2[0] = new hy();
        pjVarArr2[1] = this.Q;
        pjVarArr2[2] = new EditorListener();
        pjVarArr2[3] = new ol(this, false);
        pjVarArr2[4] = this.P;
        pjVarArr2[5] = new os(this);
        pjVarArr2[6] = new rz();
        pjVarArr2[7] = new op(this);
        pjVarArr2[8] = new ou(this);
        pjVarArr2[9] = new eo();
        pjVarArr2[10] = this.R;
        pjVarArr2[11] = new oh(this);
        pjVarArr2[12] = new qo();
        pjVarArr2[13] = new of(this);
        pjVarArr2[14] = new oe(this);
        pjVarArr2[15] = new oj(this);
        pjVarArr2[16] = new ob(this);
        pjVarArr2[17] = new uf();
        pjVarArr2[18] = new qe();
        pjVarArr2[19] = new OffsetCalculator();
        pjVarArr2[20] = this.E;
        pjVarArr2[21] = new oa(this, R.string.speedhack, R.drawable.ic_speedometer_white_24dp);
        pjVarArr2[22] = new oi(this);
        pjVarArr[0] = pjVarArr2;
        this.D.setAdapter((ListAdapter) new AddressArrayAdapter(this.am));
        this.D.setOnItemClickListener(new EditorListener());
        this.D.setOnItemLongClickListener(new ItemContextMenu(1));
        new FastScrollerFix(this.D);
        P();
    }

    private void b(pj[][] pjVarArr) {
        pj[] pjVarArr2 = new pj[15];
        pjVarArr2[0] = new mg(this, R.string.load_saved_list, R.drawable.ic_upload_white_24dp);
        pjVarArr2[1] = new op(this);
        pjVarArr2[2] = new ou(this);
        pjVarArr2[3] = new mh(this, R.string.save_saved_list, R.drawable.ic_download_white_24dp);
        pjVarArr2[4] = new ol(this, true);
        pjVarArr2[5] = new EditorListener();
        pjVarArr2[6] = new oh(this);
        pjVarArr2[7] = new of(this);
        pjVarArr2[8] = new oj(this);
        pjVarArr2[9] = new eo();
        pjVarArr2[10] = new ob(this);
        pjVarArr2[11] = new b();
        pjVarArr2[12] = new oe(this);
        pjVarArr2[13] = new OffsetCalculator();
        pjVarArr2[14] = this.F;
        pjVarArr[1] = pjVarArr2;
        this.I.setAdapter((ListAdapter) this.an);
        this.I.setOnItemClickListener(new EditorListener());
        this.I.setOnItemLongClickListener(new ItemContextMenu(2));
        new FastScrollerFix(this.I);
        SavedListAdapter.a();
        w();
    }

    @TargetApi(11)
    private void c(pj[][] pjVarArr) {
        this.L = new pf();
        ow owVar = new ow();
        this.K = owVar;
        pj k = owVar.k();
        this.t.setOnClickListener(k);
        pj[] pjVarArr2 = new pj[19];
        pjVarArr2[0] = new EditorListener();
        pjVarArr2[1] = new of(this);
        pjVarArr2[2] = new os(this);
        pjVarArr2[3] = new in();
        pjVarArr2[4] = new pi(this.L);
        pjVarArr2[5] = new ph(this.L);
        pjVarArr2[6] = new eo();
        pjVarArr2[7] = new oj(this);
        pjVarArr2[8] = new op(this);
        pjVarArr2[9] = new oe(this);
        pjVarArr2[10] = new ob(this);
        pjVarArr2[11] = new gw();
        pjVarArr2[12] = new em();
        pjVarArr2[13] = new w();
        pjVarArr2[14] = new OffsetCalculator();
        pjVarArr2[15] = new ou(this);
        pjVarArr2[16] = new oh(this);
        pjVarArr2[17] = this.F;
        pjVarArr2[18] = k;
        pjVarArr[2] = pjVarArr2;
        try {
            this.J.setAdapter((ListAdapter) owVar);
            this.J.setOnItemClickListener(new EditorListener(true));
            this.J.setOnItemLongClickListener(new ItemContextMenu(3));
        } catch (OutOfMemoryError e) {
            la.a(e);
        }
        FastScrollerFix.a(this.J, true);
    }

    private void a(Long l, long j) {
        Long l2;
        if (l == null) {
            int firstVisiblePosition = this.J.getFirstVisiblePosition();
            if (this.J.getChildCount() > 1 && this.J.getChildAt(0).getTop() < 0) {
                firstVisiblePosition++;
            }
            Object itemAtPosition = this.J.getItemAtPosition(firstVisiblePosition);
            if (!(itemAtPosition instanceof iq)) {
                l2 = null;
            } else {
                l2 = Long.valueOf(((iq) itemAtPosition).b());
            }
            if (itemAtPosition instanceof d) {
                l2 = Long.valueOf(((d) itemAtPosition).b);
            }
        } else {
            l2 = l;
        }
        if (l2 != null) {
            long longValue = l2.longValue();
            if (longValue != j && longValue != this.L.a()) {
                int b2 = this.K.b(longValue) - this.J.getFirstVisiblePosition();
                this.L.a(longValue, Tools.c((int) R.string.position_in_memory_editor), (b2 < 0 || b2 >= this.J.getChildCount()) ? 0 : this.J.getChildAt(b2).getTop());
            }
        }
    }

    public void a(Long l, String str, CharSequence charSequence) {
        iw.a(str, 1);
        long j = 0;
        int length = str.length();
        int i = 0;
        while (i < length) {
            int indexOf = str.indexOf(45, i + 1);
            int indexOf2 = str.indexOf(43, i + 1);
            if (indexOf2 == -1 || (indexOf != -1 && indexOf < indexOf2)) {
                indexOf2 = indexOf;
            }
            int i2 = indexOf2 == -1 ? length : indexOf2;
            String trim = str.substring(i, i2).trim();
            int length2 = trim.length();
            if (length2 > 0) {
                for (qs qsVar : RegionList.getList()) {
                    String str2 = qsVar.d;
                    if (str2 != null && str2.length() >= length2 && str2.endsWith(trim) && (str2.length() == trim.length() || str2.charAt((str2.length() - trim.length()) - 1) == '/')) {
                        j += qsVar.b;
                        i = i2;
                        break;
                    }
                }
            }
            try {
                j += ps.a(trim.endsWith("h") ? trim.substring(0, trim.length() - 1) : trim, 16);
                i = i2;
            } catch (Throwable th) {
                la.a("Failed parse", th);
                i = i2;
            }
        }
        a(l, j);
        this.L.a(j, charSequence);
        b(j);
    }

    public void b(long j) {
        a(j, 0);
    }

    public void a(long j, int i) {
        this.K.a(j, i);
        if (this.X == this.V) {
            Tools.f(this.M);
        } else {
            this.o.setCurrentTab(3);
        }
    }

    private void X() {
        ConfigListAdapter configListAdapter = new ConfigListAdapter();
        this.aq = configListAdapter;
        this.S.setAdapter((ListAdapter) configListAdapter);
        this.S.setOnItemClickListener(configListAdapter);
    }

    public void e(boolean z) {
        if (z) {
            i();
        }
        double c2 = this.ab.c();
        b((byte) 0, c2);
        qm qmVar = instance.h;
        if (qmVar != null) {
            qmVar.write("gg.setSpeed(");
            qmVar.write(Double.toString(c2));
            qmVar.write(")\n");
        }
    }

    public double l() {
        return this.k.g();
    }

    public void a(byte b2, double d) {
        b(b2, d);
        this.ab.a(d);
    }

    private void b(byte b2, double d) {
        kz c2 = ky.c(d);
        this.k.a(b2, c2.a, c2.b);
        this.l.b(ky.b(c2.a / c2.b));
    }

    public void m() {
        la.a(">>");
        this.ab.d();
        e(true);
    }

    public void n() {
        la.a("<<");
        this.ab.e();
        e(true);
    }

    public void o() {
        la.a("***");
        this.ab.b();
        e(true);
    }

    public void a(Script script) {
        rx.a(new mi(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(boolean z) {
        if (z != (this.f != null)) {
            rx.a(new mj(this, z));
        }
    }

    public void a(Runnable runnable) {
        if (runnable == null) {
            ArrayList arrayList = this.aH;
            this.aH = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                try {
                    ((Runnable) it.next()).run();
                } catch (Throwable th) {
                    la.b("Failed showScriptEnd", th);
                }
            }
        } else if (this.p != null) {
            try {
                runnable.run();
            } catch (Throwable th2) {
                la.b("Failed showScriptEnd", th2);
            }
        } else {
            this.aH.add(runnable);
        }
    }

    public void b(Script script) {
        rx.a(new mk(this));
        if (this.d == script) {
            this.d = null;
        }
    }

    public void p() {
        Script script = this.d;
        if (script != null) {
            script.f();
        }
    }

    public void a(String str, int i, String str2) {
        p();
        Script script = new Script(new File(str), i, str2);
        this.d = script;
        script.c_();
    }

    public void a(qm qmVar) {
        rx.a(new ml(this));
        if (this.h == qmVar) {
            this.h = null;
        }
    }

    public void q() {
        qm qmVar = this.h;
        if (qmVar != null) {
            qmVar.a();
        }
    }

    public void b(qm qmVar) {
        q();
        this.h = qmVar;
        rx.a(new mm(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FloatPanel a(String str, int i, int i2, int i3, int i4) {
        mn mnVar = new mn(this, context, str, i, i2);
        android.fix.ImageButton imageButton = new android.fix.ImageButton(context);
        imageButton.setImageResource(i4);
        imageButton.setKeepScreenOn(true);
        imageButton.setId(i3);
        imageButton.setOnClickListener(instance);
        mnVar.addView(imageButton);
        return mnVar;
    }

    public void a(int i) {
        this.o.setCurrentTab(i);
    }

    public int r() {
        return this.o.getCurrentTab();
    }

    public void s() {
        int i;
        if (c) {
            int r = r() - 1;
            int t = Tools.t();
            boolean z = (Config.p & (1 << ((r * 2) + t))) != 0;
            int i2 = Config.r;
            if (r >= 0 && this.aI[r] != i2) {
                this.aI[r] = i2;
                this.o.getCurrentView().setBackgroundColor((i2 & (1 << r)) == 0 ? 0 : -16777216);
            }
            this.G.setVisibility((z || t != 0) ? 8 : 0);
            ImageView imageView = this.H;
            if (t == 1) {
                i = r >= 0 ? 0 : 4;
            } else {
                i = 8;
            }
            imageView.setVisibility(i);
            this.aw.setVisibility(t == 0 ? 0 : 8);
            this.C.setVisibility((r < 0 || !z) ? 8 : 0);
            int i3 = 0;
            while (i3 < this.B.length) {
                WrapLayout wrapLayout = this.B[i3];
                wrapLayout.setFill(Config.g - 1);
                wrapLayout.setVisibility(i3 == r ? 0 : 8);
                long j = Config.b[(i3 * 2) + t];
                for (int i4 = 0; i4 < wrapLayout.getChildCount(); i4++) {
                    try {
                        View childAt = wrapLayout.getChildAt(i4);
                        if (childAt != null) {
                            childAt.setVisibility(((1 << i4) & j) != 0 ? 0 : 8);
                        }
                    } catch (ArrayIndexOutOfBoundsException e) {
                    } catch (Throwable th) {
                        la.a(th);
                    }
                }
                i3++;
            }
        }
    }

    private void a(String str, int i, int i2) {
        TabHost.TabSpec newTabSpec = this.o.newTabSpec(str);
        newTabSpec.setContent(i);
        ImageView a2 = Config.a((ImageView) this.o.findViewById(i2));
        boolean z = Build.VERSION.SDK_INT >= 21;
        if (z) {
            newTabSpec.setIndicator("", a2.getDrawable());
        } else {
            try {
                newTabSpec.setIndicator(android.fix.i.a(R.layout.tab_indicator_holo, this.o.getTabWidget(), false));
            } catch (NoSuchMethodError e) {
                la.a(e);
                newTabSpec.setIndicator("", a2.getDrawable());
            }
        }
        try {
            this.o.addTab(newTabSpec);
        } catch (IllegalArgumentException e2) {
            la.a(e2);
            newTabSpec.setIndicator("");
            try {
                this.o.addTab(newTabSpec);
            } catch (IllegalArgumentException e3) {
                la.a(e3);
                if (!z) {
                    newTabSpec.setIndicator("", a2.getDrawable());
                } else {
                    try {
                        newTabSpec.setIndicator(android.fix.i.a(R.layout.tab_indicator_holo, this.o.getTabWidget(), false));
                    } catch (NoSuchMethodError e4) {
                        la.a(e4);
                        newTabSpec.setIndicator("", a2.getDrawable());
                    }
                }
                this.o.addTab(newTabSpec);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x00f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x04b6  */
    @android.annotation.SuppressLint({"WrongViewCast"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void t() {
        /*
            Method dump skipped, instructions count: 1404
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.MainService.t():void");
    }

    private void Y() {
    }

    public void u() {
        g(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.app.Notification a(boolean r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.MainService.a(boolean, boolean):android.app.Notification");
    }

    public void g(boolean z) {
        if (lh.b) {
            z = true;
        }
        Object obj = null;
        try {
            int i = Config.vSpaceReal ? 4 : 2;
            int i2 = 0;
            while (i2 < i) {
                boolean z2 = i2 >= 2;
                Context applicationContext = context.getApplicationContext();
                if (z2) {
                    applicationContext = Config.a(applicationContext);
                }
                NotificationManager notificationManager = (NotificationManager) applicationContext.getSystemService("notification");
                if ((!z && bj.d) || (Config.B & 256) != 0) {
                    if (i2 == 0) {
                        la.a("add notification");
                    }
                    if (notificationManager != null) {
                        Notification a2 = a(i2 % 2 == 0, z2);
                        notificationManager.notify(1, a2);
                        if (bj.a != null) {
                            bj.a.startForeground(1, a2);
                            la.a("startForeground 2." + i2);
                            return;
                        }
                        return;
                    }
                } else {
                    if (i2 == 0) {
                        la.a("cancel notification");
                        if (bj.a != null) {
                            bj.a.stopForeground(true);
                        }
                    }
                    if (notificationManager != null) {
                        notificationManager.cancel(1);
                        notificationManager.cancelAll();
                        return;
                    }
                }
                la.a("Failed get NotificationManager " + i2);
                i2++;
                obj = obj;
            }
        } catch (Throwable th) {
            la.a(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v() {
        int count = this.D.getAdapter().getCount();
        this.aB.setVisibility(count == 0 ? 8 : 0);
        this.aB.setText(Integer.toString(count));
        int count2 = this.I.getAdapter().getCount();
        this.aC.setVisibility(count2 != 0 ? 0 : 8);
        this.aC.setText(Integer.toString(count2));
        E();
    }

    public void w() {
        try {
            rx.a().post(this.aJ);
        } catch (Throwable th) {
            la.b("Failed post timer", th);
        }
    }

    public void x() {
        if (this.X == this.U) {
            this.an.d();
        } else if (this.X == this.V) {
            this.K.e();
        } else {
            j(false);
        }
    }

    public void y() {
        Runnable runnable = this.ar;
        Handler a2 = rx.a();
        if (runnable != null) {
            a2.removeCallbacks(runnable);
        } else {
            runnable = new mw(this);
            this.ar = runnable;
        }
        a2.postDelayed(runnable, 500L);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id;
        String str;
        String str2;
        if (view == this.au || view == this.av || view == this.s) {
            a(true);
        } else if (view == this.M) {
            x();
        } else if (view == this.at) {
            g();
        } else if (view == this.ax) {
            h(true);
        } else if (view == this.Y) {
            Config.a((int) R.id.config_ranges).d();
        } else if (view != null) {
            if (view.getTag() instanceof Integer) {
                id = ((Integer) view.getTag()).intValue();
            } else {
                id = view.getId();
            }
            switch (id) {
                case R.drawable.ic_ui_button_24dp /* 2130837585 */:
                    this.g = true;
                    return;
                case R.string.hide /* 2131165717 */:
                    g();
                    return;
                case R.string.interrupt /* 2131165721 */:
                    Script script = this.d;
                    if (script != null) {
                        Object obj = script.b;
                        if (obj != null) {
                            str2 = obj.toString();
                            if (str2.length() > 250) {
                                str2 = String.valueOf(str2.substring(0, 250)) + "...";
                            }
                        } else {
                            str2 = "?";
                        }
                    } else {
                        str2 = "??";
                    }
                    i.a(i.c().setCustomTitle(Tools.i(Tools.c((int) R.string.script))).setMessage(str2).setPositiveButton(qk.a((int) R.string.interrupt), new mx(this)).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null));
                    return;
                case R.string.record /* 2131165924 */:
                    qm qmVar = this.h;
                    if (qmVar != null) {
                        str = qmVar.b();
                    } else {
                        str = "?";
                    }
                    i.a(i.c().setCustomTitle(Tools.i(Tools.c((int) R.string.record_script))).setMessage(str).setPositiveButton(qk.a((int) R.string.stop), new my(this)).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null));
                    return;
                case R.id.hot_frame /* 2131427360 */:
                    M();
                    return;
                case R.id.abort_button /* 2131427380 */:
                    this.k.n();
                    T();
                    return;
                case R.id.more_btn /* 2131427554 */:
                    Tools.f(this.G);
                    return;
                default:
                    return;
            }
        }
    }

    public void z() {
        if (rv.a) {
            if (this.p == null) {
                M();
                return;
            } else {
                g();
                return;
            }
        }
        try {
            if (this.p == null || ar.d == null || !ar.d.i()) {
                String packageName = context.getPackageName();
                Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(packageName);
                if (launchIntentForPackage == null) {
                    String b2 = ar.b();
                    Tools.a(300, new ComponentName(packageName, b2), 1);
                    launchIntentForPackage = new Intent("android.intent.action.MAIN").setClassName(packageName, b2);
                }
                launchIntentForPackage.setFlags(131072);
                context.startActivity(launchIntentForPackage);
                if (this.p == null) {
                    M();
                }
            } else if (this.ap != null) {
                String str = this.ap.c;
                Intent launchIntentForPackage2 = context.getPackageManager().getLaunchIntentForPackage(str);
                if (launchIntentForPackage2 == null) {
                    launchIntentForPackage2 = new Intent("android.intent.action.MAIN");
                    launchIntentForPackage2.setPackage(str);
                }
                launchIntentForPackage2.setFlags(131072);
                context.startActivity(launchIntentForPackage2);
            }
        } catch (Throwable th) {
            la.b("bring to front fail", th);
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.j.a(false, (Runnable) new mz(this));
        e(false);
        this.l.l();
        return true;
    }

    public static void b(int i) {
        la.b("onTrimMemory: " + i);
        if (instance != null) {
            qk.a();
            qf.a();
            instance.c(i);
        }
    }

    public void c(int i) {
        if (this.k != null && i >= 80) {
            this.k.q();
        }
    }

    public static ComponentCallbacks A() {
        ComponentCallbacks componentCallbacks = aK;
        if (componentCallbacks == null) {
            if (Build.VERSION.SDK_INT >= 14) {
                componentCallbacks = new na();
            } else {
                componentCallbacks = new nb();
            }
            aK = componentCallbacks;
        }
        return componentCallbacks;
    }

    @TargetApi(14)
    private void Z() {
        if (Build.VERSION.SDK_INT >= 14) {
            context.registerComponentCallbacks(A());
        }
    }

    public static void a(Configuration configuration) {
        la.a("Main onConfigurationChanged: " + configuration);
        if (!aL) {
            aL = true;
            try {
                Tools.a(configuration);
                if (!ad.c().equals(Locale.getDefault().toString())) {
                    ad.d();
                }
                if (instance != null && instance.l != null) {
                    instance.l.c();
                }
                if (c) {
                    instance.s();
                }
            } finally {
                aL = false;
            }
        }
    }

    private static void a(List list, String str) {
        if (str != null && str.length() != 0) {
            if (str.contains("/emulated/0")) {
                b(list, str.replace("/emulated/0", "/emulated/legacy"));
            }
            b(list, str);
        }
    }

    private static void b(List list, String str) {
        if (str != null && str.length() != 0) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((String) it.next()).equals(str)) {
                    return;
                }
            }
            list.add(str);
        }
    }

    private static void a(List list, File file) {
        if (file != null) {
            a(list, file.getAbsolutePath());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"SdCardPath"})
    @TargetApi(19)
    public String B() {
        ArrayList<String> arrayList = new ArrayList();
        SharedPreferences s = Tools.s();
        String string = s.getString("temp-path", null);
        if (string != null) {
            if ("/bypass".equals(string)) {
                ex.a = true;
            }
            if (string.length() < 2 || string.charAt(0) != '/') {
                s.edit().remove("temp-path").commit();
                la.c("Removed bad path: " + string);
            } else {
                a(arrayList, string);
            }
        }
        try {
            a(arrayList, context.getExternalFilesDir(null));
        } catch (Throwable th) {
            la.c("Fail get path", th);
        }
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                for (File file : context.getExternalFilesDirs(null)) {
                    a(arrayList, file);
                }
            } catch (Throwable th2) {
                la.c("Fail get path", th2);
            }
        }
        try {
            a(arrayList, context.getExternalCacheDir());
        } catch (Throwable th3) {
            la.c("Fail get path", th3);
        }
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                for (File file2 : context.getExternalCacheDirs()) {
                    a(arrayList, file2);
                }
            } catch (Throwable th4) {
                la.c("Fail get path", th4);
            }
        }
        try {
            a(arrayList, Environment.getExternalStorageDirectory());
        } catch (Throwable th5) {
            la.c("Fail get path", th5);
        }
        a(arrayList, "/sdcard");
        try {
            a(arrayList, Tools.i());
        } catch (Throwable th6) {
            la.c("Fail get path", th6);
        }
        try {
            a(arrayList, Tools.h());
        } catch (Throwable th7) {
            la.c("Fail get path", th7);
        }
        a(arrayList, "/data");
        StringBuilder sb = new StringBuilder();
        for (String str : arrayList) {
            if (str != null) {
                String trim = str.trim();
                if (!"".equals(trim)) {
                    if (sb.length() > 0) {
                        sb.append('|');
                    }
                    sb.append(trim);
                }
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object C() {
        if (this.X == this.T) {
            return this.am;
        }
        if (this.X == this.U) {
            if (this.an != null) {
                return this.an.b();
            }
            return null;
        } else if (this.X != this.V || this.K == null) {
            return null;
        } else {
            return this.K.a();
        }
    }

    void D() {
        if (this.X == this.T) {
            a(this.D);
        } else if (this.X == this.U) {
            a(this.I);
        } else if (this.X == this.V) {
            a(this.J);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(int i) {
        Tools.a(C(), i);
        D();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void E() {
        if (rx.c()) {
            F();
        } else {
            rx.a(new nc(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void F() {
        TextView textView = this.s;
        if (textView != null && this.ap == null && this.k.e.g()) {
            textView.setText(qk.a((int) R.string.loading));
        }
        TextView textView2 = this.Y;
        if (textView2 != null) {
            String valueOf = String.valueOf(' ');
            textView2.setText(Tools.a(qk.a(R.string.type_xor - (valueOf.length() * 10)), " ", this.k.x(), valueOf.substring(0, 1), Config.a(R.id.config_ptrace_bypass_mode - (valueOf.length() * 7)).c(), valueOf.substring(0, 1), Integer.toString(valueOf.length() * Tools.a(C()))));
        }
    }

    public void G() {
        E();
    }

    public static void H() {
        i.a(i.c().setMessage(qk.a((int) R.string.bad_firmware)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
    }

    boolean h(boolean z) {
        boolean b2 = b((byte) 0, z);
        qm qmVar = instance.h;
        if (qmVar != null) {
            qmVar.write("gg.processToggle()\n");
        }
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(byte b2, boolean z) {
        if (z || this.p != null) {
            i();
            this.k.a(b2, this.N ? (byte) 1 : (byte) 0);
            this.N = this.N ? false : true;
            K();
            return true;
        }
        return false;
    }

    boolean I() {
        boolean c2 = c((byte) 0);
        qm qmVar = instance.h;
        if (qmVar != null) {
            qmVar.write("gg.processResume()\n");
        }
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(byte b2) {
        if (this.N) {
            i();
            this.k.a(b2, (byte) 1);
            this.N = false;
            K();
            return true;
        }
        return false;
    }

    boolean i(boolean z) {
        boolean c2 = c((byte) 0, z);
        qm qmVar = instance.h;
        if (qmVar != null) {
            qmVar.write("gg.processPause()\n");
        }
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(byte b2, boolean z) {
        if ((z || this.p != null) && !this.N) {
            i();
            this.k.a(b2, (byte) 0);
            this.N = true;
            K();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean J() {
        boolean d = d((byte) 0);
        qm qmVar = instance.h;
        if (qmVar != null) {
            qmVar.write("gg.processKill()\n");
        }
        return d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(byte b2) {
        qh qhVar = this.ap;
        if (qhVar == null) {
            Tools.b(qk.a((int) R.string.no_application));
            return false;
        }
        la.a("Kill game");
        this.k.a(b2, qhVar.f, qhVar.c, qhVar.d);
        this.k.a(b2, (byte) 2);
        return true;
    }

    void K() {
        this.ax.setImageResource(!this.N ? R.drawable.ic_pause_white_18dp : R.drawable.ic_play_arrow_white_18dp);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(boolean z) {
        if (z || !this.aa.a()) {
            this.x.setVisibility(0);
            ek.c();
        }
    }

    public void L() {
        e((byte) 0);
    }

    public void e(byte b2) {
        this.k.g(b2);
        this.an.d();
        j(false);
        a(this.J);
        a(this.I);
    }

    public void M() {
        if (c) {
            j(false);
            f();
        }
    }

    void N() {
        la.a("stopService");
        if (b) {
            la.a("Service stopService: already");
            return;
        }
        b = true;
        this.k.w();
        this.l.h();
        U();
    }

    public void O() {
        la.a("Service onDestroy");
        g(true);
        aa();
        lh.j();
    }

    @TargetApi(14)
    private void aa() {
        if (Build.VERSION.SDK_INT >= 14) {
            context.unregisterComponentCallbacks(A());
        }
    }

    public void a(byte b2, long j, long j2, int i) {
        this.aj = j;
        if (i == 0) {
            T();
            aM = true;
            if (b2 == 0) {
                if (!((ek.b() || Config.k == 0 || j <= ((long) ek.a())) ? false : true)) {
                    j(true);
                } else {
                    g();
                    Tools.b(String.valueOf(qk.a((int) R.string.search_helper)) + ' ' + Tools.a(qk.a((int) R.string.found_count), Long.valueOf(j)));
                    aA = Config.k == 2;
                }
            }
        }
        if (this.aj == 0) {
            a((byte) 0, false, false);
        }
    }

    public void a(bk bkVar) {
        int i;
        int[] iArr;
        long[] jArr;
        int i2;
        boolean z;
        tp a2 = Tools.a(this.D);
        byte h = bkVar.h();
        try {
            bkVar.g();
            int e = (bkVar.e() - bkVar.f()) - 1;
            bkVar.b();
            android.c.a aVar = this.am;
            int a3 = ek.a();
            int i3 = 0;
            d dVar = new d();
            synchronized (aVar) {
                boolean z2 = aM;
                aM = false;
                if (z2) {
                    i = 0;
                    iArr = null;
                    jArr = null;
                } else {
                    try {
                        int b2 = aVar.b();
                        long[] jArr2 = new long[b2];
                        int[] iArr2 = new int[b2];
                        d dVar2 = new d();
                        int i4 = 0;
                        while (i4 < b2) {
                            if (aVar.b(i4)) {
                                aVar.a(i4, dVar2);
                                jArr2[i3] = dVar2.b;
                                i2 = i3 + 1;
                                iArr2[i3] = d.a(dVar2.d);
                            } else {
                                i2 = i3;
                            }
                            i4++;
                            i3 = i2;
                        }
                        i = i3;
                        iArr = iArr2;
                        jArr = jArr2;
                    } catch (OutOfMemoryError e2) {
                        la.c("Failed save checked data", e2);
                        i = 0;
                        iArr = null;
                        jArr = null;
                    }
                }
                aVar.c();
                int i5 = e / (InOut.b + 12);
                if (h == 0 && i5 > a3) {
                    i5 = a3;
                }
                aVar.a(i5);
                int i6 = 0;
                while (e - bkVar.f() > 10 && (h != 0 || aVar.b() < a3)) {
                    long c2 = bkVar.c();
                    long d = bkVar.d();
                    int b3 = bkVar.b();
                    dVar.b = c2;
                    dVar.d = b3;
                    if (jArr != null) {
                        int a4 = d.a(b3);
                        while (i6 < i) {
                            long j = jArr[i6];
                            if (j != c2) {
                                if (!Tools.a(j, c2)) {
                                    break;
                                }
                                i6++;
                            } else {
                                int i7 = iArr[i6];
                                if (i7 == a4) {
                                    z = true;
                                    i6++;
                                    break;
                                } else if (i7 > a4) {
                                    z = z2;
                                    break;
                                } else {
                                    i6++;
                                }
                            }
                        }
                    }
                    z = z2;
                    aVar.a(c2, d, b3, z);
                }
                aVar.a();
            }
        } catch (IOException e3) {
            la.c("Failed read", e3);
        } catch (OutOfMemoryError e4) {
            int b4 = this.am.b();
            this.am.c();
            this.am.a();
            Tools.a((int) R.string.out_of_memory_error);
            la.b("list.size() = " + b4 + "; show count = " + ek.a(), e4);
        }
        a(this.D.getAdapter());
        P();
        Tools.a(this.D, a2);
        instance.E();
        a(h, (String) null);
    }

    public void b(bk bkVar) {
        this.K.a(bkVar);
    }

    @SuppressLint({"DefaultLocale"})
    public void P() {
        StringBuilder sb;
        String str;
        if (this.aj != 0) {
            sb = null;
        } else if (this.al) {
            sb = new StringBuilder();
            sb.append(qk.a((int) R.string.search_hint));
            sb.append('\n');
            sb.append(qk.a((int) R.string.speedhack_hint));
        } else {
            sb = new StringBuilder();
            sb.append(qk.a((int) R.string.nothing_found));
            if (Config.i != -1) {
                sb.append('\n');
                sb.append(qk.a((int) R.string.try_more_ranges));
            }
            if (!this.ak) {
                sb.append('\n');
                sb.append(qk.a((int) R.string.try_fuzzy_search));
            }
        }
        int b2 = this.am.b();
        boolean b3 = ek.b();
        StringBuilder append = new StringBuilder(" (").append(gv.a(b2, 32));
        if (b3 || this.aj != b2) {
            str = String.valueOf(b3 ? "*" : "") + "/" + gv.a(this.aj, 32);
        } else {
            str = "";
        }
        String sb2 = append.append(str).append(")").toString();
        rx.a(new nf(this, sb != null ? sb.toString() : null, AddressArrayAdapter.a == 0 ? sb2 : Tools.a(sb2, " ", ow.c(AddressArrayAdapter.a))));
    }

    public void a(byte b2, int i, int[] iArr) {
        int i2;
        switch (i) {
            case 0:
                Tools.s().edit().putBoolean("mem-fail", true).commit();
                return;
            case 1:
                Tools.s().edit().remove("mem-fail").commit();
                return;
            case 2:
            case 7:
            default:
                return;
            case 3:
                T();
                if (b2 == 0) {
                    Tools.a((int) R.string.dump_ended, 0);
                }
                a(b2, (String) null);
                return;
            case 4:
                T();
                if (b2 == 0) {
                    Tools.a((int) R.string.dump_failed);
                }
                a(b2, qk.a((int) R.string.dump_failed));
                return;
            case 5:
                if (b2 == 0) {
                    Tools.a((int) R.string.copy_ended, 0);
                }
                a(b2, (String) null);
                return;
            case 6:
                if (b2 == 0) {
                    Tools.a((int) R.string.copy_failed);
                }
                a(b2, qk.a((int) R.string.copy_failed));
                return;
            case 8:
                this.O = true;
                return;
            case 9:
                this.O = false;
                return;
            case 10:
                if (b2 == 0) {
                    Tools.a((int) R.string.speedhack_loading, 0);
                    return;
                }
                return;
            case 11:
                if (b2 == 0) {
                    String a2 = qk.a((int) R.string.speedhack_loaded);
                    if (this.aO) {
                        a2 = String.valueOf(a2) + "\n" + qk.a((int) R.string.speedhack_no_x86);
                    }
                    Tools.a(a2, this.aO ? 1 : 0);
                }
                this.aO = false;
                return;
            case 12:
                if (b2 == 0) {
                    Tools.a((int) R.string.patch_loading, 0);
                    return;
                }
                return;
            case 13:
                if (b2 == 0) {
                    Tools.a((int) R.string.patch_loaded);
                    i.a(i.c().setCustomTitle(Tools.d((int) R.string.disable_protection)).setMessage(qk.a((int) R.string.must_restart_if)).setPositiveButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
                }
                a(b2, (String) null);
                return;
            case 14:
                if (b2 == 0) {
                    Tools.a((int) R.string.patch_failed);
                }
                a(b2, qk.a((int) R.string.patch_failed));
                return;
            case 15:
                if (b2 == 0) {
                    Tools.a((int) R.string.unrandomizer_loading, 0);
                    return;
                }
                return;
            case 16:
                if (b2 == 0) {
                    String a3 = qk.a((int) R.string.unrandomizer_loaded);
                    if (this.aO) {
                        a3 = String.valueOf(a3) + "\n" + qk.a((int) R.string.speedhack_no_x86);
                    }
                    Tools.a(a3, this.aO ? 1 : 0);
                }
                this.aO = false;
                return;
            case 17:
                if (b2 == 0) {
                    i.a(i.c().setCustomTitle(Tools.d((int) R.string.waitpid_mode)).setMessage(qk.a((int) R.string.help_waitpid)).setPositiveButton(qk.a((int) R.string.alternative), new ng(this)).setNegativeButton(qk.a((int) R.string.skip), (DialogInterface.OnClickListener) null));
                    return;
                }
                return;
            case 18:
                a(b2, (String) null);
                return;
            case 19:
                a(iArr);
                return;
            case 20:
                i.a(i.c().setMessage(String.valueOf(qk.a((int) R.string.ptrace_fail)) + "\n\n" + qk.a(iArr[0] != 0 ? R.string.ptrace_fail_partially : R.string.ptrace_fail_full) + "\n\n" + qk.a((int) R.string.ptrace_fail_solve)).setPositiveButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
                return;
            case 21:
                if (iArr[1] != 0) {
                    i2 = R.string.feature_hide_4;
                } else if (iArr[2] != 0) {
                    i2 = R.string.feature_firmware;
                } else {
                    if (this.aN && (Config.A & 131072) != 0) {
                        this.aN = false;
                        Config.a((int) R.id.config_ptrace_bypass_mode).d();
                    }
                    i2 = R.string.feature_protection;
                }
                Tools.a(qk.a(i2), 1);
                return;
            case 22:
                this.aO = true;
                return;
        }
    }

    private void a(int[] iArr) {
        if (iArr != null && iArr.length == 2) {
            int i = iArr[0];
            up[] upVarArr = this.aP;
            if (i >= 0 && i < 4) {
                up upVar = upVarArr[i];
                if (upVar == null) {
                    upVar = new up(i);
                    upVarArr[i] = upVar;
                }
                upVar.a(iArr[1]);
            }
        }
    }

    public void e(int i) {
        if (Config.w != 0 && i == Config.w) {
            rx.a(new nh(this));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x02b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void f(int r14) {
        /*
            Method dump skipped, instructions count: 736
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.MainService.f(int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, boolean z) {
        i.a(i.c().setCustomTitle(Tools.d((int) R.string.game_dead)).setItems(new String[]{qk.a((int) R.string.exit), qk.a((int) R.string.restart_game), qk.a((int) R.string.restart_game_without_protection), qk.a((int) R.string.help_games_protection_title), qk.a((int) R.string.ok)}, new nl(this, str, z)).setCancelable(false));
    }

    public void Q() {
        p();
        if (!this.as) {
            this.as = true;
            String str = this.ap == null ? null : this.ap.c;
            boolean z = this.ap == null ? false : this.ap.n;
            a(false);
            W();
            T();
            a(str, z);
        }
    }

    public void R() {
        T();
        N();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean S() {
        this.l.a((byte) 1, -1L, 1L, 0, 1, "");
        return this.aa.a(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void T() {
        this.l.a((byte) 2, -1L, 1L, 0, 1, "");
        this.aa.b(true);
        this.k.l();
        this.k.k();
        this.az = false;
    }

    public void a(byte b2, String str) {
        if (b2 == 0) {
            la.a("notifyScript client: " + str);
            return;
        }
        Script script = this.d;
        if (script != null) {
            la.a("notifyScript: " + ((int) b2) + "; " + str);
            script.a(b2, str);
            return;
        }
        la.a("notifyScript no script: " + ((int) b2) + "; " + str);
    }

    public void a(CharSequence charSequence, long j, long j2, int i, int i2, long j3) {
        StringBuilder sb;
        if (j <= 0 || j2 == 0) {
            sb = null;
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Tools.a("%.2f", Double.valueOf((100.0d * j) / j2)));
            sb2.append(" %");
            sb = sb2;
        }
        this.aa.a(charSequence, j, j2, i, i2, j3, sb == null ? "" : sb.toString());
        if (sb != null) {
            sb.setLength(4);
            sb.append('%');
        }
        this.l.a((byte) 0, j, j2, i, i2, sb == null ? "" : sb.toString());
    }

    public void a(CharSequence charSequence) {
        a(charSequence, -1L, 1L, 0, 1, 0L);
    }

    public long b(long j, int i) {
        i();
        return this.k.a(j, i);
    }
}
