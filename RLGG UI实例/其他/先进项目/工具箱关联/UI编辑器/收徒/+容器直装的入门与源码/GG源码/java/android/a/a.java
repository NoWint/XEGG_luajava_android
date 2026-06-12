package android.a;

import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.Formatter;
import java.util.Locale;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class a extends PrintStream {
    private final StringBuilder a;
    private ByteBuffer b;
    private CharBuffer c;
    private CharsetDecoder d;
    private final Formatter e;

    protected abstract void a(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public a() {
        super(new b());
        this.a = new StringBuilder();
        this.e = new Formatter(this.a, (Locale) null);
    }

    @Override // java.io.PrintStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public synchronized void flush() {
        a(true);
    }

    private void a(boolean z) {
        int length = this.a.length();
        int i = 0;
        while (i < length) {
            int indexOf = this.a.indexOf("\n", i);
            if (indexOf == -1) {
                break;
            }
            a(this.a.substring(i, indexOf));
            i = indexOf + 1;
        }
        if (z) {
            if (i < length || length == 0) {
                a(this.a.substring(i));
            }
            this.a.setLength(0);
            return;
        }
        this.a.delete(0, i);
    }

    @Override // java.io.PrintStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.PrintStream, java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) {
        CoderResult decode;
        if (this.d == null) {
            this.b = ByteBuffer.allocate(80);
            this.c = CharBuffer.allocate(80);
            this.d = Charset.defaultCharset().newDecoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
        }
        int i3 = i + i2;
        while (i < i3) {
            int min = Math.min(this.b.remaining(), i3 - i);
            this.b.put(bArr, i, min);
            i += min;
            this.b.flip();
            do {
                decode = this.d.decode(this.b, this.c, false);
                this.c.flip();
                this.a.append((CharSequence) this.c);
                this.c.clear();
            } while (decode.isOverflow());
            this.b.compact();
        }
        a(false);
    }

    @Override // java.io.PrintStream
    public boolean checkError() {
        return false;
    }

    @Override // java.io.PrintStream
    protected void setError() {
    }

    @Override // java.io.PrintStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.PrintStream
    public PrintStream format(String str, Object... objArr) {
        return format(Locale.getDefault(), str, objArr);
    }

    @Override // java.io.PrintStream
    public PrintStream printf(String str, Object... objArr) {
        return format(str, objArr);
    }

    @Override // java.io.PrintStream
    public PrintStream printf(Locale locale, String str, Object... objArr) {
        return format(locale, str, objArr);
    }

    @Override // java.io.PrintStream
    public synchronized PrintStream format(Locale locale, String str, Object... objArr) {
        if (str == null) {
            throw new NullPointerException("format");
        }
        this.e.format(locale, str, objArr);
        a(false);
        return this;
    }

    @Override // java.io.PrintStream
    public synchronized void print(char[] cArr) {
        this.a.append(cArr);
        a(false);
    }

    @Override // java.io.PrintStream
    public synchronized void print(char c) {
        this.a.append(c);
        if (c == '\n') {
            a(false);
        }
    }

    @Override // java.io.PrintStream
    public synchronized void print(double d) {
        this.a.append(d);
    }

    @Override // java.io.PrintStream
    public synchronized void print(float f) {
        this.a.append(f);
    }

    @Override // java.io.PrintStream
    public synchronized void print(int i) {
        this.a.append(i);
    }

    @Override // java.io.PrintStream
    public synchronized void print(long j) {
        this.a.append(j);
    }

    @Override // java.io.PrintStream
    public synchronized void print(Object obj) {
        this.a.append(obj);
        a(false);
    }

    @Override // java.io.PrintStream
    public synchronized void print(String str) {
        this.a.append(str);
        a(false);
    }

    @Override // java.io.PrintStream
    public synchronized void print(boolean z) {
        this.a.append(z);
    }

    @Override // java.io.PrintStream
    public synchronized void println() {
        a(true);
    }

    @Override // java.io.PrintStream
    public synchronized void println(char[] cArr) {
        this.a.append(cArr);
        a(true);
    }

    @Override // java.io.PrintStream
    public synchronized void println(char c) {
        this.a.append(c);
        a(true);
    }

    @Override // java.io.PrintStream
    public synchronized void println(double d) {
        this.a.append(d);
        a(true);
    }

    @Override // java.io.PrintStream
    public synchronized void println(float f) {
        this.a.append(f);
        a(true);
    }

    @Override // java.io.PrintStream
    public synchronized void println(int i) {
        this.a.append(i);
        a(true);
    }

    @Override // java.io.PrintStream
    public synchronized void println(long j) {
        this.a.append(j);
        a(true);
    }

    @Override // java.io.PrintStream
    public synchronized void println(Object obj) {
        this.a.append(obj);
        a(true);
    }

    @Override // java.io.PrintStream
    public synchronized void println(String str) {
        if (this.a.length() == 0 && str != null) {
            int length = str.length();
            int i = 0;
            while (i < length) {
                int indexOf = str.indexOf(10, i);
                if (indexOf == -1) {
                    break;
                }
                a(str.substring(i, indexOf));
                i = indexOf + 1;
            }
            if (i < length) {
                a(str.substring(i));
            }
        } else {
            this.a.append(str);
            a(true);
        }
    }

    @Override // java.io.PrintStream
    public synchronized void println(boolean z) {
        this.a.append(z);
        a(true);
    }

    @Override // java.io.PrintStream, java.lang.Appendable
    public synchronized PrintStream append(char c) {
        print(c);
        return this;
    }

    @Override // java.io.PrintStream, java.lang.Appendable
    public synchronized PrintStream append(CharSequence charSequence) {
        this.a.append(charSequence);
        a(false);
        return this;
    }

    @Override // java.io.PrintStream, java.lang.Appendable
    public synchronized PrintStream append(CharSequence charSequence, int i, int i2) {
        this.a.append(charSequence, i, i2);
        a(false);
        return this;
    }
}
