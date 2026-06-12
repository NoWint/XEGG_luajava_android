package android.ext;

import java.util.Comparator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class pu implements Comparator {
    final /* synthetic */ pt a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pu(pt ptVar) {
        this.a = ptVar;
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(String str, String str2) {
        return str2.length() - str.length();
    }
}
