package android.ext;

import android.view.View;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class ip implements View.OnClickListener {
    final /* synthetic */ io a;
    private final /* synthetic */ RegionList b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ip(io ioVar, RegionList regionList) {
        this.a = ioVar;
        this.b = regionList;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        switch (view.getId()) {
            case R.id.cb /* 2131427616 */:
                i = 16;
                break;
            case R.id.ps /* 2131427617 */:
                i = 262144;
                break;
            case R.id.xa /* 2131427618 */:
                i = 16384;
                break;
            default:
                i = 8;
                break;
        }
        this.b.a(this.b, i);
    }
}
