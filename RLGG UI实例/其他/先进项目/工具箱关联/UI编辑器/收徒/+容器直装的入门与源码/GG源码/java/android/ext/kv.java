package android.ext;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.util.List;

/* compiled from: src */
/* loaded from: classes.dex */
class kv extends ArrayAdapter {
    final /* synthetic */ ItemContextMenu a;
    private final /* synthetic */ List b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kv(ItemContextMenu itemContextMenu, Context context, List list, List list2) {
        super(context, list);
        this.a = itemContextMenu;
        this.b = list2;
    }

    @Override // android.ext.ArrayAdapter, android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        Drawable b = Tools.b(((Integer) this.b.get(i)).intValue());
        TextView textView = (TextView) view2.findViewById(16908308);
        if (textView != null) {
            Tools.a(textView, (int) R.style.ListItemText);
            Tools.a(textView, b, Config.d());
        }
        return view2;
    }
}
