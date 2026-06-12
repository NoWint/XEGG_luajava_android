package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.ext.Script;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.SeekBar;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.lang.ref.WeakReference;

/* compiled from: src */
/* loaded from: classes.dex */
public class ik extends re implements View.OnClickListener {
    private android.fix.j a;
    private long j;
    private long k;
    private long l;

    public ik() {
        super(R.string.search_unknown_value, R.drawable.ic_fuzzy_white_24dp);
        this.j = 0L;
        this.k = -1L;
        this.l = 0L;
    }

    public static boolean a(int i, long j, long j2, long j3) {
        boolean a = a((byte) 0, i, j, j2, j3);
        qm qmVar = MainService.instance.h;
        if (qmVar != null) {
            qmVar.write("\ngg.startFuzzy(");
            Script.Consts.a(qmVar, qmVar.a.b, i);
            qmVar.write(", ");
            Script.Consts.a(qmVar, j);
            qmVar.write(", ");
            Script.Consts.a(qmVar, j2);
            qmVar.write(", ");
            qmVar.write(Long.toString(j3));
            qmVar.write(")\n");
        }
        return a;
    }

    public static boolean a(byte b, int i, long j, long j2, long j3) {
        int i2 = i & 127;
        MainService mainService = MainService.instance;
        if (i2 == 0) {
            mainService.a(b);
            return true;
        } else if (mainService.S()) {
            if (mainService.aj != 0) {
                mainService.a(b);
            }
            mainService.ak = true;
            mainService.k.l(b);
            mainService.b(b);
            mainService.al = false;
            mainService.k.a(b, i2, j, j2, j3);
            MainService.a(i2, (int) b);
            return false;
        } else {
            throw new NumberFormatException(qk.a((int) R.string.busy_dialog_fail));
        }
    }

    public static boolean a(String str, int i, int i2, int i3, long j, long j2, long j3) {
        String c = c(str);
        boolean a = a((byte) 0, c, i, i2, i3, j, j2, j3);
        qm qmVar = MainService.instance.h;
        if (qmVar != null) {
            qmVar.write("gg.searchFuzzy(");
            Script.Consts.a(qmVar, c);
            qmVar.write(", ");
            Script.Consts.a(qmVar, qmVar.a.c, i2);
            qmVar.write(", ");
            Script.Consts.a(qmVar, qmVar.a.b, i);
            qmVar.write(", ");
            Script.Consts.a(qmVar, j);
            qmVar.write(", ");
            Script.Consts.a(qmVar, j2);
            qmVar.write(", ");
            qmVar.write(Long.toString(j3));
            qmVar.write(")\n");
        }
        return a;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean a(byte r21, java.lang.String r22, int r23, int r24, int r25, long r26, long r28, long r30) {
        /*
            r3 = r23 & 127(0x7f, float:1.78E-43)
            r4 = 1006632960(0x3c000000, float:0.0078125)
            r11 = r24 & r4
            android.ext.MainService r5 = android.ext.MainService.instance
            int r4 = android.ext.MainService.a()
            r4 = r4 & 127(0x7f, float:1.78E-43)
            r4 = r4 & r3
            if (r4 != 0) goto L18
            r0 = r21
            r5.a(r0)
            r3 = 1
        L17:
            return r3
        L18:
            r8 = 0
            r3 = 126(0x7e, float:1.77E-43)
            r0 = r22
            int r3 = r0.indexOf(r3)
            r6 = -1
            if (r3 == r6) goto L5e
            r3 = 1
        L26:
            android.ext.pv r10 = new android.ext.pv
            r10.<init>()
            if (r3 == 0) goto Lb6
            r6 = 536870912(0x20000000, float:1.0842022E-19)
            if (r11 == r6) goto L60
            r6 = 268435456(0x10000000, float:2.5243549E-29)
            if (r11 == r6) goto L60
            java.lang.NumberFormatException r3 = new java.lang.NumberFormatException
            r4 = 2131165580(0x7f07018c, float:1.7945381E38)
            java.lang.String r4 = android.ext.qk.a(r4)
            r5 = 2
            java.lang.Object[] r5 = new java.lang.Object[r5]
            r6 = 0
            r7 = 2131165578(0x7f07018a, float:1.7945377E38)
            java.lang.String r7 = android.ext.qk.a(r7)
            r5[r6] = r7
            r6 = 1
            android.fix.j r7 = android.ext.d.b()
            java.lang.Object r7 = r7.get(r11)
            r5[r6] = r7
            java.lang.String r4 = android.ext.Tools.a(r4, r5)
            r3.<init>(r4)
            throw r3
        L5e:
            r3 = 0
            goto L26
        L60:
            r0 = r22
            android.ext.rc r11 = android.ext.ra.a(r10, r0, r4, r11)
            long r6 = r11.a
            long r8 = r11.b
            int r4 = r11.c
            int r11 = r11.d
        L6e:
            int r12 = java.lang.Integer.bitCount(r4)
            r13 = 1
            if (r12 <= r13) goto Ld0
            boolean r12 = r10.b
            int r4 = android.ext.d.a(r4, r6, r12)
            r13 = 0
            int r12 = (r8 > r13 ? 1 : (r8 == r13 ? 0 : -1))
            if (r12 == 0) goto Ld0
            boolean r10 = r10.b
            int r4 = android.ext.d.a(r4, r8, r10)
            r19 = r4
        L89:
            boolean r4 = r5.S()
            if (r4 == 0) goto Lc3
            r0 = r21
            r5.b(r0)
            r4 = 0
            r5.al = r4
            android.ext.ex r4 = r5.k
            if (r3 == 0) goto Lc0
            r3 = 8388608(0x800000, float:1.17549435E-38)
            r10 = r19 | r3
        L9f:
            r5 = r21
            r12 = r25
            r13 = r26
            r15 = r28
            r17 = r30
            r4.a(r5, r6, r8, r10, r11, r12, r13, r15, r17)
            r0 = r19
            r1 = r21
            android.ext.MainService.a(r0, r1)
            r3 = 0
            goto L17
        Lb6:
            r0 = r22
            long r6 = android.ext.d.a(r10, r0, r4)
            int r12 = r10.c
            r4 = r4 & r12
            goto L6e
        Lc0:
            r10 = r19
            goto L9f
        Lc3:
            java.lang.NumberFormatException r3 = new java.lang.NumberFormatException
            r4 = 2131165730(0x7f070222, float:1.7945685E38)
            java.lang.String r4 = android.ext.qk.a(r4)
            r3.<init>(r4)
            throw r3
        Ld0:
            r19 = r4
            goto L89
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.ik.a(byte, java.lang.String, int, int, int, long, long, long):boolean");
    }

    private void a() {
        MainService mainService = MainService.instance;
        if (mainService.k.y()) {
            int a = MainService.a();
            if (mainService.aj == 0) {
                this.h = new Searcher(1, a);
                this.a = this.h.b(a);
                this.h.a((CharSequence) qk.a((int) R.string.type_request));
                AlertDialog create = i.c().setView(this.h.l()).setPositiveButton(qk.a((int) R.string.search), this).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).create();
                i.a(create, (DialogInterface.OnDismissListener) this);
                i.a(create, (DialogInterface.OnShowListener) this);
                this.i = new WeakReference(create);
                i.c(create);
                return;
            }
            this.h = new Searcher(2, a);
            this.a = this.h.b(a);
            this.h.a((CharSequence) qk.a((int) R.string.compare_current_last));
            this.h.a(this);
            View l = this.h.l();
            ((Button) l.findViewById(R.id.equal_btn)).setOnClickListener(this);
            ((Button) l.findViewById(R.id.not_equal_btn)).setOnClickListener(this);
            ((Button) l.findViewById(R.id.larger_btn)).setOnClickListener(this);
            ((Button) l.findViewById(R.id.smaller_btn)).setOnClickListener(this);
            AlertDialog create2 = i.c().setView(l).create();
            i.a(create2, (DialogInterface.OnDismissListener) this);
            i.a(create2, (DialogInterface.OnShowListener) this);
            this.i = new WeakReference(create2);
            i.a(create2, this.h.o());
        }
    }

    @Override // android.ext.re, android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        MainService mainService = MainService.instance;
        if (view == null || (view.getTag() instanceof pj)) {
            new ik().a();
            return;
        }
        if ((view.getTag() instanceof Integer) && mainService.aj == 0) {
            try {
                this.j = this.h.d(0);
                this.k = this.h.d(1);
                this.l = this.h.p();
                Tools.a(this.i);
                int d = this.h.d();
                if (d == 0) {
                    new tu(this.a, "0", qk.a((int) R.string.type_request), this);
                } else {
                    a(d, this.j, this.k, this.l);
                }
            } catch (NumberFormatException e) {
                re.a(e, (android.widget.EditText) null);
                return;
            }
        }
        switch (view.getId()) {
            case R.id.equal_btn /* 2131427644 */:
                if (Searcher.b || mainService.N) {
                    i = 536870912;
                    break;
                } else {
                    b();
                    i = 0;
                    break;
                }
                break;
            case R.id.not_equal_btn /* 2131427645 */:
                i = 268435456;
                break;
            case R.id.larger_btn /* 2131427646 */:
                i = 67108864;
                break;
            case R.id.smaller_btn /* 2131427647 */:
                i = 134217728;
                break;
            default:
                i = 0;
                break;
        }
        if (i != 0) {
            try {
                int d2 = this.h.d();
                if (d2 == 0 || !Searcher.b) {
                    d2 = MainService.a() & 127;
                }
                a(this.h.f(), d2, i, 1, this.h.d(0), this.h.d(1), this.h.p());
            } catch (NumberFormatException e2) {
                re.a(e2, this.h.o());
                return;
            }
        }
        Tools.a(this.i);
        Tools.b(this.i);
    }

    private void b() {
        View a = android.fix.i.a((int) R.layout.service_fuzzy_equal, (ViewGroup) null);
        SeekBar seekBar = (SeekBar) a.findViewById(R.id.count_fuzzy_equal_seekbar);
        seekBar.setOnSeekBarChangeListener(new il(this, (TextView) a.findViewById(R.id.count_fuzzy_equal)));
        i.a(i.c().setCustomTitle(Tools.d((int) R.string.fuzzy_equal)).setMessage(qk.a((int) R.string.count_fuzzy_equal_run)).setPositiveButton(qk.a((int) R.string.ok), new im(this, seekBar)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).setView(a));
    }

    @Override // android.ext.re, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        MainService.ai = this.h.d();
        super.onDismiss(dialogInterface);
    }

    @Override // android.ext.re
    public void a(DialogInterface dialogInterface, int i) {
    }

    @Override // android.ext.re, android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            onClick(((AlertDialog) dialogInterface).getButton(-1));
        } else if (MainService.instance.aj == 0) {
            MainService.ai = i;
            a(i, this.j, this.k, this.l);
        }
    }
}
