package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import catch_.me_.if_.you_.can_.R;
import java.lang.ref.WeakReference;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class re extends pj implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnShowListener {
    protected String b;
    protected int c;
    protected String d;
    protected int g;
    protected Searcher h;
    protected WeakReference i;

    public abstract void a(DialogInterface dialogInterface, int i);

    public re(int i, int i2) {
        super(i, i2);
        this.b = "";
        this.c = 536870912;
        this.d = "FFFFFFFFFFFFFFFF";
        this.g = -1;
        this.i = new WeakReference(null);
    }

    public static String c(String str) {
        if (str != null) {
            String trim = str.trim();
            if (trim.length() > 0 && str.charAt(0) == '=') {
                String substring = trim.substring(1);
                if (substring.indexOf("return") < 0) {
                    substring = "return " + substring;
                }
                try {
                    la.a("oneLiner IN: '" + substring + "'");
                    String d = Script.d(substring);
                    la.a("oneLiner OUT: '" + d + "'");
                    return d;
                } catch (Throwable th) {
                    la.a("oneLiner ERR:", th);
                    NumberFormatException numberFormatException = new NumberFormatException(th.getMessage());
                    numberFormatException.initCause(th);
                    throw numberFormatException;
                }
            }
            return str;
        }
        return str;
    }

    public static void a(NumberFormatException numberFormatException, android.widget.EditText editText) {
        la.b("Error", numberFormatException);
        if (editText != null && (numberFormatException instanceof ak)) {
            i.a(i.c().setCustomTitle(Tools.d((int) R.string.error)).setMessage(numberFormatException.getMessage()).setPositiveButton(qk.a((int) R.string.yes), new rf(editText, (ak) numberFormatException)).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null));
        } else {
            i.a(i.c().setCustomTitle(Tools.d((int) R.string.error)).setMessage(numberFormatException.getMessage()).setPositiveButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
        }
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1 || i == -3) {
            this.g = i;
            onClick(null);
        } else if (i != -2) {
            try {
                this.h.a(i);
                a(dialogInterface, i);
                Tools.a(this.i);
            } catch (NumberFormatException e) {
                a(e, this.h.o());
                return;
            } catch (Throwable th) {
                la.c("Exception on start search", th);
            }
            Tools.b(this.i);
        }
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(dialogInterface, -1, (Object) (-1), (View.OnClickListener) this);
        Tools.a(dialogInterface, -3, (Object) (-3), (View.OnClickListener) this);
        if (this.h != null) {
            this.h.a();
        }
    }

    public void onDismiss(DialogInterface dialogInterface) {
        if (this.h != null) {
            this.h.m();
        }
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z = false;
        if (view != null && (view.getTag() instanceof Integer)) {
            this.g = ((Integer) view.getTag()).intValue();
        }
        boolean z2 = this instanceof ov;
        if (view != null && (view.getTag() instanceof pj)) {
            if (MainService.instance.k.y()) {
                if (this.h == null) {
                    this.h = new Searcher(z2 ? 3 : 0, 127);
                }
                this.h.a((CharSequence) qk.a(z2 ? R.string.mask_request : R.string.value_request));
                this.h.c(this.c);
                this.h.b(this.b);
                if (z2) {
                    this.h.c(this.d);
                    this.h.n().setTag(new kt(1));
                }
                this.h.b(127);
                AlertDialog.Builder negativeButton = i.c().setView(this.h.l()).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null);
                if (MainService.instance.aj == 0) {
                    negativeButton.setPositiveButton(qk.a((int) R.string.new_search), this);
                } else {
                    negativeButton.setPositiveButton(qk.a((int) R.string.refine), this).setNeutralButton(qk.a((int) R.string.new_search), this);
                }
                this.g = -1;
                AlertDialog create = negativeButton.create();
                i.a(create, (DialogInterface.OnDismissListener) this);
                i.a(create, (DialogInterface.OnShowListener) this);
                this.i = new WeakReference(create);
                i.a(create, this.h.o());
                return;
            }
            return;
        }
        int d = this.h.d();
        if (d == 0) {
            if (z2) {
                new tu(d.a(127, true), "0", qk.a((int) R.string.type_request), this);
                return;
            }
            try {
                String c = c(this.h.f());
                if (c.indexOf(59) != -1 || c.indexOf(126) != -1 || c.indexOf(88) != -1 || c.indexOf(120) != -1) {
                    z = true;
                }
                if (z) {
                }
                android.fix.j a = d.a(127, true);
                if (z) {
                    c = "0";
                }
                new tu(a, c, qk.a((int) R.string.type_request), this);
                return;
            } catch (NumberFormatException e) {
                a(e, this.h.o());
                return;
            }
        }
        onClick(null, d);
    }
}
