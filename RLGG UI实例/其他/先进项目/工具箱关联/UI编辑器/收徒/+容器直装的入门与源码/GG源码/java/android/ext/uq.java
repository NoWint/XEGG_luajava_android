package android.ext;

import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class uq {
    final CheckBox c;
    final TextView d;
    final TextView e;
    final TextView f;
    final TextView g;
    final TextView h;
    final TextView i;
    final TextView j;
    final TextView k;
    final TextView l;
    final View m;
    final int n = MainService.context.getResources().getConfiguration().orientation;
    int o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public uq(View view, ur urVar) {
        this.c = (CheckBox) view.findViewById(R.id.ch);
        this.d = (TextView) view.findViewById(R.id.address);
        this.e = (TextView) view.findViewById(R.id.value_hex);
        this.f = (TextView) view.findViewById(R.id.value_rhex);
        this.g = (TextView) view.findViewById(R.id.value_string);
        this.h = (TextView) view.findViewById(R.id.value_java);
        this.i = (TextView) view.findViewById(R.id.value_arm);
        this.j = (TextView) view.findViewById(R.id.value_thumb);
        this.k = (TextView) view.findViewById(R.id.value_arm8);
        this.l = (TextView) view.findViewById(R.id.addr_item_region);
        this.m = view;
        this.m.setTag(this);
        this.c.setOnCheckedChangeListener(urVar);
        this.c.setOnLongClickListener(urVar);
        this.c.setTag(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.n != MainService.context.getResources().getConfiguration().orientation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z, int i) {
        int i2;
        View view = this.m;
        if (z) {
            i2 = -2139864428;
        } else {
            i2 = this.o == i ? -2137746366 : 0;
        }
        view.setBackgroundColor(i2);
    }
}
