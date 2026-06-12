package android.ext;

import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: src */
/* loaded from: classes.dex */
public class SavedListAdapter extends BaseAdapterIndexer implements uu, ListAdapter {
    static volatile int a = 0;
    private final h c = new h();
    private final android.c.e b = new android.c.e();

    public SavedListAdapter() {
        a = Tools.s().getInt("saved-list-format", 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        String str;
        TextView textView = MainService.instance.w;
        if (textView != null) {
            if (a == 0) {
                str = "   ";
            } else {
                str = Integer.bitCount(a) == 1 ? "  " : "";
            }
            textView.setText(Tools.a("F: ", ow.c(a), str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i) {
        a = i;
        new qw().a("saved-list-format", i, 0).commit();
        a();
        MainService.instance.an.notifyDataSetChanged();
    }

    public android.c.e b() {
        return this.b;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.b.b();
    }

    @Override // android.widget.Adapter
    /* renamed from: b */
    public qx getItem(int i) {
        return (qx) this.b.c(i);
    }

    public qx a(long j) {
        qx qxVar = (qx) this.b.a(j);
        if (qxVar == null) {
            return null;
        }
        return qxVar;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        qx qxVar = (qx) this.b.c(i);
        if (qxVar == null) {
            return 0L;
        }
        return qxVar.f();
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        uq uqVar = (uq) compoundButton.getTag();
        if (uqVar != null) {
            try {
                this.b.a(uqVar.o, z);
                MainService.instance.E();
            } catch (IndexOutOfBoundsException e) {
                la.c("ArrayAdapter onCheckedChanged failed", e);
            }
            uqVar.a(z, -2);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.address /* 2131427401 */:
                uq uqVar = (uq) view.getTag();
                if (uqVar != null) {
                    Tools.f(uqVar.c);
                    return;
                }
                return;
            case R.id.addr_item_remove /* 2131427446 */:
                qx qxVar = (qx) view.getTag();
                if (qxVar != null) {
                    try {
                        i.a(i.c().setCustomTitle(Tools.i(qxVar.t())).setMessage(qk.a((int) R.string.delete_prompt)).setPositiveButton(qk.a((int) R.string.yes), new qy(this, qxVar)).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null));
                        return;
                    } catch (IndexOutOfBoundsException e) {
                        la.c("SavedListAdapter onClick Failed", e);
                        return;
                    }
                }
                return;
            case R.id.freeze /* 2131427585 */:
                qx a2 = ((qx) view.getTag()).a();
                a2.f = !a2.f;
                a(a2);
                if (view instanceof ImageButton) {
                    ((ImageButton) view).setImageResource(a2.u());
                }
                MainService.instance.k.m();
                return;
            default:
                return;
        }
    }

    private View a(ViewGroup viewGroup) {
        View a2 = android.fix.i.a(R.layout.service_saved_item, viewGroup, false);
        new qz(a2, this);
        return a2;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        qz qzVar;
        boolean d;
        qx qxVar;
        if (view == null) {
            view = a(viewGroup);
        }
        qz qzVar2 = (qz) view.getTag();
        if (qzVar2.a()) {
            view = a(viewGroup);
            qzVar = (qz) view.getTag();
        } else {
            qzVar = qzVar2;
        }
        boolean z = (Config.q & (1 << (Tools.t() + 2))) != 0;
        if (i >= this.b.b()) {
            d = false;
            qxVar = new qx(0L, 0L, 4, "null for " + i);
        } else {
            d = this.b.d(i);
            qxVar = (qx) this.b.c(i);
        }
        qzVar.o = i;
        a(qzVar.a, z);
        qzVar.b.getLayoutParams().width = z ? -2 : -1;
        qzVar.q.setOrientation(z ? 0 : 1);
        a(qzVar.s, z);
        qzVar.c.getLayoutParams().height = z ? -2 : Tools.b();
        qzVar.a.setTag(qxVar);
        if (qzVar.c.isChecked() != d) {
            qzVar.c.setOnCheckedChangeListener(null);
            qzVar.c.setChecked(d);
        }
        qzVar.c.setOnCheckedChangeListener(this);
        qzVar.r.setTag(qxVar);
        qzVar.s.setTag(qxVar);
        qzVar.a(d, -2);
        int o = qxVar.o();
        qzVar.p.setTextColor(o);
        qzVar.r.setTextColor(o);
        String h = qxVar.h();
        h hVar = this.c;
        MainService.instance.ao.a(qxVar.b, qxVar.d, hVar);
        if (hVar.b) {
            h = String.valueOf(h) + " (" + d.b(qxVar.b, hVar.a, qxVar.d) + ')';
        }
        qzVar.b.setText(qxVar.t());
        qzVar.r.setText(qxVar.l());
        qzVar.l.setText(RegionList.a(qxVar.b));
        qzVar.d.setText(String.valueOf(qxVar.g()) + ": ");
        qzVar.p.setText(h);
        qzVar.a.setImageResource(qxVar.u());
        ow.a(qzVar, qxVar.b, qxVar.c, a, true, qxVar.d());
        return view;
    }

    public static void a(ImageView imageView, boolean z) {
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        int i = z ? 24 : 48;
        int d = Config.d();
        if (d > i) {
            i = d;
        }
        int a2 = (int) Tools.a(i);
        layoutParams.height = a2;
        Config.a(imageView, a2, a2, d);
    }

    public void a(qx qxVar) {
        a(qxVar, (byte) 0, true);
    }

    public void a(qx qxVar, byte b, boolean z) {
        ex exVar = MainService.instance.k;
        if ((qxVar.d & 1073741824) == 1073741824) {
            qxVar = qxVar.a();
        }
        if (qxVar.f) {
            qxVar.d &= -1073741825;
            exVar.a(qxVar);
        } else if ((qxVar.d & 1073741824) == 1073741824) {
            qxVar.d &= -1073741825;
        }
        qx qxVar2 = (qx) this.b.a(qxVar.f(), qxVar, b);
        if (qxVar2 != null && qxVar2.f && !qxVar.f) {
            exVar.b(qxVar);
        }
        if (z) {
            notifyDataSetChanged();
        }
    }

    public void b(long j) {
        int c = this.b.c(j);
        if (c >= 0) {
            c(c);
        }
    }

    public void b(qx qxVar) {
        b(qxVar.f());
    }

    public void a(long[] jArr, int i) {
        android.c.e eVar = this.b;
        ex exVar = MainService.instance.k;
        for (int i2 = 0; i2 < i; i2++) {
            qx qxVar = (qx) eVar.b(jArr[i2]);
            if (qxVar != null && qxVar.f) {
                exVar.b(qxVar);
            }
        }
        exVar.m();
        if (eVar.b() == 0) {
            e();
        }
        notifyDataSetChanged();
    }

    public void a(List list) {
        qx qxVar;
        android.c.e eVar = this.b;
        ex exVar = MainService.instance.k;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            qx qxVar2 = (qx) it.next();
            if (qxVar2 != null && (qxVar = (qx) eVar.b(qxVar2.f())) != null && qxVar.f) {
                exVar.b(qxVar);
            }
        }
        exVar.m();
        if (eVar.b() == 0) {
            e();
        }
        notifyDataSetChanged();
    }

    public void c(int i) {
        qx qxVar = (qx) this.b.a(i);
        if (qxVar != null) {
            if (qxVar.f) {
                ex exVar = MainService.instance.k;
                exVar.b(qxVar);
                exVar.m();
            }
            if (this.b.b() == 0) {
                e();
            }
            notifyDataSetChanged();
        }
    }

    public void c() {
        MainService.instance.k.r();
        e();
        notifyDataSetChanged();
    }

    private void e() {
        this.b.c();
        MainService.instance.k.e.b();
    }

    public void a(bk bkVar) {
        qx qxVar;
        bkVar.g();
        boolean z = false;
        ListView listView = MainService.instance.I;
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        int lastVisiblePosition = listView.getLastVisiblePosition();
        android.c.e eVar = this.b;
        while (bkVar.b() != 0) {
            try {
                long c = bkVar.c();
                long d = bkVar.d();
                int c2 = eVar.c(c);
                if (c2 >= 0 && (qxVar = (qx) eVar.c(c2)) != null && qxVar.c != d) {
                    if (firstVisiblePosition <= c2 && c2 <= lastVisiblePosition) {
                        z = true;
                    }
                    qxVar.c = d;
                }
            } catch (IOException e) {
                la.c("???", e);
            }
        }
        if (z) {
            notifyDataSetChanged();
        }
    }

    public void d() {
        ex exVar = MainService.instance.k;
        exVar.m();
        android.c.e eVar = this.b;
        if (eVar.b() != 0) {
            try {
                ArrayList arrayList = new ArrayList(eVar.b());
                for (int i = 0; i < eVar.b(); i++) {
                    try {
                        qx qxVar = (qx) eVar.c(i);
                        if (qxVar != null) {
                            arrayList.add(qxVar);
                        }
                    } catch (IndexOutOfBoundsException e) {
                        la.b("list changed", e);
                    }
                }
                if (arrayList.size() != 0) {
                    int size = arrayList.size();
                    int[] iArr = new int[size];
                    long[] jArr = new long[size];
                    for (int i2 = 0; i2 < size; i2++) {
                        d dVar = (d) arrayList.get(i2);
                        iArr[i2] = dVar.d;
                        jArr[i2] = dVar.b;
                    }
                    exVar.a(iArr, jArr);
                }
            } catch (OutOfMemoryError e2) {
                la.b("OOM in reloadData", e2);
            }
        }
    }
}
