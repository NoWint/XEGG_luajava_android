package android.ext;

import java.util.Comparator;

/* compiled from: src */
/* loaded from: classes.dex */
class ea implements Comparator {
    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(String str, String str2) {
        return (String.valueOf(str) + "_zzz").replace('-', '_').compareTo((String.valueOf(str2) + "_zzz").replace('-', '_'));
    }
}
