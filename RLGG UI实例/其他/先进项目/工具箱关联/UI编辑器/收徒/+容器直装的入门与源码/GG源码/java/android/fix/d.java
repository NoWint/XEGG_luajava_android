package android.fix;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.ext.ConfigListAdapter;
import android.ext.Tools;
import android.ext.la;
import android.ext.qv;
import android.ext.rx;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import catch_.me_.if_.you_.can_.R;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Locale;

/* compiled from: src */
/* loaded from: classes.dex */
public class d extends ContextThemeWrapper {
    private static volatile boolean a = true;
    private static Configuration b = null;
    private static Locale c = Locale.getDefault();
    private Configuration d;
    private Resources e;

    public d(Context context) {
        super(context, (int) R.style.FixTheme);
        this.d = null;
        this.e = null;
    }

    public static boolean a() {
        return a;
    }

    public static d b(Context context) {
        try {
            Class.forName("com.wobian.wv.wb.WBContext");
            return new e(context);
        } catch (Throwable th) {
            return new d(context);
        }
    }

    public static Context c(Context context) {
        if (context != null && !(context instanceof d)) {
            return b(context);
        }
        return context;
    }

    public static void a(Configuration configuration, Locale locale) {
        if (locale != null) {
            c = locale;
        }
        Configuration configuration2 = configuration == null ? b : configuration;
        if (configuration2 == null) {
            configuration2 = Tools.e().getResources().getConfiguration();
        }
        Configuration b2 = b(configuration2);
        if (!b2.equals(b)) {
            b = b2;
        }
    }

    public static Configuration a(Configuration configuration) {
        Configuration b2 = b(configuration);
        a(b2, null);
        return b2;
    }

    public static Configuration b(Configuration configuration) {
        ConfigListAdapter.a(configuration, c);
        return new Configuration(configuration);
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        Context context = null;
        Configuration configuration = b;
        Configuration configuration2 = this.d;
        Resources resources = this.e;
        if (configuration2 != configuration || (resources != null && !resources.getConfiguration().equals(configuration2))) {
            this.d = configuration;
            Resources resources2 = super.getResources();
            if (configuration != null) {
                try {
                    resources2.updateConfiguration(configuration, null);
                    if (resources != null && resources != resources2) {
                        resources.updateConfiguration(configuration, null);
                    }
                } catch (Throwable th) {
                    la.c("Failed set locale", th);
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    try {
                        context = createConfigurationContext(configuration);
                    } catch (Throwable th2) {
                        la.a(th2);
                    }
                }
                resources = context == null ? resources2 : context.getResources();
                context = resources2;
            } else {
                resources = resources2;
                context = resources2;
            }
        }
        if (resources == null) {
            resources = context == null ? super.getResources() : context;
        }
        this.e = resources;
        return resources;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    public static void d(Context context) {
        if (context instanceof d) {
            d dVar = (d) context;
            try {
                LayoutInflater.from(dVar);
            } catch (AssertionError e) {
                try {
                    LayoutInflater.from(dVar.getBaseContext());
                    la.c("Failed use fix for LayoutInflater", e);
                    a = false;
                } catch (AssertionError e2) {
                    la.c("Can not get LayoutInflater", e2);
                }
            }
            la.c("Check LayoutInflater - ok");
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getFilesDir() {
        try {
            return super.getFilesDir();
        } catch (NullPointerException e) {
            la.a(e);
            return Tools.i();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getCacheDir() {
        try {
            return super.getCacheDir();
        } catch (NullPointerException e) {
            la.a(e);
            return Tools.h();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String getPackageName() {
        try {
            return super.getPackageName();
        } catch (NullPointerException e) {
            la.a(e);
            return Tools.g();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getExternalFilesDir(String str) {
        try {
            return super.getExternalFilesDir(str);
        } catch (ArrayIndexOutOfBoundsException e) {
            la.a(e);
            return null;
        } catch (NullPointerException e2) {
            la.a(e2);
            return null;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public File getExternalCacheDir() {
        try {
            return super.getExternalCacheDir();
        } catch (ArrayIndexOutOfBoundsException e) {
            la.a(e);
            return null;
        } catch (NullPointerException e2) {
            la.a(e2);
            return null;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public PackageManager getPackageManager() {
        try {
            return super.getPackageManager();
        } catch (NullPointerException e) {
            la.a(e);
            return Tools.m();
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        try {
            super.unregisterReceiver(broadcastReceiver);
        } catch (IllegalArgumentException e) {
            la.a(e);
        }
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        return k.a(super.getSystemService(str));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        boolean a2;
        boolean a3;
        try {
            super.startActivity(intent);
        } finally {
            if (!a2) {
                if (!a3) {
                }
            }
        }
    }

    public static boolean a(Throwable th, Context context, Intent intent) {
        String message = th.getMessage();
        if (rx.c() || message == null || !message.contains("Looper.prepare()")) {
            return false;
        }
        rx.a(new f(context, intent));
        return true;
    }

    private boolean a(Intent intent) {
        String[] strArr = {"am", "start", intent.toUri(5)};
        la.b("Try exec intent: " + intent + "; " + Arrays.toString(strArr));
        try {
            Process a2 = Tools.a(strArr);
            a2.getInputStream().close();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(a2.getErrorStream()));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
                sb.append('\n');
            }
            bufferedReader.close();
            if (sb.length() > 0) {
                la.b("Failed exec intent: " + intent + "; " + Arrays.toString(strArr) + ":\n" + sb.toString());
                return false;
            }
            return true;
        } catch (Throwable th) {
            la.b("Failed exec intent: " + intent + "; " + Arrays.toString(strArr), th);
            return false;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean bindService(Intent intent, ServiceConnection serviceConnection, int i) {
        try {
            return super.bindService(intent, serviceConnection, i);
        } catch (IllegalArgumentException e) {
            la.a(e);
            return false;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean startInstrumentation(ComponentName componentName, String str, Bundle bundle) {
        try {
            return super.startInstrumentation(componentName, str, bundle);
        } catch (Throwable th) {
            la.a(th);
            return false;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i) {
        return qv.a(super.getSharedPreferences(str, i));
    }
}
