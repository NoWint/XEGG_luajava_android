package android.ext;

import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class ei implements hd {
    final /* synthetic */ ConfigListAdapter a;
    private final /* synthetic */ EditTextSpeeds b;
    private final /* synthetic */ TextView c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ei(ConfigListAdapter configListAdapter, EditTextSpeeds editTextSpeeds, TextView textView) {
        this.a = configListAdapter;
        this.b = editTextSpeeds;
        this.c = textView;
    }

    public void a() {
        String str;
        if (this.b == null || this.c == null) {
            str = "?";
        } else {
            try {
                String trim = this.b.getText().toString().trim();
                int selectionStart = this.b.getSelectionStart();
                int i = selectionStart >= 0 ? selectionStart : 0;
                int length = i >= trim.length() ? trim.length() - 1 : i;
                int lastIndexOf = length <= 0 ? -1 : trim.lastIndexOf(59, length - 1);
                if (lastIndexOf < 0) {
                    lastIndexOf = -1;
                }
                int indexOf = trim.indexOf(59, length);
                if (indexOf < 0) {
                    indexOf = trim.length();
                }
                double f = Tools.f(trim.substring(lastIndexOf + 1, indexOf));
                if (f > 0.0d) {
                    kz c = ky.c(f);
                    str = Tools.a(qk.a((int) R.string.speed_info), Tools.a(c.b), Tools.a(c.a));
                } else {
                    str = "??";
                }
            } catch (NumberFormatException e) {
                str = "???";
            }
        }
        this.c.setText(str);
    }

    @Override // android.ext.hd
    public void a(EditText editText, int i, int i2) {
        a();
    }

    @Override // android.ext.hd
    public void a(EditText editText, CharSequence charSequence, int i, int i2, int i3) {
        a();
    }
}
