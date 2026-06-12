package luaj.lib;

import luaj.LuaLong;
import luaj.LuaTable;
import luaj.LuaValue;
import luaj.ap;
import luaj.o;

/* compiled from: src */
/* loaded from: classes.dex */
public class TableLib extends TwoArgFunction {
    @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
        LuaTable luaTable = new LuaTable();
        luaTable.a("concat", new concat());
        luaTable.a("insert", new insert());
        luaTable.a("move", new move());
        luaTable.a("pack", new pack());
        luaTable.a("remove", new remove());
        luaTable.a("sort", new sort());
        luaTable.a("unpack", new unpack());
        luaValue2.a("table", luaTable);
        if (!luaValue2.j("package").F()) {
            luaValue2.j("package").j("loaded").a("table", luaTable);
        }
        return u;
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class concat extends TableLibFunction {
        concat() {
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            return luaValue.O().a(ad, 1, luaValue.L());
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
            return luaValue.O().a(luaValue2.z(), 1, luaValue.L());
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
            return luaValue.O().a(luaValue2.z(), luaValue3.v(), luaValue.L());
        }

        @Override // luaj.lib.LibFunction
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3, LuaValue luaValue4) {
            return luaValue.O().a(luaValue2.z(), luaValue3.v(), luaValue4.v());
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class insert extends VarArgFunction {
        insert() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            int j_ = apVar.j_();
            if (j_ != 2 && j_ != 3) {
                throw new o("wrong number of arguments to 'table.insert': " + apVar.j_() + " (must be 2 or 3)");
            }
            LuaTable t = apVar.t(1);
            int L = t.L();
            if (L >= 16777215) {
                throw new o("array too big: " + L + " >= 16777215");
            }
            int i = L + 1;
            int o = j_ == 2 ? i : apVar.o(2);
            if (o < 1 || o > i) {
                a(2, "table.insert", "position out of bounds: " + o + " not between 1 and " + i);
            }
            if (o >= 16777215) {
                throw new o("position too big: " + o + " >= 16777215");
            }
            t.c(o, apVar.c(j_ != 2 ? 3 : 2));
            return x;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class move extends VarArgFunction {
        move() {
        }

        private static long a(long j, long j2) {
            long j3 = j - j2;
            if (((j ^ j2) & (j ^ j3)) < 0) {
                return Long.MAX_VALUE;
            }
            return j3;
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaTable t = apVar.t(1);
            long p = apVar.p(2);
            long p2 = apVar.p(3);
            long p3 = apVar.p(4);
            LuaTable a = apVar.a(5, t);
            if (p <= p2) {
                long a2 = a(p2, p);
                if (a2 > 16777215 - 1) {
                    throw new o("too many elements to move: " + a2 + " (max is 16777215)");
                }
                if (p3 > 0 && a2 > Long.MAX_VALUE - p3) {
                    throw new o("move: destination wrap around");
                }
                boolean z = ((long) ((int) p)) == p && ((long) ((int) p2)) == p2;
                if (t == a) {
                    if (p3 <= p || p2 < p3) {
                        for (long j = p; j <= p2; j = 1 + j) {
                            a.b((LuaValue) LuaLong.b((j - p) + p3), z ? t.c_((int) j) : t.w(LuaLong.b(j)));
                            if (j == p2) {
                                break;
                            }
                        }
                    } else {
                        for (long j2 = p2; j2 >= p; j2--) {
                            a.b((LuaValue) LuaLong.b((j2 - p) + p3), z ? t.c_((int) j2) : t.w(LuaLong.b(j2)));
                            if (j2 == p) {
                                break;
                            }
                        }
                    }
                } else {
                    for (long j3 = p; j3 <= p2; j3 = 1 + j3) {
                        a.b((LuaValue) LuaLong.b((j3 - p) + p3), z ? t.c_((int) j3) : t.w(LuaLong.b(j3)));
                        if (j3 == p2) {
                            break;
                        }
                    }
                }
            }
            return a;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class pack extends VarArgFunction {
        pack() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaTable a = a(apVar, 1);
            a.a("n", apVar.j_());
            return a;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class remove extends VarArgFunction {
        remove() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaTable t = apVar.t(1);
            int L = t.L();
            int d = apVar.d(2, L);
            if (d != L && (d < 1 || d > L + 1)) {
                a(2, "table.remove", "position out of bounds: " + d + " not between 1 and " + (L + 1));
            }
            if (d >= 16777215) {
                throw new o("position too big: " + d + " >= 16777215");
            }
            return t.b(d, L);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class sort extends VarArgFunction {
        sort() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            apVar.t(1).D(apVar.f(2) ? u : apVar.n(2));
            return x;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class unpack extends VarArgFunction {
        unpack() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaTable t = apVar.t(1);
            return t.a(apVar.a(2, 1L), apVar.a(3, apVar.c(3).F() ? t.L() : 0));
        }
    }
}
