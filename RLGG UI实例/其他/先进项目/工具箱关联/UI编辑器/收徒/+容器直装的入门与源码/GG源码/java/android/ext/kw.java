package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: src */
/* loaded from: classes.dex */
class kw implements DialogInterface.OnClickListener {
    final /* synthetic */ ItemContextMenu a;
    private final /* synthetic */ List b;
    private final /* synthetic */ ArrayList c;
    private final /* synthetic */ d d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kw(ItemContextMenu itemContextMenu, List list, ArrayList arrayList, d dVar) {
        this.a = itemContextMenu;
        this.b = list;
        this.c = arrayList;
        this.d = dVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i < 0 || i >= this.b.size()) {
            la.c("Unknown index in menu: " + i + " for " + this.b.size());
            return;
        }
        switch (((Integer) this.b.get(i)).intValue()) {
            case R.drawable.ic_calculator_white_24dp /* 2130837520 */:
                new OffsetCalculator(a()).a((String) this.c.get(i));
                break;
            case R.drawable.ic_code_braces_white_24dp /* 2130837525 */:
                w.a((String) this.c.get(i));
                break;
            case R.drawable.ic_content_copy_white_24dp /* 2130837526 */:
                Tools.a((String) this.c.get(i));
                break;
            case R.drawable.ic_cursor_mover_white_24dp /* 2130837529 */:
                b.a((String) this.c.get(i));
                break;
            case R.drawable.ic_forward_white_24dp /* 2130837546 */:
                MainService.instance.a(a(), (String) this.c.get(i), String.valueOf(Tools.c((int) R.string.from_context)) + ": (" + this.d + ')');
                break;
            case R.drawable.ic_pointer_white_24dp /* 2130837568 */:
                new qe().a((String) this.c.get(i));
                break;
            case R.drawable.ic_search_nearby_white_24dp /* 2130837574 */:
                MainService.instance.Q.b((String) this.c.get(i));
                break;
            default:
                la.c("Unknown icon in menu: " + Integer.toHexString(((Integer) this.b.get(i)).intValue()));
                break;
        }
        if (dialogInterface != null) {
            Tools.a(dialogInterface);
        }
    }

    private Long a() {
        int i;
        i = this.a.b;
        if (i != 3 || this.d == null) {
            return null;
        }
        return Long.valueOf(this.d.b);
    }
}
