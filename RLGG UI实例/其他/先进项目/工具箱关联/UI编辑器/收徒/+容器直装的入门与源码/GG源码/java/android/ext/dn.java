package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class dn implements DialogInterface.OnClickListener {
    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        if (i == 0) {
            new be("kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2fdwhjru|250ylghr0wxwruldov2").onClick(dialogInterface, i);
            return;
        }
        int i3 = i - 1;
        String str = String.valueOf(qk.a(ConfigListAdapter.b[i3 * 3])) + ":\n" + qk.a(ConfigListAdapter.b[(i3 * 3) + 1]);
        if (ConfigListAdapter.b[(i3 * 3) + 2] >= 0) {
            String str2 = String.valueOf(str.trim()) + "\n\n";
            if (str2.charAt(str2.length() - 3) != ':') {
                str2 = String.valueOf(str2) + qk.a((int) R.string.video) + ":\n";
            }
            str = String.valueOf(str2) + Tools.removeNewLinesChars(ConfigListAdapter.c[i2]);
        }
        String str3 = ConfigListAdapter.b[i3 * 3] == R.string.help_floating_icon_title ? String.valueOf(str.replace(qk.a((int) R.string.s), qk.a((int) R.string.app_name))) + "\nhttps://productforums.google.com/forum/#!topic/translate/1Pywh5vI1kE\n\n" + Tools.c((int) R.string.without_float) + ":\n" + Tools.removeNewLinesChars("kwws=22jdphjxdugldq1qhw2y0573") : str;
        View a = android.fix.i.a((int) R.layout.main_new_version, (ViewGroup) null);
        TextView textView = (TextView) a.findViewById(R.id.changelog);
        Tools.a(textView, str3);
        Tools.a(textView.getText());
        AlertDialog.Builder negativeButton = i.c().setView(a).setNegativeButton(qk.a((int) R.string.ok), ConfigListAdapter.h());
        if (ConfigListAdapter.b[i3 * 3] == R.string.work_without_root_title) {
            negativeButton.setPositiveButton(R.string.more, new be("kwws=22jdphjxdugldq1qhw2iruxp2wrslf24<7540yluwxdo0vsdfhv0wr0uxq0jdphjxdugldq0zlwkrxw0urrw2"));
        }
        i.a(negativeButton);
        if (Config.C && ConfigListAdapter.b[i3 * 3] == R.string.help_game_not_listed_title) {
            try {
                if ((Tools.j(Config.E).flags & 2) == 0) {
                    i.a(i.c().setMessage(Tools.a(qk.a((int) R.string.not_optimized2), Config.F, Config.F)).setNeutralButton(qk.a((int) R.string.fix_it), new be("kwws=22jdphjxdugldq1qhw2iruxp2wrslf24<7540yluwxdo0vsdfhv0wr0uxq0jdphjxdugldq0zlwkrxw0urrw2")).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
                }
            } catch (Throwable th) {
                la.b("Failed check vSpace: " + Config.E, th);
            }
            byte b = Config.G;
            if (b == 0) {
                b = (ConfigListAdapter.i() && Config.E.contains("64")) ? (byte) 1 : (byte) 2;
                Config.G = b;
            }
            if (b == 1) {
                try {
                    i.a(i.c().setMessage(qk.a((int) R.string.vspace64)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
                } catch (Throwable th2) {
                    la.b("Failed check vSpace: " + Config.E, th2);
                }
            }
        }
    }
}
