package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ListView;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class dk implements DialogInterface.OnClickListener {
    private final /* synthetic */ String[] a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dk(String[] strArr) {
        this.a = strArr;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        pj[] pjVarArr = MainService.q[i / 2];
        CharSequence[] charSequenceArr = new CharSequence[pjVarArr.length];
        Drawable[] drawableArr = new Drawable[pjVarArr.length];
        boolean[] zArr = new boolean[charSequenceArr.length];
        long j = Config.b[i];
        for (int i2 = 0; i2 < charSequenceArr.length; i2++) {
            charSequenceArr[i2] = Build.VERSION.SDK_INT < 11 ? Tools.a((CharSequence) pjVarArr[i2].toString(), -1) : pjVarArr[i2].toString();
            zArr[i2] = ((1 << i2) & j) != 0;
            drawableArr[i2] = pjVarArr[i2].d();
        }
        dl dlVar = new dl(this, zArr, i);
        AlertDialog create = i.a(Tools.o()).setCustomTitle(Tools.i(this.a[i])).setMultiChoiceItems(charSequenceArr, zArr, new dm(this, zArr)).setPositiveButton(qk.a((int) R.string.save), dlVar).setNeutralButton(qk.a((int) R.string.reset_button), dlVar).setNegativeButton(qk.a((int) R.string.cancel), dlVar).create();
        ListView listView = create.getListView();
        if (listView != null) {
            Tools.a(listView, charSequenceArr, drawableArr, Config.d(), (int) R.style.SmallText);
        }
        i.c(create);
    }
}
