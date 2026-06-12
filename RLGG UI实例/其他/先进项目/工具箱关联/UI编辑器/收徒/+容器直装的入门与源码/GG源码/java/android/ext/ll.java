package android.ext;

import android.content.SharedPreferences;
import android.os.Build;
import catch_.me_.if_.you_.can_.R;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ll implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        String str;
        try {
            lh.a = false;
            String sb = new StringBuilder().append((111.7f * 1) - 10.6f).toString();
            StringBuilder sb2 = new StringBuilder();
            SharedPreferences s = Tools.s();
            for (int i = 0; i < 4; i++) {
                String str2 = "used-" + i;
                if (s.contains(str2)) {
                    String string = s.getString(str2, "");
                    if (string.length() != 0) {
                        if (sb2.length() != 0) {
                            sb2.append('&');
                        }
                        sb2.append(i);
                        sb2.append('=');
                        sb2.append(string);
                    }
                }
            }
            SharedPreferences.Editor edit = s.edit();
            for (int i2 = 0; i2 < 4; i2++) {
                edit.remove("used-" + i2);
            }
            edit.commit();
            byte[] bytes = sb2.toString().getBytes();
            URLConnection openConnection = new URL(String.valueOf(Tools.a(Tools.removeNewLinesChars("kwws=22jdphjxdugldq1qhw2JJborjv2yhuvlrq1sksBv@(g)y@(v)o@(v)w@(v)d@(g)r@(v)x@(v"), Integer.valueOf(Build.VERSION.SDK_INT), sb, ad.c(), qk.a((int) R.string.lang_code), Integer.valueOf(eu.b()), lh.p(), lh.o())) + pj.e() + ConfigListAdapter.d()).openConnection();
            if (bytes != null) {
                openConnection.setDoOutput(true);
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(openConnection.getOutputStream());
                gZIPOutputStream.write(bytes);
                gZIPOutputStream.close();
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(openConnection.getInputStream()));
            StringBuilder sb3 = new StringBuilder();
            String str3 = "";
            int a = gs.a(sb);
            String str4 = null;
            int a2 = gs.a(Float.toString(y.a));
            String str5 = null;
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    str = str5;
                    break;
                }
                str = str5 == null ? readLine : str5;
                if ("".equals(str3)) {
                    if (gs.a(readLine) <= a) {
                        break;
                    }
                    str4 = readLine;
                }
                sb3.append(readLine);
                sb3.append('\n');
                if (readLine.contains("ARMv5") && gs.a(str4) > a2) {
                    try {
                        y.a = Float.parseFloat(str4);
                        a2 = gs.a(str4);
                        str3 = readLine;
                        str5 = str;
                    } catch (NumberFormatException e) {
                        la.b("Failed parse as float '" + str4 + "'", e);
                    }
                }
                str3 = readLine;
                str5 = str;
            }
            bufferedReader.close();
            la.a("Server version: " + (str != null ? String.valueOf(str) + ' ' + gs.a(str) : "null"));
            if (str != null && gs.a(str) > a) {
                lh.a = true;
                rx.a(new lm(this, sb3, str));
            }
        } catch (Throwable th) {
            la.c("checkNewVersion", th);
        }
    }
}
