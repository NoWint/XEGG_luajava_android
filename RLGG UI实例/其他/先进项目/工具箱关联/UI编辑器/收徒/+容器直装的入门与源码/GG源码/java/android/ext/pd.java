package android.ext;

import android.widget.Filter;
import java.util.Arrays;
import java.util.Locale;
import java.util.regex.Pattern;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class pd extends Filter {
    ai a;
    int[] b;
    final /* synthetic */ ow c;

    private pd(ow owVar) {
        this.c = owVar;
        this.a = null;
        this.b = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ pd(ow owVar, pd pdVar) {
        this(owVar);
    }

    @Override // android.widget.Filter
    protected Filter.FilterResults performFiltering(CharSequence charSequence) {
        ai aiVar;
        int[] iArr;
        Filter.FilterResults filterResults = new Filter.FilterResults();
        filterResults.values = null;
        try {
            boolean z = (this.c.c & 12) == 0;
            if (charSequence != null && charSequence.length() > 0 && this.c.g()) {
                String charSequence2 = charSequence.toString();
                if (z) {
                    charSequence2 = a(charSequence2);
                }
                String l = Tools.l(charSequence2);
                la.a("Filter: '" + l + '\'');
                Pattern compile = Pattern.compile(l, 8);
                if ((this.c.c & 48) == 0) {
                    aiVar = null;
                } else if (this.a != null) {
                    aiVar = this.a;
                } else {
                    ai aiVar2 = new ai();
                    this.a = aiVar2;
                    aiVar = aiVar2;
                }
                if ((this.c.c & 64) == 0) {
                    iArr = null;
                } else if (this.b != null) {
                    iArr = this.b;
                } else {
                    int[] a = ag.a();
                    this.b = a;
                    iArr = a;
                }
                int c = (short) this.c.c();
                short[] sArr = new short[c];
                int i = 0;
                for (short s = 0; s < c; s = (short) (s + 1)) {
                    String a2 = this.c.a(aiVar, iArr, s);
                    if (z) {
                        a2 = a(a2);
                    }
                    if (compile.matcher(a2).find()) {
                        int i2 = i + 1;
                        sArr[i] = s;
                        i = i2;
                    }
                }
                filterResults.values = Arrays.copyOf(sArr, i);
            }
        } catch (Throwable th) {
            la.a("Failed filter", th);
            ho.a(Thread.currentThread(), th, false);
        }
        return filterResults;
    }

    private String a(String str) {
        return str.toLowerCase(Locale.US).replace(ps.a, "");
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        this.c.b = (short[]) filterResults.values;
        this.c.b();
    }
}
