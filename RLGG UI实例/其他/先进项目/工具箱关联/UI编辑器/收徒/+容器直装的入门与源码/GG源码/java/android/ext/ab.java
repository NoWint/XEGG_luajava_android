package android.ext;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ab extends ArrayAdapter {
    final /* synthetic */ z a;
    private final /* synthetic */ List b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ab(z zVar, Context context, List list, List list2) {
        super(context, list);
        this.a = zVar;
        this.b = list2;
    }

    @Override // android.ext.ArrayAdapter, android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        TextView textView = (TextView) view2.findViewById(16908308);
        if (textView != null) {
            qh qhVar = (qh) this.b.get(i);
            if (qhVar != null) {
                try {
                    textView.setText(qhVar.c());
                } catch (Throwable th) {
                    la.a(th);
                }
                textView.setTag(qhVar);
                qhVar.a(textView);
            }
            Tools.a(textView, (int) R.style.ListItemText);
        }
        return view2;
    }
}
