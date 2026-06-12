package android.ext;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.util.Collection;
import java.util.List;

/* compiled from: src */
/* loaded from: classes.dex */
public class ArrayAdapter extends android.widget.ArrayAdapter {
    private android.fix.i a;

    public ArrayAdapter(Context context, int i, int i2, List list) {
        super(context, i, i2, list);
        this.a = null;
    }

    public ArrayAdapter(Context context, int i, int i2, Object[] objArr) {
        super(context, i, i2, objArr);
        this.a = null;
    }

    public ArrayAdapter(Context context, int i, int i2) {
        super(context, i, i2);
        this.a = null;
    }

    public ArrayAdapter(Context context, int i, List list) {
        super(context, i, list);
        this.a = null;
    }

    public ArrayAdapter(Context context, int i, Object[] objArr) {
        super(context, i, objArr);
        this.a = null;
    }

    public ArrayAdapter(Context context, int i) {
        super(context, i);
        this.a = null;
    }

    public ArrayAdapter(Context context, List list) {
        super(context, 17367057, 16908308, list);
        this.a = null;
    }

    public ArrayAdapter(Context context, Object[] objArr) {
        super(context, 17367057, 16908308, objArr);
        this.a = null;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        TextView textView;
        Object obj;
        TextView textView2;
        Drawable d;
        try {
            view2 = super.getView(i, view, viewGroup);
            textView = null;
            obj = null;
        } catch (Throwable th) {
            la.c("Failed get view for ArrayAdapter", th);
            if (view == null) {
                if (this.a == null) {
                    this.a = android.fix.i.a();
                }
                view2 = this.a.inflate(R.layout.select_dialog_item, viewGroup, false);
            } else {
                view2 = view;
            }
            textView = (TextView) view2;
            Object item = getItem(i);
            if (item instanceof CharSequence) {
                textView.setText((CharSequence) item);
                obj = item;
            } else {
                textView.setText(item.toString());
                obj = item;
            }
        }
        if (obj == null && (view2 instanceof TextView)) {
            obj = getItem(i);
            textView2 = (TextView) view2;
        } else {
            textView2 = textView;
        }
        if ((obj instanceof pj) && textView2 != null && (d = ((pj) obj).d()) != null) {
            Tools.a(textView2, d, Config.d());
        }
        return view2;
    }

    @Override // android.widget.ArrayAdapter
    public void addAll(Collection collection) {
        if (Build.VERSION.SDK_INT < 11) {
            for (Object obj : collection) {
                add(obj);
            }
            return;
        }
        super.addAll(collection);
    }
}
