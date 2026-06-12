package lasm;

/* compiled from: src */
/* loaded from: classes.dex */
public class g extends Exception {
    public i a;
    public int[][] b;
    public String[] c;
    protected String d;

    public g(i iVar, int[][] iArr, String[] strArr) {
        super(a(iVar, iArr, strArr));
        this.d = System.getProperty("line.separator", "\n");
        this.a = iVar;
        this.b = iArr;
        this.c = strArr;
    }

    public g() {
        this.d = System.getProperty("line.separator", "\n");
    }

    public g(String str) {
        super(str);
        this.d = System.getProperty("line.separator", "\n");
    }

    public g(String str, Throwable th) {
        super(str, th);
        this.d = System.getProperty("line.separator", "\n");
    }

    private static String a(i iVar, int[][] iArr, String[] strArr) {
        String str;
        String property = System.getProperty("line.separator", "\n");
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (i < iArr[i2].length) {
                i = iArr[i2].length;
            }
            for (int i3 = 0; i3 < iArr[i2].length; i3++) {
                stringBuffer.append(strArr[iArr[i2][i3]]).append(' ');
            }
            if (iArr[i2][iArr[i2].length - 1] != 0) {
                stringBuffer.append("...");
            }
            stringBuffer.append(property).append("    ");
        }
        String str2 = "Encountered \"";
        i iVar2 = iVar.g;
        int i4 = 0;
        while (true) {
            if (i4 >= i) {
                break;
            }
            if (i4 != 0) {
                str2 = String.valueOf(str2) + " ";
            }
            if (iVar2.a == 0) {
                str2 = String.valueOf(str2) + strArr[0];
                break;
            }
            str2 = String.valueOf(String.valueOf(String.valueOf(String.valueOf(str2) + " " + strArr[iVar2.a]) + " \"") + a(iVar2.f)) + " \"";
            iVar2 = iVar2.g;
            i4++;
        }
        String str3 = String.valueOf(String.valueOf(str2) + "\" at line " + iVar.g.b + ", column " + iVar.g.c) + "." + property;
        if (iArr.length == 1) {
            str = String.valueOf(str3) + "Was expecting:" + property + "    ";
        } else {
            str = String.valueOf(str3) + "Was expecting one of:" + property + "    ";
        }
        return String.valueOf(str) + stringBuffer.toString();
    }

    static String a(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            switch (str.charAt(i)) {
                case 0:
                    break;
                case '\b':
                    stringBuffer.append("\\b");
                    break;
                case '\t':
                    stringBuffer.append("\\t");
                    break;
                case '\n':
                    stringBuffer.append("\\n");
                    break;
                case '\f':
                    stringBuffer.append("\\f");
                    break;
                case '\r':
                    stringBuffer.append("\\r");
                    break;
                case '\"':
                    stringBuffer.append("\\\"");
                    break;
                case '\'':
                    stringBuffer.append("\\'");
                    break;
                case '\\':
                    stringBuffer.append("\\\\");
                    break;
                default:
                    char charAt = str.charAt(i);
                    if (charAt < ' ' || charAt > '~') {
                        String str2 = "0000" + Integer.toString(charAt, 16);
                        stringBuffer.append("\\u" + str2.substring(str2.length() - 4, str2.length()));
                        break;
                    } else {
                        stringBuffer.append(charAt);
                        break;
                    }
            }
        }
        return stringBuffer.toString();
    }
}
