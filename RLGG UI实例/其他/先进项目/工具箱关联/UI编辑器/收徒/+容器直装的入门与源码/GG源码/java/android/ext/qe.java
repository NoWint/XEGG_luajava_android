package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import catch_.me_.if_.you_.can_.R;
import java.lang.ref.WeakReference;

/* compiled from: src */
/* loaded from: classes.dex */
public class qe extends re {
    private static String a = "0";
    private static boolean j = true;

    public qe() {
        super(R.string.help_pointer_search_title, R.drawable.ic_pointer_white_24dp);
    }

    @Override // android.ext.re, android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        if (view != null && (view.getTag() instanceof Integer)) {
            onClick(null, ((Integer) view.getTag()).intValue());
        } else {
            a((String) null);
        }
    }

    private int a() {
        qh qhVar = MainService.instance.ap;
        return (qhVar == null || !qhVar.n) ? 4 : 36;
    }

    public void a(String str) {
        if (MainService.instance.k.y()) {
            MainService mainService = MainService.instance;
            int a2 = a();
            if (this.h == null) {
                this.h = new Searcher(4, a2);
            }
            this.h.b(str == null);
            Searcher searcher = this.h;
            if (str == null) {
                str = this.b;
            }
            searcher.b(str);
            this.h.a((CharSequence) qk.a((int) R.string.mask_request));
            this.h.d(a);
            this.h.a(j);
            this.h.a(d.a(a2, a2 != 4), a2);
            AlertDialog.Builder negativeButton = i.c().setView(this.h.l()).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null);
            if (mainService.aj == 0 || (MainService.a() & a2) == 0) {
                negativeButton.setPositiveButton(qk.a((int) R.string.new_search), this);
            } else {
                negativeButton.setPositiveButton(qk.a((int) R.string.refine), this).setNeutralButton(qk.a((int) R.string.new_search), this);
            }
            AlertDialog create = negativeButton.create();
            i.a(create, (DialogInterface.OnDismissListener) this);
            i.a(create, (DialogInterface.OnShowListener) this);
            this.i = new WeakReference(create);
            i.a(create, this.h.o());
        }
    }

    @Override // android.ext.re
    public void a(DialogInterface dialogInterface, int i) {
    }

    @Override // android.ext.re, android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        boolean z = false;
        try {
            long a2 = ps.a(c(this.h.f()), 16);
            long a3 = ps.a(c(this.h.i()), this.h.j() ? 16 : 10);
            int d = this.h.d();
            String str = String.valueOf(d.b(a2, d)) + 'h';
            String str2 = String.valueOf(d.b(a2 - a3, d)) + 'h';
            if (a3 > 0) {
                str = String.valueOf(str2) + '~' + str;
            } else if (a3 < 0) {
                str = String.valueOf(str) + '~' + str2;
            }
            long d2 = this.h.d(0);
            long d3 = this.h.d(1);
            if (i == -3 || (MainService.a() & d) == 0) {
                z = true;
            }
            ra.a(str, d, false, 536870912, d2, d3, z, this.h.p());
            MainService.instance.a(1);
            Tools.a(this.i);
        } catch (NumberFormatException e) {
            re.a(e, this.h.o());
            return;
        } catch (Throwable th) {
            la.c("Exception on start search", th);
        }
        Tools.b(this.i);
    }

    @Override // android.ext.re, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.h != null) {
            j = this.h.j();
            a = this.h.i();
            this.b = this.h.f();
        }
        super.onDismiss(dialogInterface);
    }
}
