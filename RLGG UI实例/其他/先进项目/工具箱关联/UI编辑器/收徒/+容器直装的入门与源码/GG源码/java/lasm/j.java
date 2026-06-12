package lasm;

/* compiled from: src */
/* loaded from: classes.dex */
public class j extends Error {
    int a;
    int b;
    int c;

    protected static final String a(String str) {
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

    protected static String a(boolean z, int i, int i2, int i3, String str, char c) {
        return "Lexical error at line " + i2 + ", column " + i3 + ".  Encountered: " + (z ? "<EOF> " : "\"" + a(String.valueOf(c)) + "\" (" + ((int) c) + "), ") + "after : \"" + a(str) + "\"";
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return super.getMessage();
    }

    public j() {
    }

    public j(String str, int i) {
        super(str);
        this.a = i;
    }

    public j(boolean z, int i, int i2, int i3, String str, char c, int i4) {
        this(a(z, i, i2, i3, str, c), i4);
        this.b = i2;
        this.c = i3;
    }
}
