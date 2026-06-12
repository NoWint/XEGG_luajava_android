package android.ext;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.ListIterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class iy extends BaseAdapter implements View.OnClickListener, View.OnFocusChangeListener, View.OnLongClickListener {
    static boolean a = false;
    final ArrayList c;
    final Context d;
    AlertDialog b = null;
    private boolean e = false;

    public iy(Context context, int i) {
        this.d = context;
        iw.c();
        ArrayList arrayList = new ArrayList();
        this.c = arrayList;
        int i2 = iw.b;
        Iterator it = iw.a.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            je jeVar = (je) it.next();
            if (jeVar != null && (jeVar.b & i) != 0) {
                arrayList.add(new jc(jeVar, i3 < i2));
            }
            i3++;
        }
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View inflate;
        if (view == null || !(view.getTag() instanceof jd)) {
            inflate = android.fix.i.from(this.d).inflate(R.layout.history_item, viewGroup, false);
            jd jdVar = new jd();
            jdVar.a = (TextView) inflate.findViewById(R.id.value);
            jdVar.b = (TextView) inflate.findViewById(R.id.note);
            jdVar.c = (EditText) inflate.findViewById(R.id.note_edit);
            jdVar.c.addTextChangedListener(new iz(this, jdVar));
            Tools.a(jdVar.c, this);
            jdVar.d = Config.a((ImageView) inflate.findViewById(R.id.pin));
            jdVar.d.setOnClickListener(this);
            jdVar.d.setOnLongClickListener(this);
            jdVar.d.setTag(jdVar);
            jdVar.e = Config.a((ImageView) inflate.findViewById(R.id.delete));
            jdVar.e.setOnClickListener(this);
            jdVar.e.setOnLongClickListener(this);
            jdVar.e.setTag(jdVar);
            jdVar.f = inflate;
            inflate.setTag(jdVar);
            inflate.setOnLongClickListener(this);
            inflate.setOnClickListener(this);
        } else {
            inflate = view;
        }
        jd jdVar2 = (jd) inflate.getTag();
        jc jcVar = (jc) this.c.get(i);
        jdVar2.h = jcVar;
        jdVar2.a.setText(jcVar.a.a);
        String str = jcVar.a.d;
        jdVar2.b.setText(str);
        jdVar2.c.setText(a(str));
        jdVar2.g = i;
        jdVar2.b.setVisibility(!a ? 0 : 8);
        int i2 = a ? 0 : 8;
        jdVar2.c.setVisibility(i2);
        jdVar2.e.setVisibility(i2);
        ((ViewGroup) inflate).setDescendantFocusability(a ? 131072 : 393216);
        a(jdVar2);
        return inflate;
    }

    private String a(String str) {
        String trim = str.trim();
        return "...".equals(trim) ? "" : trim;
    }

    private void a(jd jdVar) {
        if (jdVar.h.b) {
            a(jdVar, R.drawable.ic_pin_off_white_24dp, -2139864428);
        } else {
            a(jdVar, R.drawable.ic_pin_white_24dp, 0);
        }
    }

    private void a(jd jdVar, int i, int i2) {
        jdVar.d.setImageResource(i);
        jdVar.f.setBackgroundColor(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.c.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.c.size();
    }

    private void a(View view, boolean z) {
        Window window;
        if (this.e != z && this.b != null && (window = this.b.getWindow()) != null) {
            Tools.a(window, view, z);
            this.e = z;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AdapterView.OnItemClickListener onItemClickListener;
        int i = 0;
        if (view != null) {
            int id = view.getId();
            if (id == R.id.custom_title) {
                a = !a;
                if (!a) {
                    a(view, false);
                }
                notifyDataSetChanged();
                return;
            }
            jd jdVar = (jd) view.getTag();
            if (jdVar != null) {
                int i2 = jdVar.g;
                switch (id) {
                    case R.id.pin /* 2131427354 */:
                        boolean z = jdVar.h.b ? false : true;
                        jdVar.h.b = z;
                        a(jdVar);
                        iw.a(jdVar.h.a.a, z ? (byte) 1 : (byte) 2, jdVar.h.a.b);
                        return;
                    case R.id.delete /* 2131427358 */:
                        je jeVar = jdVar.h.a;
                        ListIterator listIterator = iw.a.listIterator();
                        while (true) {
                            int i3 = i;
                            if (listIterator.hasNext()) {
                                if (((je) listIterator.next()).equals(jeVar)) {
                                    listIterator.remove();
                                    if (i3 < iw.b) {
                                        iw.b--;
                                    }
                                    this.c.remove(jdVar.h);
                                    notifyDataSetChanged();
                                    iw.b();
                                    return;
                                }
                                i = i3 + 1;
                            } else {
                                return;
                            }
                        }
                    default:
                        ListView k = Tools.k(view);
                        if (k != null && (onItemClickListener = k.getOnItemClickListener()) != null) {
                            onItemClickListener.onItemClick(k, view, i2, getItemId(i2));
                            return;
                        }
                        return;
                }
            }
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        jd jdVar;
        if (a || view == null) {
            return false;
        }
        while (true) {
            if (view == null) {
                jdVar = null;
                break;
            }
            Object tag = view.getTag();
            if (tag instanceof jd) {
                jdVar = (jd) tag;
                break;
            }
            ViewParent parent = view.getParent();
            if (!(parent instanceof View)) {
                jdVar = null;
                break;
            }
            view = (View) parent;
        }
        if (jdVar == null) {
            return false;
        }
        a(jdVar.h.a, view.getContext());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(je jeVar, String str, boolean z) {
        je jeVar2;
        Iterator it = iw.a.iterator();
        while (true) {
            if (!it.hasNext()) {
                jeVar2 = jeVar;
                break;
            }
            jeVar2 = (je) it.next();
            if (jeVar.equals(jeVar2)) {
                break;
            }
        }
        String trim = str.trim();
        if (trim.length() == 0) {
            trim = "...";
        }
        if (!trim.equals(jeVar2.d)) {
            jeVar2.d = trim;
            if (jeVar != jeVar2) {
                jeVar.d = trim;
            }
            if (z) {
                notifyDataSetChanged();
            }
            iw.b();
        }
    }

    private void a(je jeVar, Context context) {
        EditText editText = new EditText(context);
        editText.setText(a(jeVar.d));
        AlertDialog create = i.a(context).setCustomTitle(Tools.i(jeVar.a)).setView(editText).setPositiveButton(qk.a((int) R.string.ok), new ja(this, jeVar, editText)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).create();
        i.a(create, new jb(this, editText));
        i.a(create, editText);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (!((!z) & a)) {
            a(view, a & z);
        }
    }
}
