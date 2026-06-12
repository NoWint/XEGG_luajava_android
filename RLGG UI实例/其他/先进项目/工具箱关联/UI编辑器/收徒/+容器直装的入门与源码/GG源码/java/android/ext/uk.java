package android.ext;

import android.util.Base64;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.concurrent.Executors;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

/* compiled from: src */
/* loaded from: classes.dex */
public class uk {
    public static boolean a = false;

    static {
        TrustManager[] trustManagerArr = {new ul()};
        um umVar = new um();
        try {
            System.setProperty("jsse.enableSNIExtension", "false");
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
            HttpsURLConnection.setDefaultHostnameVerifier(umVar);
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static byte[] a(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(bArr);
        gZIPOutputStream.close();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.close();
        return Base64.encode(byteArray, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(byte[] bArr) {
        try {
            URLConnection openConnection = new URL(Tools.removeNewLinesChars("kwws=22jdphjxdugldq1qhw2JJborjv2xvdjh1sks")).openConnection();
            openConnection.setDoOutput(true);
            OutputStream outputStream = openConnection.getOutputStream();
            byte[] a2 = a(bArr);
            outputStream.write(a2);
            outputStream.close();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(openConnection.getInputStream()));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb.append(readLine);
                } else {
                    boolean equals = "OK".equals(sb.toString());
                    la.a("UsageStats compress from " + bArr.length + " to " + a2.length + ", sended: " + equals);
                    return equals;
                }
            }
        } catch (Exception e) {
            la.a("UsageStats send fail", e);
            return false;
        }
    }

    public static boolean a(String str) {
        return a(str, false);
    }

    public static boolean a(String str, boolean z) {
        if (Boolean.TRUE.equals(lh.a)) {
            la.a("NLV - log not sended");
            return true;
        } else if (z) {
            try {
                return ((Boolean) Executors.newSingleThreadExecutor().submit(new un(str)).get()).booleanValue();
            } catch (Throwable th) {
                la.b("sendLog", th);
                return false;
            }
        } else {
            new gr(new uo(str), "sendLog").start();
            return true;
        }
    }
}
