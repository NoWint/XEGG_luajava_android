package android.ext;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class mn extends FloatPanel {
    final /* synthetic */ MainService e;
    private final /* synthetic */ String f;
    private final /* synthetic */ int g;
    private final /* synthetic */ int h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mn(MainService mainService, Context context, String str, int i, int i2) {
        super(context);
        this.e = mainService;
        this.f = str;
        this.g = i;
        this.h = i2;
    }

    @Override // android.ext.FloatPanel
    protected String getPrefName() {
        return this.f;
    }

    @Override // android.ext.FloatPanel
    protected int getDefX() {
        return this.g;
    }

    @Override // android.ext.FloatPanel
    protected int getDefY() {
        return this.h;
    }

    @Override // android.ext.FloatPanel
    protected boolean a() {
        return true;
    }
}
