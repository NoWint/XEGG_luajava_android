package android.ext;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.lang.ref.WeakReference;

/* compiled from: src */
/* loaded from: classes.dex */
public class TimersEditor implements DialogInterface.OnClickListener, View.OnClickListener, CompoundButton.OnCheckedChangeListener {
    private static final int[] a = {R.id.app, R.id.java, R.id.system, R.id.other};
    private final boolean[] b;
    private final boolean[] d;
    private final int e;
    private final String f;
    private final String g;
    private final boolean[] h;
    private final int i;
    private WeakReference j = new WeakReference(null);
    private final boolean[] c = new boolean[4];

    public TimersEditor(String str, String str2, int i, boolean[] zArr, int i2) {
        this.f = str;
        this.g = str2;
        this.e = i;
        this.h = zArr;
        this.i = i2;
        this.b = new boolean[i];
        this.d = new boolean[i * 4 * 3];
        la.a(String.valueOf(str) + ':');
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View a(View view, ViewGroup viewGroup) {
        int i = 0;
        if (view == null || view.getId() != R.layout.timer_header) {
            view = android.fix.i.a(R.layout.timer_header, viewGroup, false);
            view.setId(R.layout.timer_header);
            while (true) {
                int i2 = i;
                if (i2 >= 4) {
                    break;
                }
                TextView textView = (TextView) view.findViewById(a[i2]);
                textView.setTag(Integer.valueOf(i2));
                textView.setOnClickListener(this);
                textView.setPaintFlags(textView.getPaintFlags() | 8);
                textView.setFocusable(true);
                i = i2 + 1;
            }
        }
        return view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View a(int i, View view, ViewGroup viewGroup) {
        android.fix.i a2 = android.fix.i.a();
        int i2 = i - 1;
        if (view == null || view.getId() != R.layout.timer_row) {
            view = a2.inflate(R.layout.timer_row, viewGroup, false);
            view.setId(R.layout.timer_row);
            View[] viewArr = new View[5];
            for (int i3 = 0; i3 < 4; i3++) {
                CheckBox checkBox = (CheckBox) view.findViewById(a[i3]);
                checkBox.setFocusable(true);
                checkBox.setOnCheckedChangeListener(this);
                viewArr[i3] = checkBox;
            }
            TextView textView = (TextView) view.findViewById(R.id.name);
            textView.setPaintFlags(textView.getPaintFlags() | 8);
            textView.setOnClickListener(this);
            textView.setFocusable(true);
            viewArr[4] = textView;
            view.setTag(viewArr);
        }
        View[] viewArr2 = (View[]) view.getTag();
        for (int i4 = 0; i4 < 4; i4++) {
            CheckBox checkBox2 = (CheckBox) viewArr2[i4];
            int i5 = (i2 * 4) + i4;
            checkBox2.setTag(null);
            checkBox2.setChecked(this.d[(i5 * 3) + 2]);
            checkBox2.setTag(Integer.valueOf(i5));
            checkBox2.setBackgroundColor(this.d[(i5 * 3) + 1] ? -16755456 : -11206656);
        }
        TextView textView2 = (TextView) viewArr2[4];
        textView2.setTag(Integer.valueOf(i2));
        textView2.setText(Integer.toString(i2 + 1));
        return view;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Object tag;
        if (compoundButton != null && (tag = compoundButton.getTag()) != null && (tag instanceof Integer)) {
            this.d[(((Integer) tag).intValue() * 3) + 2] = z;
        }
    }

    private View d() {
        boolean[] zArr = this.d;
        for (int i = 0; i < this.e * 4; i++) {
            zArr[(i * 3) + 2] = zArr[(i * 3) + 0];
        }
        View a2 = android.fix.i.a((int) R.layout.timer_table, (ViewGroup) null);
        ListView listView = (ListView) a2;
        new FastScrollerFix(listView);
        listView.setItemsCanFocus(true);
        se seVar = new se(this);
        listView.setAdapter((ListAdapter) seVar);
        this.j = new WeakReference(seVar);
        return a2;
    }

    private void e() {
        BaseAdapter baseAdapter = (BaseAdapter) this.j.get();
        if (baseAdapter != null) {
            baseAdapter.notifyDataSetChanged();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i = 0;
        switch (view.getId()) {
            case R.id.name /* 2131427409 */:
                int intValue = ((Integer) view.getTag()).intValue();
                this.b[intValue] = !this.b[intValue];
                while (i < 4) {
                    this.d[(((intValue * 4) + i) * 3) + 2] = this.b[intValue];
                    i++;
                }
                break;
            default:
                int intValue2 = ((Integer) view.getTag()).intValue();
                this.c[intValue2] = this.c[intValue2] ? false : true;
                while (i < this.e) {
                    this.d[(((i * 4) + intValue2) * 3) + 2] = this.c[intValue2];
                    i++;
                }
                break;
        }
        e();
    }

    public void a() {
        b();
        MainService.instance.k.b(this.i);
        i.c(i.c().setView(Tools.d(d())).setNeutralButton(qk.a((int) R.string.reset_button), this).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).setPositiveButton(qk.a((int) R.string.save), this).create());
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        boolean[] zArr = this.d;
        if (i == -3) {
            boolean[] zArr2 = this.h;
            for (int i2 = 0; i2 < this.e * 4; i2++) {
                zArr[(i2 * 3) + 2] = zArr2[i2];
            }
        }
        for (int i3 = 0; i3 < this.e * 4; i3++) {
            zArr[(i3 * 3) + 0] = zArr[(i3 * 3) + 2];
        }
        f();
        MainService.instance.k.a(this.i);
    }

    private void f() {
        qh qhVar;
        if (MainService.instance.ap != null) {
            boolean[] zArr = this.d;
            qw qwVar = new qw();
            String str = String.valueOf(this.g) + '-' + qhVar.c + '-';
            boolean[] zArr2 = this.h;
            for (int i = 0; i < this.e * 4; i++) {
                qwVar.a(String.valueOf(str) + i, zArr[(i * 3) + 0], zArr2[i]);
            }
            qwVar.commit();
        }
    }

    public void b() {
        qh qhVar;
        boolean z;
        if (MainService.instance.ap != null) {
            boolean[] zArr = this.d;
            SharedPreferences s = Tools.s();
            String str = String.valueOf(this.g) + '-' + qhVar.c + '-';
            boolean[] zArr2 = this.h;
            for (int i = 0; i < this.e * 4; i++) {
                try {
                    zArr[(i * 3) + 0] = s.getBoolean(String.valueOf(str) + i, zArr2[i]);
                } catch (Throwable th) {
                    int i2 = s.getInt(String.valueOf(str) + i, zArr2[i] ? 1 : 0);
                    int i3 = (i * 3) + 0;
                    if (i2 == 0 || i2 == 1) {
                        z = i2 != 0;
                    } else {
                        z = zArr2[i];
                    }
                    zArr[i3] = z;
                }
            }
            c();
        }
    }

    public boolean[] c() {
        boolean[] zArr = this.d;
        boolean[] zArr2 = new boolean[this.e * 4];
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.e * 4; i++) {
            if (i % 4 == 0) {
                sb.append(' ');
                sb.append((i / 4) + 1);
                sb.append(':');
            }
            if (zArr[(i * 3) + 0]) {
                zArr2[i] = true;
                sb.append('1');
            } else {
                sb.append('0');
            }
        }
        la.a(String.valueOf(this.f) + " get:" + sb.toString());
        return zArr2;
    }

    public void a(boolean[] zArr) {
        boolean[] zArr2 = this.d;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.e * 4; i++) {
            if (i % 4 == 0) {
                sb.append(' ');
                sb.append((i / 4) + 1);
                sb.append(':');
            }
            boolean z = zArr[i];
            zArr2[(i * 3) + 1] = z;
            if (z) {
                sb.append('1');
            } else {
                sb.append('0');
            }
        }
        la.a(String.valueOf(this.f) + " usage:" + sb.toString());
        e();
    }
}
