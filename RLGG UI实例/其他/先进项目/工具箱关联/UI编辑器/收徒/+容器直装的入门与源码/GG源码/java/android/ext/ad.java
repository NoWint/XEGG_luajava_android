package android.ext;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipFile;

/* compiled from: src */
/* loaded from: classes.dex */
public class ad {
    private static String a = "locale";
    private static volatile String b = null;
    private static String c = "crashed-vm";
    private static String d = "crashed-vm2";
    private static volatile Locale e = null;
    private static List f = new ArrayList();
    private static final Pattern g;

    static {
        Pattern pattern = null;
        try {
            pattern = Pattern.compile("~~~([-_A-Za-z0-9]{1,10})~~~");
        } catch (Throwable th) {
            la.a(th);
        }
        g = pattern;
    }

    public static Locale a() {
        Locale locale = e;
        if (locale == null) {
            Locale b2 = b();
            e = b2;
            return b2;
        }
        return locale;
    }

    public static void a(Locale locale) {
        e = locale;
    }

    public static Locale b() {
        return a(c());
    }

    public static Locale a(String str) {
        String[] split = str.split("[-_]");
        if (split.length > 1) {
            return new Locale(split[0], split[1]);
        }
        return new Locale(str);
    }

    public static void b(String str) {
        Locale a2 = a(str);
        Locale.setDefault(a2);
        android.fix.d.a(null, a2);
        a(ar.f);
        a(ar.e);
        a(MainService.context);
        la.a("Loaded locale: " + str);
        f();
        if (!str.equals(b)) {
            b = str;
            qk.a();
        }
    }

    private static void a(Context context) {
        if (context != null) {
            context.getResources();
        }
    }

    public static void a(Class cls) {
        f.add(cls);
    }

    private static void f() {
        for (Class cls : f) {
            try {
                cls.getMethod("updateLocale", null).invoke(null, null);
            } catch (Throwable th) {
                la.b("Failed call updateLocale for " + cls.getName(), th);
            }
        }
    }

    public static String c() {
        try {
            return Tools.s().getString(a, Locale.getDefault().toString());
        } catch (Throwable th) {
            la.c("Failed get locale", th);
            return "";
        }
    }

    public static void d() {
        try {
            b(c());
        } catch (Throwable th) {
            la.c("Failed load locale", th);
        }
    }

    public static void c(String str) {
        new qw().putString(a, str).commit();
        b(str);
    }

    public static String[] e() {
        Locale[] localeArr;
        String[] strArr = android.c.b.a;
        SharedPreferences s = Tools.s();
        if (!s.getBoolean(c, false)) {
            s.edit().putBoolean(c, true).commit();
            strArr = Tools.e().getAssets().getLocales();
            s.edit().remove(c).commit();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("");
        for (String str : strArr) {
            if (str != null && !arrayList.contains(str)) {
                arrayList.add(str);
            }
        }
        if (s.getBoolean(d, false)) {
            localeArr = null;
        } else {
            s.edit().putBoolean(d, true).commit();
            Locale[] availableLocales = Locale.getAvailableLocales();
            s.edit().remove(d).commit();
            localeArr = availableLocales;
        }
        if (localeArr != null) {
            for (Locale locale : localeArr) {
                if (locale != null) {
                    String country = locale.getCountry();
                    String language = locale.getLanguage();
                    String str2 = (country == null || country.length() == 0) ? language : String.valueOf(language) + '_' + country;
                    if (country != null && country.length() != 0) {
                        language = String.valueOf(language) + '-' + country;
                    }
                    if (!arrayList.contains(str2) && !arrayList.contains(language)) {
                        if (Build.VERSION.SDK_INT < 21) {
                            language = str2;
                        }
                        arrayList.add(language);
                    }
                }
            }
        }
        if (g != null) {
            try {
                ZipFile zipFile = new ZipFile(Tools.e().getPackageResourcePath());
                InputStream inputStream = zipFile.getInputStream(zipFile.getEntry("resources.arsc"));
                byte[] bArr = new byte[1024];
                String str3 = "";
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    String str4 = new String(bArr, 0, read, Charset.forName("US-ASCII"));
                    if (str4.indexOf(126) != -1) {
                        Matcher matcher = g.matcher(String.valueOf(str3) + str4);
                        while (matcher.find()) {
                            String group = matcher.group(1);
                            String replace = group.replace('_', '-');
                            if (!arrayList.contains(group) && !arrayList.contains(replace)) {
                                if (Build.VERSION.SDK_INT >= 21) {
                                    group = replace;
                                }
                                arrayList.add(group);
                            }
                        }
                    }
                    str3 = str4.substring(0, Math.min(40, str4.length()));
                }
                inputStream.close();
                zipFile.close();
            } catch (Throwable th) {
                la.c("Failed load locales from apk", th);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
