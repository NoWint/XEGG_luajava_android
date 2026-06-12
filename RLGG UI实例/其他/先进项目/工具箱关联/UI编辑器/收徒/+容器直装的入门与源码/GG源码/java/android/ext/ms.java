package android.ext;

import android.view.View;
import android.widget.ListAdapter;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ms implements View.OnClickListener {
    final /* synthetic */ MainService a;
    private ListAdapter[] b;
    private final /* synthetic */ pj[][] c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ms(MainService mainService, pj[][] pjVarArr) {
        this.a = mainService;
        this.c = pjVarArr;
        this.b = new ListAdapter[pjVarArr.length];
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int charAt;
        switch (this.a.X.getId()) {
            case R.id.search_page /* 2131427555 */:
                charAt = 'j' - "kwws=22jdphjxdugldq1qhw2grzqordg".charAt(11);
                break;
            case R.id.memory_editor_page /* 2131427559 */:
                charAt = 's' - "kwws=22jdphjxdugldq1qhw2khos2".charAt(20);
                break;
            case R.id.saved_page /* 2131427563 */:
                charAt = 'e' - "kwws=22jdphjxdugldq1qhw2grqdwh".charAt(13);
                break;
            default:
                return;
        }
        if (this.b[charAt] == null) {
            this.b[charAt] = new mt(this, MainService.context, this.c[charAt]);
        }
        i.a(i.a(Tools.o()).setAdapter(this.b[charAt], new mu(this, this.c, charAt)));
    }
}
