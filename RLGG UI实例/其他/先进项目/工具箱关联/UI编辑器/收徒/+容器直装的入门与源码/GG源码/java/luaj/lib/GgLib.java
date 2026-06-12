package luaj.lib;

import java.io.BufferedWriter;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import luaj.Globals;
import luaj.LuaString;
import luaj.LuaTable;
import luaj.LuaValue;
import luaj.ap;
import luaj.z;

/* compiled from: src */
/* loaded from: classes.dex */
public class GgLib {

    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class saveVariable extends VarArgFunction {
        static final String[] f = {"address", "value", "flags", "name", "freeze", "freezeType", "freezeFrom", "freezeTo"};
        final Globals a;
        Writer b;
        Map c;
        List d;
        final Integer e = 0;

        public saveVariable(Globals globals) {
            this.a = globals;
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaValue c = apVar.c(1);
            String r = apVar.r(2);
            this.a.a(r);
            try {
                b(c, r);
                return LuaValue.u;
            } catch (Throwable th) {
                return LuaValue.m(th.toString());
            }
        }

        /* JADX WARN: Type inference failed for: r4v0, types: [java.util.List, java.util.Map, java.io.Writer] */
        private void b(LuaValue luaValue, String str) {
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new i(this, str)), 65536);
                this.b = bufferedWriter;
                if (luaValue instanceof LuaTable) {
                    this.c = new HashMap();
                    b((LuaTable) luaValue);
                    this.d = new ArrayList(this.c.keySet());
                    S();
                    T();
                    bufferedWriter.write("\nreturn v[" + this.c.get(luaValue) + "]\n");
                    this.c = null;
                } else if (luaValue instanceof LuaString) {
                    bufferedWriter.write("return ");
                    a(bufferedWriter, luaValue.d_());
                    bufferedWriter.write(10);
                } else {
                    bufferedWriter.write("return ");
                    bufferedWriter.write(luaValue.d_());
                    bufferedWriter.write(10);
                }
                bufferedWriter.close();
            } finally {
                this.b = null;
                this.c = null;
                this.d = null;
            }
        }

        private void b(LuaTable luaTable) {
            if (((Integer) this.c.put(luaTable, this.e)) == null && (luaTable instanceof LuaTable)) {
                z S = luaTable.S();
                while (S.a()) {
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 < 2) {
                            LuaValue c = i2 == 0 ? S.c() : S.d();
                            if (c instanceof LuaTable) {
                                b((LuaTable) c);
                            }
                            i = i2 + 1;
                        }
                    }
                }
            }
        }

        private void S() {
            String[] strArr = f;
            this.b.write("local ");
            int length = strArr.length;
            for (int i = 0; i < length; i++) {
                this.b.write((char) (i + 97));
                this.b.write(44);
            }
            this.b.write("v,t=");
            for (String str : strArr) {
                this.b.write(39);
                this.b.write(str);
                this.b.write("',");
            }
            this.b.write("nil\nv={");
            Writer writer = this.b;
            Map map = this.c;
            int i2 = 0;
            for (LuaTable luaTable : this.d) {
                i2++;
                map.put(luaTable, Integer.valueOf(i2));
                writer.write("{");
                z S = luaTable.S();
                int i3 = 1;
                while (S.a()) {
                    int b = S.b();
                    if (b == 0) {
                        LuaValue c = S.c();
                        if (!(c instanceof LuaTable)) {
                            writer.write("[");
                            a(writer, strArr, map, c);
                            writer.write("]=");
                        }
                    } else if (b != i3) {
                        writer.write("[");
                        writer.write(Integer.toString(b));
                        writer.write("]=");
                    } else {
                        i3++;
                    }
                    LuaValue d = S.d();
                    if (d instanceof LuaTable) {
                        writer.write("nil");
                    } else {
                        a(writer, strArr, map, d);
                    }
                    writer.write(";");
                }
                writer.write("};");
            }
            writer.write("}");
        }

        private void a(Writer writer, String[] strArr, Map map, LuaValue luaValue) {
            if (luaValue instanceof LuaTable) {
                writer.write("v[");
                writer.write(Integer.toString(((Integer) map.get(luaValue)).intValue()));
                writer.write(93);
            } else if (luaValue instanceof LuaString) {
                String d_ = luaValue.d_();
                int length = strArr.length;
                for (int i = 0; i < length; i++) {
                    if (d_.equals(strArr[i])) {
                        writer.write(i + 97);
                        return;
                    }
                }
                a(writer, d_);
            } else {
                writer.write(luaValue.d_());
            }
        }

        private void T() {
            LuaValue c;
            String[] strArr = f;
            Writer writer = this.b;
            List<LuaTable> list = this.d;
            Map map = this.c;
            int i = 0;
            for (LuaTable luaTable : list) {
                i++;
                z S = luaTable.S();
                boolean z = true;
                while (S.a()) {
                    int b = S.b();
                    LuaValue d = S.d();
                    if (!(d instanceof LuaTable)) {
                        if (b == 0) {
                            c = S.c();
                            if (c instanceof LuaTable) {
                            }
                        }
                    } else {
                        c = b != 0 ? null : S.c();
                    }
                    if (z) {
                        writer.write("\nt=v[");
                        writer.write(Integer.toString(i));
                        writer.write(93);
                        z = false;
                    }
                    writer.write("\nt[");
                    if (c == null) {
                        writer.write(Integer.toString(b));
                    } else {
                        a(writer, strArr, map, c);
                    }
                    writer.write("]=");
                    a(writer, strArr, map, d);
                }
            }
        }

        private Appendable a(Appendable appendable, String str) {
            if (appendable == null) {
                appendable = new StringBuilder();
            }
            appendable.append('\'');
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                switch (charAt) {
                    case 7:
                        charAt = 'a';
                        break;
                    case '\b':
                        charAt = 'b';
                        break;
                    case '\t':
                        charAt = 't';
                        break;
                    case '\n':
                        charAt = 'n';
                        break;
                    case 11:
                        charAt = 'v';
                        break;
                    case '\f':
                        charAt = 'f';
                        break;
                    case '\r':
                        charAt = 'r';
                        break;
                    case '\'':
                    case '\\':
                        break;
                    default:
                        appendable.append(charAt);
                        continue;
                }
                appendable.append('\\');
                appendable.append(charAt);
            }
            appendable.append('\'');
            return appendable;
        }
    }
}
