package android.ext;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.fix.Button;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;

/* compiled from: src */
/* loaded from: classes.dex */
public class PathSelector extends Button implements View.OnClickListener {
    static boolean a = true;

    public PathSelector(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a();
    }

    public PathSelector(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    public PathSelector(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public PathSelector(Context context) {
        super(context);
        a();
    }

    private void a() {
        setText("...");
        setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        new py(this, null).onClick(view);
    }

    private static void a(String str, ArrayList arrayList, String str2, String str3) {
        if (str3 != null) {
            int i = str2 == null ? 1 : 3;
            String str4 = str3;
            for (int i2 = 0; i2 < i; i2++) {
                if (i2 == 1) {
                    try {
                        if (str3.startsWith("/data/data/")) {
                            str4 = String.valueOf(str2) + str3.substring(11);
                        }
                    } catch (Throwable th) {
                        la.a(th);
                        return;
                    }
                }
                if (i2 == 2) {
                    if (str3.startsWith(str2)) {
                        str4 = "/data/data/" + str3.substring(str2.length());
                    }
                }
                File file = new File(str4);
                while (true) {
                    String absolutePath = file.getAbsolutePath();
                    if (absolutePath.startsWith(str)) {
                        if (file.isDirectory() || file.isFile()) {
                            String str5 = absolutePath.substring(str.length()).split("/", -1)[0];
                            if (!arrayList.contains(str5)) {
                                arrayList.add(str5);
                            }
                        }
                        file = file.getParentFile();
                        if (file != null && file.getAbsolutePath().length() > 1) {
                            int i3 = i3 < 20 ? i3 + 1 : 0;
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(File file) {
        try {
            return file.isDirectory();
        } catch (Throwable th) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String[] b(File file) {
        String[] strArr;
        String absolutePath;
        try {
            strArr = file.list();
        } catch (SecurityException e) {
            la.b("Failed list dir: " + file.getAbsolutePath(), e);
            strArr = null;
        }
        if (strArr == null) {
            try {
                String str = file.getAbsolutePath().startsWith("/data/user/") ? "/data/user/" + absolutePath.split("/", -1)[3] + "/" : "/data/user/0/";
                String str2 = String.valueOf(absolutePath) + '/';
                ArrayList arrayList = new ArrayList();
                a(str2, arrayList, str, "/data/anr");
                a(str2, arrayList, str, "/data/app");
                a(str2, arrayList, str, "/data/app-lib");
                a(str2, arrayList, str, "/data/app-private");
                a(str2, arrayList, str, "/data/dalvik-cache/profiles");
                a(str2, arrayList, str, "/data/dalvik-cache/x86");
                a(str2, arrayList, str, "/data/dalvik-cache/armeabi");
                a(str2, arrayList, str, "/data/dalvik-cache/armeabi-v7a");
                a(str2, arrayList, str, "/data/dalvik-cache/arm");
                a(str2, arrayList, str, "/data/dalvik-cache/arm64-v8a");
                a(str2, arrayList, str, "/data/dalvik-cache/arm64");
                a(str2, arrayList, str, "/data/dalvik-cache/x86");
                a(str2, arrayList, str, "/data/dalvik-cache/x86_64");
                a(str2, arrayList, str, "/data/local/tmp");
                a(str2, arrayList, str, "/data/misc/user");
                a(str2, arrayList, str, "/data/misc/zoneinfo");
                a(str2, arrayList, str, "/data/resource-cache");
                a(str2, arrayList, str, "/data/security");
                a(str2, arrayList, str, "/data/system/cache");
                a(str2, arrayList, str, "/data/system/registered_services");
                a(str2, arrayList, str, "/data/system/shared_prefs");
                a(str2, arrayList, str, "/data/system/users");
                a(str2, arrayList, str, "/data/tmp");
                a(str2, arrayList, str, str);
                a(str2, arrayList, str, "/storage/emulated/legacy");
                a(str2, arrayList, str, "/storage/emulated/0");
                a(str2, arrayList, str, "/storage/emulated/sdcard0");
                a(str2, arrayList, str, "/storage/emulated/sdcard1");
                a(str2, arrayList, str, "/storage/sdcard0");
                a(str2, arrayList, str, "/storage/sdcard1");
                a(str2, arrayList, str, "/sdcard");
                a(str2, arrayList, str, Tools.r());
                for (ApplicationInfo applicationInfo : Tools.m().getInstalledApplications(0)) {
                    a(str2, arrayList, str, applicationInfo.dataDir);
                    a(str2, arrayList, str, applicationInfo.nativeLibraryDir);
                    a(str2, arrayList, str, applicationInfo.publicSourceDir);
                    a(str2, arrayList, str, applicationInfo.sourceDir);
                    if (Build.VERSION.SDK_INT >= 21 && applicationInfo.splitPublicSourceDirs != null) {
                        for (String str3 : applicationInfo.splitPublicSourceDirs) {
                            a(str2, arrayList, str, str3);
                        }
                    }
                    if (Build.VERSION.SDK_INT >= 24) {
                        a(str2, arrayList, str, applicationInfo.deviceProtectedDataDir);
                    }
                    a(str2, arrayList, str, "/data/data/" + applicationInfo.packageName);
                    if (Build.VERSION.SDK_INT >= 21) {
                        a(str2, arrayList, str, "/data/app/" + applicationInfo.packageName + "-1/base.apk");
                        a(str2, arrayList, str, "/data/app/" + applicationInfo.packageName + "-2/base.apk");
                    } else {
                        a(str2, arrayList, str, "/data/app/" + applicationInfo.packageName + "-1.apk");
                        a(str2, arrayList, str, "/data/app/" + applicationInfo.packageName + "-2.apk");
                    }
                }
                if (arrayList.size() == 0) {
                    return null;
                }
                return (String[]) arrayList.toArray(new String[arrayList.size()]);
            } catch (Throwable th) {
                la.a(th);
                return null;
            }
        }
        return strArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ArrayList a(int i, File file, String[] strArr, String str, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : strArr) {
            String lowerCase = str2.toLowerCase(Locale.US);
            if (str == null || lowerCase.startsWith(str)) {
                File file2 = new File(file, str2);
                boolean a2 = a(file2);
                if (i != 0 || a2) {
                    arrayList.add(new qb(file2, lowerCase, a2));
                }
            }
        }
        if (arrayList.size() > 1) {
            try {
                Collections.sort(arrayList, new pw(z));
                la.a("Sort " + arrayList.size() + " in " + ((-System.currentTimeMillis()) + System.currentTimeMillis()));
            } catch (IllegalArgumentException e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Failed sort:\n");
                try {
                    Collections.sort(arrayList, new px(sb));
                } catch (IllegalArgumentException e2) {
                    ho.b(sb.toString());
                }
                la.a(e);
            }
        }
        return arrayList;
    }
}
