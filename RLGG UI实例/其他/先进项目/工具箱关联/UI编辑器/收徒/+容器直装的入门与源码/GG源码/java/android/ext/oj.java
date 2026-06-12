package android.ext;

import android.content.DialogInterface;
import android.view.View;
import catch_.me_.if_.you_.can_.R;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class oj extends of {
    final /* synthetic */ MainService d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oj(MainService mainService) {
        super(mainService, R.string.selected_as_search_result, R.drawable.ic_search_selected_white_24dp);
        this.d = mainService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oj(MainService mainService, int i, int i2) {
        super(mainService, i, i2);
        this.d = mainService;
    }

    @Override // android.ext.of, android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.d.aj == 0) {
            a();
        } else {
            i.a(i.c().setMessage(qk.a((int) R.string.clear_results_prompt)).setPositiveButton(qk.a((int) R.string.yes), new ok(this)).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.ext.of
    public void a(List list, Object obj) {
        qm qmVar;
        if (list.size() == 0) {
            this.d.a((byte) 0);
        } else if (this.d.S()) {
            if (this.d.aj != 0) {
                this.d.a((byte) 0);
            }
            this.d.ak = false;
            this.d.k.l((byte) 0);
            this.d.b((byte) 0);
            this.d.al = false;
            this.d.k.a((byte) 0, list);
            this.d.o.setCurrentTab(1);
            if (((obj instanceof android.c.a) || (obj instanceof android.c.e)) && (qmVar = this.d.h) != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("\nlocal t = ");
                if (obj instanceof android.c.a) {
                    ek.a(qmVar, true);
                } else {
                    sb.append("gg.getListItems()\n");
                }
                sb.append("gg.loadResults(t)\n");
                sb.append("t = nil\n");
            }
        } else {
            throw new NumberFormatException(qk.a((int) R.string.busy_dialog_fail));
        }
    }
}
