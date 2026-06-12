package android.ext;

import android.content.DialogInterface;
import android.ext.Script;
import android.view.View;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class ov extends re implements View.OnClickListener {
    public ov() {
        super(R.string.help_mask_search_title, R.drawable.ic_mask_white_24dp);
    }

    public static boolean a(String str, long j, int i, int i2, long j2, long j3, boolean z, long j4) {
        String c = c(str);
        boolean a = a((byte) 0, c, j, i, i2, j2, j3, z, j4);
        qm qmVar = MainService.instance.h;
        if (qmVar != null) {
            if (z) {
                qmVar.write("\ngg.clearResults()\n");
            }
            if (z || MainService.instance.aj == 0) {
                qmVar.write("gg.searchAddress(");
            } else {
                qmVar.write("gg.refineAddress(");
            }
            Script.Consts.b(qmVar, c);
            qmVar.write(", ");
            Script.Consts.a(qmVar, j);
            qmVar.write(", ");
            Script.Consts.a(qmVar, qmVar.a.b, i);
            qmVar.write(", ");
            Script.Consts.a(qmVar, qmVar.a.d, i2);
            qmVar.write(", ");
            Script.Consts.a(qmVar, j2);
            qmVar.write(", ");
            Script.Consts.a(qmVar, j3);
            qmVar.write(", ");
            qmVar.write(Long.toString(j4));
            qmVar.write(")\n");
        }
        return a;
    }

    public static boolean a(byte b, String str, long j, int i, int i2, long j2, long j3, boolean z, long j4) {
        int i3 = i & 127;
        MainService mainService = MainService.instance;
        if (mainService.aj != 0 && !z) {
            i3 &= MainService.a() & 127;
        }
        if (i3 == 0) {
            mainService.a(b);
            return true;
        }
        long[] a = Searcher.a(str, j);
        int i4 = i3 | i2;
        if (mainService.S()) {
            if (mainService.aj != 0 && z) {
                mainService.a(b);
            }
            if (mainService.aj == 0) {
                mainService.ak = false;
                mainService.k.l(b);
            }
            mainService.b(b);
            mainService.al = false;
            mainService.k.a(b, a[0], a[1], i4, j2, j3, j4);
            MainService.a(i3, (int) b);
            return false;
        }
        throw new NumberFormatException(qk.a((int) R.string.busy_dialog_fail));
    }

    @Override // android.ext.re
    public void a(DialogInterface dialogInterface, int i) {
        a(this.h.f(), this.h.h(), i, this.h.e(), this.h.d(0), this.h.d(1), this.g == -3, this.h.p());
    }

    @Override // android.ext.re, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.b = this.h.f();
        this.d = this.h.g();
        MainService.ai = this.h.d();
        this.c = this.h.e();
        super.onDismiss(dialogInterface);
    }
}
