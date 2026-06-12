package android.ext;

import android.content.DialogInterface;
import android.text.Editable;
import catch_.me_.if_.you_.can_.R;
import java.util.ArrayList;

/* compiled from: src */
/* loaded from: classes.dex */
class is implements DialogInterface.OnClickListener {
    final /* synthetic */ HexConverter a;
    private final /* synthetic */ ArrayList b;
    private final /* synthetic */ EditText c;
    private final /* synthetic */ int d;
    private final /* synthetic */ int e;
    private final /* synthetic */ Editable f;
    private final /* synthetic */ long g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public is(HexConverter hexConverter, ArrayList arrayList, EditText editText, int i, int i2, Editable editable, long j) {
        this.a = hexConverter;
        this.b = arrayList;
        this.c = editText;
        this.d = i;
        this.e = i2;
        this.f = editable;
        this.g = j;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i >= 0) {
            try {
                if (i < this.b.size()) {
                    String str = (String) this.b.get(i);
                    if (str == null) {
                        ct a = Config.a((int) R.id.config_xor_key);
                        a.a(new it(this, a, this.g, this.c, this.d, this.e, this.f));
                        a.d();
                    } else {
                        try {
                            this.c.setSelection(this.d, this.e);
                            this.f.replace(this.d, this.e, str);
                        } catch (IndexOutOfBoundsException e) {
                            la.b("Failed replace text", e);
                            this.c.setText(str);
                        }
                    }
                }
            } catch (Throwable th) {
                la.a("HexConverter failed with " + i, th);
                return;
            }
        }
        this.c.requestFocus();
    }
}
