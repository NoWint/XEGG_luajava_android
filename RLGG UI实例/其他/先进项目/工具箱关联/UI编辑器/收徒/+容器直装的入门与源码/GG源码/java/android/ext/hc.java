package android.ext;

import android.widget.Filter;
import java.io.File;
import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class hc extends Filter {
    final /* synthetic */ hb a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hc(hb hbVar) {
        this.a = hbVar;
    }

    @Override // android.widget.Filter
    protected Filter.FilterResults performFiltering(CharSequence charSequence) {
        String[] b;
        EditTextPath editTextPath;
        int i;
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (charSequence != null) {
            String a = a(charSequence);
            File file = new File(a);
            boolean endsWith = a.endsWith("/");
            File parentFile = endsWith ? file : file.getParentFile();
            String lowerCase = (endsWith ? "" : file.getName()).toLowerCase(Locale.US);
            if (parentFile.exists() && (b = PathSelector.b(parentFile)) != null && b.length > 0) {
                editTextPath = this.a.b;
                i = editTextPath.a;
                ArrayList a2 = PathSelector.a(i, parentFile, b, lowerCase, true);
                int size = a2.size();
                if (size == 1 && ((qb) a2.get(0)).b.equals(lowerCase)) {
                    size = 0;
                }
                if (size > 0) {
                    File[] fileArr = new File[size];
                    for (int i2 = 0; i2 < size; i2++) {
                        fileArr[i2] = ((qb) a2.get(i2)).a;
                    }
                    filterResults.values = fileArr;
                    filterResults.count = size;
                }
            }
        }
        return filterResults;
    }

    private String a(CharSequence charSequence) {
        return (charSequence == null || charSequence.length() == 0) ? "/" : charSequence.toString();
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        this.a.c = (filterResults == null || !(filterResults.values instanceof File[])) ? null : (File[]) filterResults.values;
        this.a.notifyDataSetChanged();
    }
}
