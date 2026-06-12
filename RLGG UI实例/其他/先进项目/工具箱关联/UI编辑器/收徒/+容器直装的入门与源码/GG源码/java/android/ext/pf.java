package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.widget.ListView;
import catch_.me_.if_.you_.can_.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: src */
/* loaded from: classes.dex */
public class pf implements DialogInterface.OnClickListener {
    private int a = 0;
    private final List b = new ArrayList();

    public boolean a(long j, CharSequence charSequence) {
        return a(j, charSequence, 0);
    }

    public boolean a(long j, CharSequence charSequence, int i) {
        int size = this.b.size();
        if (this.a < size) {
            while (true) {
                size--;
                if (size < this.a) {
                    break;
                }
                this.b.remove(size);
            }
            size = this.a;
        }
        if (size >= 100) {
            this.a--;
            this.b.remove(0);
        }
        this.a++;
        qh qhVar = MainService.instance.ap;
        return this.b.add(new pg(j, charSequence, qhVar != null ? qhVar.c : null, i));
    }

    public long a() {
        int size = this.b.size();
        if (this.a <= 0 || this.a > size) {
            return 0L;
        }
        return ((pg) this.b.get(this.a - 1)).a;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        pg pgVar = (pg) this.b.get(i);
        if (pgVar != null) {
            this.a = i + 1;
            MainService.instance.a(pgVar.a, pgVar.c);
        }
        if (dialogInterface != null) {
            Tools.a(dialogInterface);
        }
    }

    public void b() {
        int size = this.b.size();
        if (size == 0) {
            Tools.a((int) R.string.history_empty);
            return;
        }
        CharSequence[] charSequenceArr = new CharSequence[size];
        Drawable[] drawableArr = new Drawable[size];
        HashMap hashMap = new HashMap();
        for (int i = 0; i < size; i++) {
            pg pgVar = (pg) this.b.get(i);
            charSequenceArr[i] = pgVar.a();
            if (pgVar.b != null) {
                Drawable drawable = (Drawable) hashMap.get(pgVar.b);
                if (drawable == null) {
                    try {
                        drawable = Tools.a(Tools.a(Tools.b(Tools.j(pgVar.b)), Tools.b()));
                    } catch (Throwable th) {
                        la.c("Failed load icon for " + pgVar.b, th);
                    }
                    hashMap.put(pgVar.b, drawable);
                }
                drawableArr[i] = drawable;
            }
        }
        AlertDialog create = i.a(Tools.o()).setCustomTitle(Tools.d((int) R.string.goto_address)).setSingleChoiceItems(charSequenceArr, this.a - 1, this).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).create();
        ListView listView = create.getListView();
        if (listView != null) {
            Tools.a(listView, charSequenceArr, drawableArr, 48, (int) R.style.SmallText);
        }
        i.c(create);
    }

    public void c() {
        if (this.b.size() == 0) {
            Tools.a((int) R.string.history_empty);
        } else if (this.a < 2) {
            Tools.a((int) R.string.no_previous, 0);
        } else {
            onClick(null, this.a - 2);
        }
    }

    public void d() {
        int size = this.b.size();
        if (size == 0) {
            Tools.a((int) R.string.history_empty);
        } else if (this.a >= size) {
            Tools.a((int) R.string.no_next, 0);
        } else {
            onClick(null, this.a);
        }
    }
}
