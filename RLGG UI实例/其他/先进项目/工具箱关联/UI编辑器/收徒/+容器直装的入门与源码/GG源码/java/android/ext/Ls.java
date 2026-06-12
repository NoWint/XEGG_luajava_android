package android.ext;

import java.io.File;

/* compiled from: src */
/* loaded from: classes.dex */
public class Ls {
    public static void main(String[] strArr) {
        File[] listFiles = new File(strArr[0]).listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file != null) {
                    System.out.println(file.getAbsolutePath());
                }
            }
        }
    }
}
