package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class ot implements DialogInterface.OnClickListener {
    final /* synthetic */ os a;
    private final /* synthetic */ Object b;
    private final /* synthetic */ int c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ot(os osVar, Object obj, int i) {
        this.a = osVar;
        this.b = obj;
        this.c = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        MainService mainService;
        MainService mainService2;
        MainService mainService3;
        MainService mainService4;
        MainService mainService5;
        mainService = this.a.a;
        ow owVar = mainService.K;
        boolean[] zArr = (boolean[]) this.b;
        int length = zArr.length - 1;
        for (int i2 = 1; i2 < length; i2++) {
            if (zArr[i2]) {
                long a = owVar.a(i2);
                qx qxVar = new qx(a, 0L, i);
                if (!qxVar.q()) {
                    qxVar.d = d.a(qxVar.b, true);
                }
                mainService4 = this.a.a;
                qx a2 = mainService4.an.a(a);
                if (a2 == null || a2.d != qxVar.d) {
                    mainService5 = this.a.a;
                    mainService5.an.a(qxVar, (byte) 0, false);
                }
            }
        }
        mainService2 = this.a.a;
        mainService2.an.notifyDataSetChanged();
        mainService3 = this.a.a;
        mainService3.an.d();
        Tools.b(Tools.a(qk.a((int) R.string.items_added), Integer.valueOf(this.c)));
    }
}
