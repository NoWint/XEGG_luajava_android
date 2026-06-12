package android.ext;

import android.widget.SectionIndexer;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class BaseAdapterIndexer extends BaseAdapterLC implements SectionIndexer {
    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        Object[] objArr = new Object[20];
        double count = getCount() / 20.0d;
        for (int i = 0; i < 20; i++) {
            objArr[i] = Integer.valueOf((int) (i * count));
        }
        return objArr;
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i) {
        int count = getCount();
        int i2 = (int) ((count / 20.0d) * i);
        if (i2 < 0) {
            i2 = 0;
        }
        return i2 >= count ? count - 1 : i2;
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i) {
        int count = (int) (i / (getCount() / 20.0d));
        if (count < 0) {
            count = 0;
        }
        if (count >= 20) {
            return 19;
        }
        return count;
    }
}
