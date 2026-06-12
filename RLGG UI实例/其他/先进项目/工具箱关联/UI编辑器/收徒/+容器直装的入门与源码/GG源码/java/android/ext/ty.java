package android.ext;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import catch_.me_.if_.you_.can_.R;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: src */
/* loaded from: classes.dex */
public class ty {
    private static final String d(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return Tools.a(messageDigest.digest());
        } catch (Throwable th) {
            la.b("Failed check old versions", th);
            return null;
        }
    }

    public static void a(bk bkVar, boolean z) {
        int b;
        String[] strArr = {"df1e68bf2355bb69260b6efaa7fdacc1", "f63d4ea576f8d71e0963de6834e0c219", "b333d385ec3aeaaf7598031a42f99961", "f6d10cdcc825ab580f2fbb8ae2752990", "6c188a31fe500c3ada0914215e7df3b3", "4aa610afe8a9f409d98e62b4ed2ef780", "bbc0c87ac43ea5b61f59d6607a1eaf84", "70fb9cca0e11cb09250a11ba0c23b4c2", "b4d8929ffb0484d60369dd2c2e5c919d", "1517a1932503e400deef335e1d331593", "761cf7c032752696b26cd60ea3f3d74d", "1027157cbd6831cfebb80321570bb784", "8791855c8c65cb6a950f34ec0b093668", "a517cf7078e7e9b25ae975b4bdb2cc65", "b4ab3afbb70f23f600d048be0e8d49b2", "bd2173c6afb552fae3d9428756430123", "9bcf2de327544b17352830f9b004b229", "94d8ee3a7d26aa70f473e0ac8845b040", "d6683c02b361fed6c0ece0338921cf2b", "2cba6ddcf12910bc651455907da1fa00", "95760d2d26320be5d407e9823fd089ea", "db2aaa81ea92a69ae45642d0f5142c24", "6e513de086b0378f970968445a5da263", "60ee44a5be7a862f6615d5b68ca0d017", "0e41efb62a276c61f7b2253a1cb70c96", "3534ed8e94149e09012244b0053f387c", "7e146f369544a77f5bd3dcaa498a1e93", "5ff0619a03b5424a273491e365b6356a", "7abdd4c0904fe8f0a78424f971ff52f4", "4be2ea55d617fc0362440a93ae8a0bda", "25a4c4b1be1822ea6b990582e5038364", "b3ea34ef077e6fb86332e03b5321b28c", "ff748cbd537fd83894360f37ac9ccb03", "1353d43dff30877182f5d709e282d224"};
        android.fix.j jVar = new android.fix.j();
        bkVar.g();
        int i = (int) (((16314.1f * 1) - 172.1f) + 0.5f);
        String g = Tools.g();
        int e = bkVar.e() / 9;
        int length = strArr.length;
        HashMap hashMap = z ? new HashMap() : null;
        int i2 = 0;
        while (true) {
            try {
                b = bkVar.b();
                if (b >= 0 && b <= 1024) {
                    if (b == 0) {
                        break;
                    }
                    int b2 = bkVar.b();
                    int b3 = bkVar.b();
                    String a = bkVar.a(b, null);
                    String a2 = bkVar.a(bkVar.a(), null);
                    if (z) {
                        hashMap.put(a, Integer.valueOf(b3));
                    }
                    if (!g.equals(a)) {
                        if (b2 > 0) {
                            if (b2 <= i) {
                                jVar.put(((i - b2) * e) + i2, new ud(a, b2, a2));
                                i2++;
                            }
                        } else {
                            if (a.equals(y.b)) {
                                jVar.put((e * i) + 1, new ud(a, b2, a2));
                            }
                            String d = d(a);
                            int i3 = length - 1;
                            while (true) {
                                if (i3 < 0) {
                                    break;
                                } else if (!strArr[i3].equalsIgnoreCase(d)) {
                                    i3--;
                                } else {
                                    jVar.put((length - i3) + 1 + (e * i), new ud(a, b2, a2));
                                    break;
                                }
                            }
                        }
                    }
                } else {
                    break;
                }
            } catch (IOException e2) {
                la.c("???", e2);
                if (jVar.size() == 0) {
                    la.a("Un: what?");
                    return;
                }
            }
        }
        la.c("Bad pkg length: " + b, new RuntimeException());
        if (z) {
            qf.b = hashMap;
        }
        boolean z2 = !a();
        la.a("Un: copy " + jVar.size());
        if (b(jVar)) {
            la.a("Un: restart?");
            i.a(i.c().setCustomTitle(Tools.d((int) R.string.app_name)).setMessage(qk.a((int) R.string.exit_confirm)).setPositiveButton(qk.a((int) R.string.restart), new ib(1300, true)).setNegativeButton(qk.a((int) R.string.skip), new tz(jVar)).setCancelable(false));
        } else {
            la.a("Un: show");
            a(jVar);
        }
        if (z2 && a()) {
            la.a("Un: faq");
            lh.a(Tools.e());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(android.fix.j jVar) {
        PackageInfo packageInfo;
        int i = (int) (((16378.2f * 1) - 236.2f) + 0.5f);
        int i2 = 0;
        while (i2 < jVar.size()) {
            ud udVar = (ud) jVar.valueAt(i2);
            if ((udVar.b == i && !y.b.equals(udVar.a)) || !Tools.e(udVar.a)) {
                jVar.removeAt(i2);
                i2--;
                la.a("Un: ignore: " + udVar.a + ' ' + udVar.b);
            }
            i2++;
        }
        if (jVar.size() == 0) {
            la.a("Un: empty");
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(qk.a((int) R.string.found_old_version));
        for (int i3 = 0; i3 < jVar.size(); i3++) {
            ud udVar2 = (ud) jVar.valueAt(i3);
            sb.append("\n\n");
            try {
                packageInfo = Tools.k(udVar2.a);
            } catch (PackageManager.NameNotFoundException e) {
                la.c("Package not found: " + udVar2.a, e);
                packageInfo = null;
            }
            if (packageInfo != null) {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                sb.append(applicationInfo != null ? Tools.a(applicationInfo) : null);
                sb.append(" (");
                sb.append(udVar2.a);
                sb.append(") - ");
                sb.append(udVar2.c.length() > 0 ? udVar2.c : packageInfo.versionName);
                sb.append(" (");
                sb.append(udVar2.b > 0 ? udVar2.b : packageInfo.versionCode);
                sb.append(')');
            } else {
                sb.append(udVar2.a);
                sb.append(" - ");
                sb.append(udVar2.b);
            }
        }
        la.a("Un: alert: " + jVar.size());
        String sb2 = sb.toString();
        int hashCode = sb2.hashCode() ^ ((int) (((17721.3f * 1) - 1579.3f) + 0.5f));
        if (hashCode == Tools.s().getInt("skip-old", 0)) {
            la.a("Un: skip");
            return;
        }
        ua uaVar = new ua(hashCode, jVar);
        i.a(i.c().setCustomTitle(Tools.d((int) R.string.old_version)).setMessage(sb2).setCancelable(false).setPositiveButton(qk.a((int) R.string.yes), uaVar).setNeutralButton(qk.a((int) R.string.skip), uaVar).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null));
    }

    public static void a(String str, Runnable runnable) {
        if (!Tools.e(str)) {
            la.a(runnable + ": 50");
            if (runnable != null) {
                runnable.run();
            }
        } else if (runnable != null) {
            la.a(runnable + ": 60");
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    qt.a("exec pm uninstall --user -1 " + str, 45);
                } catch (Throwable th) {
                    la.c("run cmd fail", th);
                }
            }
            la.a(runnable + ": 70");
            if (Build.VERSION.SDK_INT < 21 || Tools.e(str)) {
                try {
                    qt.a("exec pm uninstall " + str, 45);
                } catch (Throwable th2) {
                    la.c("run cmd fail", th2);
                }
            }
            la.a(runnable + ": 80");
            if (Tools.e(str)) {
                i.a(i.a(ar.f).setMessage(qk.a((int) R.string.need_uninstall)).setPositiveButton(qk.a((int) R.string.ok), new ub(runnable, str)).create(), runnable, true);
                return;
            }
            la.a(runnable + ": 110");
            runnable.run();
        } else {
            a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str) {
        for (Intent intent : jp.a(str)) {
            try {
                Tools.e().startActivity(intent);
                return;
            } catch (Throwable th) {
                la.c("intent fail", th);
            }
        }
    }

    public static File b(String str) {
        Context context = MainService.context;
        try {
            File file = Build.VERSION.SDK_INT >= 24 ? (File) context.getClass().getMethod("getSharedPreferencesPath", String.class).invoke(context, str) : null;
            return file == null ? (File) context.getClass().getMethod("getSharedPrefsFile", String.class).invoke(context, str) : file;
        } catch (Throwable th) {
            la.b("Failed call getSharedPrefsFile", th);
            return new File(Tools.i(), "../shared_prefs/" + str + ".xml");
        }
    }

    @TargetApi(11)
    private static int a(SharedPreferences.Editor editor, Map map) {
        int i;
        int i2 = 0;
        for (Map.Entry entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Boolean) {
                editor.putBoolean((String) entry.getKey(), ((Boolean) entry.getValue()).booleanValue());
                i2++;
            }
            if (value instanceof Float) {
                editor.putFloat((String) entry.getKey(), ((Float) entry.getValue()).floatValue());
                i2++;
            }
            if (value instanceof Integer) {
                editor.putInt((String) entry.getKey(), ((Integer) entry.getValue()).intValue());
                i2++;
            }
            if (value instanceof Long) {
                editor.putLong((String) entry.getKey(), ((Long) entry.getValue()).longValue());
                i2++;
            }
            if (value instanceof String) {
                editor.putString((String) entry.getKey(), (String) entry.getValue());
                i = i2 + 1;
            } else {
                i = i2;
            }
            if (Build.VERSION.SDK_INT < 11 || !(value instanceof Set)) {
                i2 = i;
            } else {
                editor.putStringSet((String) entry.getKey(), (Set) entry.getValue());
                i2 = i + 1;
            }
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0011 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void a(java.io.File r12, java.io.File r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.ty.a(java.io.File, java.io.File, java.lang.String):void");
    }

    public static boolean a() {
        return Tools.s().getBoolean("installed", false);
    }

    private static boolean b(android.fix.j jVar) {
        boolean z;
        File b = b(MainService.a);
        if (a()) {
            return false;
        }
        SharedPreferences s = Tools.s();
        HashMap hashMap = new HashMap(s.getAll());
        SharedPreferences.Editor edit = s.edit();
        String absolutePath = b.getAbsolutePath();
        String g = Tools.g();
        File b2 = b("DefaultStorage");
        if (!b2.exists()) {
            z = false;
        } else {
            if (!a(absolutePath, g, b, hashMap, edit, g, true)) {
                z = false;
            } else {
                z = true;
            }
            b2.delete();
        }
        int size = jVar.size() - 1;
        boolean z2 = z;
        while (size >= 0) {
            boolean z3 = a(absolutePath, g, b, hashMap, edit, ((ud) jVar.valueAt(size)).a, false) ? true : z2;
            size--;
            z2 = z3;
        }
        la.a("New: " + a(edit, hashMap) + " from " + hashMap.size());
        edit.putBoolean("installed", true).commit();
        return z2;
    }

    private static boolean a(String str, String str2, File file, Map map, SharedPreferences.Editor editor, String str3, boolean z) {
        int i = 0;
        String replace = str.replace(str2, str3);
        if (z || !str.equals(replace)) {
            if (!z) {
                a(new File(replace).getParentFile(), file.getParentFile(), MainService.a.replace(str2, str3));
            }
            HashMap c = z ? null : c(replace);
            if (c == null && (c = c(str.replace(MainService.a, "DefaultStorage").replace(str2, str3))) == null) {
                return false;
            }
            HashMap hashMap = c;
            for (Map.Entry entry : hashMap.entrySet()) {
                if (!map.containsKey(entry.getKey())) {
                    i++;
                }
            }
            la.a("Copy: " + a(editor, hashMap) + " from " + hashMap.size() + " new " + i);
            return true;
        }
        return false;
    }

    public static InputStream a(String str, int i) {
        String[] strArr = {"exec ls " + str, "exec dalvikvm -cp " + Tools.q() + ' ' + Ls.class.getName() + ' ' + str};
        if (i >= strArr.length) {
            return null;
        }
        String str2 = strArr[i];
        Process b = qt.b(str2);
        if (b == null) {
            la.b("Failed run " + str2);
            return null;
        }
        return b.getInputStream();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00fb A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.io.InputStream b(java.lang.String r12, int r13) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.ty.b(java.lang.String, int):java.io.InputStream");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0038 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0025 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.HashMap c(java.lang.String r7) {
        /*
            r6 = 10
            r0 = 0
            r1 = 0
            r3 = r1
        L5:
            if (r3 < r6) goto L1f
            r1 = r0
        L8:
            if (r1 != 0) goto L1e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6e
            java.lang.String r2 = "exec ls -l "
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L6e
            java.lang.StringBuilder r0 = r0.append(r7)     // Catch: java.lang.Throwable -> L6e
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L6e
            r2 = 10
            android.ext.qt.a(r0, r2)     // Catch: java.lang.Throwable -> L6e
        L1e:
            return r1
        L1f:
            java.io.InputStream r1 = b(r7, r3)     // Catch: java.io.IOException -> L75
            if (r1 != 0) goto L29
        L25:
            int r1 = r3 + 1
            r3 = r1
            goto L5
        L29:
            android.ext.ue r4 = new android.ext.ue     // Catch: java.io.IOException -> L75
            r4.<init>(r1)     // Catch: java.io.IOException -> L75
            java.util.HashMap r2 = android.a.c.a(r4)     // Catch: java.lang.Throwable -> L3a
        L32:
            r4.close()     // Catch: java.io.IOException -> L65
            r0 = r2
        L36:
            if (r0 == 0) goto L25
            r1 = r0
            goto L8
        L3a:
            r1 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L75
            java.lang.String r5 = "Fail: "
            r2.<init>(r5)     // Catch: java.io.IOException -> L75
            java.lang.StringBuilder r2 = r2.append(r7)     // Catch: java.io.IOException -> L75
            java.lang.String r2 = r2.toString()     // Catch: java.io.IOException -> L75
            android.ext.la.b(r2, r1)     // Catch: java.io.IOException -> L75
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L75
            java.lang.String r2 = "Last data: "
            r1.<init>(r2)     // Catch: java.io.IOException -> L75
            java.lang.String r2 = r4.a()     // Catch: java.io.IOException -> L75
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.io.IOException -> L75
            java.lang.String r1 = r1.toString()     // Catch: java.io.IOException -> L75
            android.ext.la.b(r1)     // Catch: java.io.IOException -> L75
            r2 = r0
            goto L32
        L65:
            r0 = move-exception
            r1 = r0
        L67:
            java.lang.String r0 = "Failed read xml"
            android.ext.la.b(r0, r1)
            r0 = r2
            goto L36
        L6e:
            r0 = move-exception
            java.lang.String r2 = "Failed check xml"
            android.ext.la.b(r2, r0)
            goto L1e
        L75:
            r1 = move-exception
            r2 = r0
            goto L67
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.ty.c(java.lang.String):java.util.HashMap");
    }
}
