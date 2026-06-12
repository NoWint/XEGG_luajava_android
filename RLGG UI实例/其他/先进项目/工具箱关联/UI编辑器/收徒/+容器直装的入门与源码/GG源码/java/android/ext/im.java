package android.ext;

import android.content.DialogInterface;
import android.widget.SeekBar;

/* compiled from: src */
/* loaded from: classes.dex */
class im implements DialogInterface.OnClickListener {
    final /* synthetic */ ik a;
    private final /* synthetic */ SeekBar b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public im(ik ikVar, SeekBar seekBar) {
        this.a = ikVar;
        this.b = seekBar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            ik.a("0", MainService.a() & 127, 536870912, this.b.getProgress() + 1, this.a.h.d(0), this.a.h.d(1), this.a.h.p());
        } catch (NumberFormatException e) {
            re.a(e, this.a.h.o());
        }
    }
}
