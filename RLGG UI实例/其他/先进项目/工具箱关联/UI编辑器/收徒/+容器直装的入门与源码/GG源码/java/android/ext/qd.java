package android.ext;

import java.io.File;

/* compiled from: src */
/* loaded from: classes.dex */
public class qd {
    public static String a(String str, String str2) {
        String str3 = String.valueOf(Tools.r()) + "/Notes";
        if (str == null) {
            return Tools.s().getString(str2, str3);
        }
        new qw().a(str2, str, str3).commit();
        return null;
    }

    public static void a(String str, String str2, String str3, String str4) {
        File file = new File(str.trim());
        String parent = file.getParent();
        if (str2 != null && parent != null && parent.length() > 0) {
            a(parent, str2);
        }
        qh qhVar = MainService.instance.ap;
        if (qhVar != null) {
            String str5 = qhVar.c;
            new qw().a(String.valueOf(str5) + str3, file.getAbsolutePath(), String.valueOf(a(null, str2)) + '/' + str5 + str4).commit();
        }
    }

    public static String a(String str, String str2, String str3) {
        qh qhVar = MainService.instance.ap;
        if (qhVar == null) {
            return String.valueOf(a(null, str)) + "/file" + str3;
        }
        String str4 = qhVar.c;
        String string = Tools.s().getString(String.valueOf(str4) + str2, null);
        return string == null ? String.valueOf(a(null, str)) + '/' + str4 + str3 : string;
    }
}
