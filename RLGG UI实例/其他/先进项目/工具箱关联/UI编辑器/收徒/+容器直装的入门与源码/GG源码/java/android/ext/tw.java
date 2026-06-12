package android.ext;

import android.content.DialogInterface;
import android.view.View;
import android.widget.Button;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class tw implements DialogInterface.OnClickListener, View.OnClickListener {
    private final String[] a;
    private final String[] b;
    private android.widget.EditText c;

    public tw(String[] strArr, String[] strArr2) {
        this.a = strArr;
        this.b = strArr2;
        if (strArr.length != strArr2.length) {
            throw new IllegalArgumentException("Params must be with same length: " + strArr.length + " != " + strArr2.length);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == null) {
            la.b("Unkwnon view", new NullPointerException());
            return;
        }
        Object tag = view.getTag();
        if (!(tag instanceof android.widget.EditText)) {
            la.b("Unkwnon tag: " + tag, new IllegalArgumentException());
            return;
        }
        this.c = (android.widget.EditText) tag;
        i.a(i.c().setCustomTitle(Tools.d((int) R.string.typical_values)).setItems(this.a, this).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i < 0 || i >= this.b.length) {
            la.b("Bad index: " + i + " for " + this.b.length, new IndexOutOfBoundsException());
        } else if (this.c == null) {
            la.b("Unkwnon edit", new NullPointerException());
        } else {
            this.c.setText(this.b[i]);
        }
    }

    public static void a(Button button, android.widget.EditText editText) {
        String str;
        String str2;
        try {
            str = Tools.e().getFilesDir().getAbsolutePath();
        } catch (Throwable th) {
            la.b("Failed get files dir", th);
            str = "error";
        }
        try {
            str2 = Tools.e().getExternalFilesDir(null).getAbsolutePath();
        } catch (Throwable th2) {
            str2 = "error";
            la.b("Failed get ext files dir", th2);
        }
        button.setOnClickListener(new tw(new String[]{qk.a((int) R.string.internal_storage), qk.a((int) R.string.external_storage)}, new String[]{str, str2}));
        button.setTag(editText);
    }
}
