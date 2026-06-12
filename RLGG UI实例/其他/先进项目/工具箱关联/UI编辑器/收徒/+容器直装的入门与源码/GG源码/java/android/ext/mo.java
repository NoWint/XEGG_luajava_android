package android.ext;

import android.widget.TabHost;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class mo implements TabHost.OnTabChangeListener {
    final /* synthetic */ MainService a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mo(MainService mainService) {
        this.a = mainService;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    public void onTabChanged(String str) {
        MainService mainService = MainService.instance;
        int r = mainService.r();
        mainService.r.setVisibility(r >= 1 ? 0 : 8);
        mainService.s.setVisibility(r != 3 ? 0 : 8);
        mainService.z.setVisibility(r == 1 ? 0 : 8);
        mainService.v.setVisibility(r == 3 ? 0 : 8);
        mainService.w.setVisibility(r == 2 ? 0 : 8);
        mainService.s();
        mainService.X = mainService.o.getCurrentView();
        Tools.f(mainService.M);
        mainService.E();
        ConfigListAdapter configListAdapter = this.a.aq;
        if (configListAdapter != null) {
            configListAdapter.a(r == 0);
        }
    }
}
