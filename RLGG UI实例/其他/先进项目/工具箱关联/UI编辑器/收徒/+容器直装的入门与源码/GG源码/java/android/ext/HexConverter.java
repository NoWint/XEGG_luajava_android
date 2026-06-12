package android.ext;

import android.content.Context;
import android.fix.ImageButtonView;
import android.util.AttributeSet;
import android.view.View;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class HexConverter extends ImageButtonView implements View.OnClickListener {
    private boolean a;

    public HexConverter(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.a = true;
        a();
    }

    public HexConverter(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = true;
        a();
    }

    public HexConverter(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = true;
        a();
    }

    public HexConverter(Context context) {
        super(context);
        this.a = true;
        a();
    }

    private void a() {
        setOnClickListener(this);
        if (!isInEditMode()) {
            setImageResource(R.drawable.ic_arrow_down_drop_circle_white_24dp);
            Config.a(this);
        }
    }

    public void setUseXor(boolean z) {
        this.a = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0491  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0101 A[Catch: Throwable -> 0x0489, TRY_LEAVE, TryCatch #5 {Throwable -> 0x0489, blocks: (B:40:0x00dc, B:42:0x0101, B:78:0x031b, B:82:0x034a), top: B:153:0x00c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01b1 A[Catch: Throwable -> 0x02c9, TryCatch #4 {Throwable -> 0x02c9, blocks: (B:47:0x0131, B:49:0x01b1, B:52:0x01ef, B:60:0x026a, B:62:0x0273, B:101:0x03c5, B:103:0x03c9, B:106:0x03d1, B:110:0x03d8, B:113:0x03de, B:116:0x03e8, B:119:0x03f2, B:121:0x0408, B:123:0x0415, B:124:0x041e, B:128:0x0427, B:131:0x043d, B:134:0x0453, B:135:0x0466, B:67:0x027f, B:94:0x03ad, B:97:0x03b9, B:55:0x01fa, B:59:0x0236), top: B:151:0x0131 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01ef A[Catch: Throwable -> 0x02c9, TRY_LEAVE, TryCatch #4 {Throwable -> 0x02c9, blocks: (B:47:0x0131, B:49:0x01b1, B:52:0x01ef, B:60:0x026a, B:62:0x0273, B:101:0x03c5, B:103:0x03c9, B:106:0x03d1, B:110:0x03d8, B:113:0x03de, B:116:0x03e8, B:119:0x03f2, B:121:0x0408, B:123:0x0415, B:124:0x041e, B:128:0x0427, B:131:0x043d, B:134:0x0453, B:135:0x0466, B:67:0x027f, B:94:0x03ad, B:97:0x03b9, B:55:0x01fa, B:59:0x0236), top: B:151:0x0131 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0273 A[Catch: Throwable -> 0x02c9, TryCatch #4 {Throwable -> 0x02c9, blocks: (B:47:0x0131, B:49:0x01b1, B:52:0x01ef, B:60:0x026a, B:62:0x0273, B:101:0x03c5, B:103:0x03c9, B:106:0x03d1, B:110:0x03d8, B:113:0x03de, B:116:0x03e8, B:119:0x03f2, B:121:0x0408, B:123:0x0415, B:124:0x041e, B:128:0x0427, B:131:0x043d, B:134:0x0453, B:135:0x0466, B:67:0x027f, B:94:0x03ad, B:97:0x03b9, B:55:0x01fa, B:59:0x0236), top: B:151:0x0131 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x03aa  */
    /* JADX WARN: Type inference failed for: r5v21, types: [int] */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v37 */
    /* JADX WARN: Type inference failed for: r5v41 */
    /* JADX WARN: Type inference failed for: r5v45 */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onClick(android.view.View r20) {
        /*
            Method dump skipped, instructions count: 1185
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.HexConverter.onClick(android.view.View):void");
    }

    private String a(String str, char c, boolean z) {
        int i;
        int length = str.length();
        if (z) {
            i = 0;
            for (int i2 = 0; i2 < length - 2 && str.charAt(i2) == c; i2++) {
                i = (i2 + 1) & (-2);
            }
        } else {
            for (int i3 = length - 1; i3 >= 2 && str.charAt(i3) == c; i3--) {
                length = (i3 + 1) & (-2);
            }
            i = 0;
        }
        return str.substring(i, length);
    }
}
