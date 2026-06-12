package android.ext;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;
import luaj.Globals;
import luaj.LuaBoolean;
import luaj.LuaClosure;
import luaj.LuaDouble;
import luaj.LuaFunction;
import luaj.LuaLong;
import luaj.LuaNil;
import luaj.LuaNumber;
import luaj.LuaString;
import luaj.LuaTable;
import luaj.LuaThread;
import luaj.LuaValue;
import luaj.lib.BaseLib;
import luaj.lib.Bit32Lib;
import luaj.lib.DebugLib;
import luaj.lib.GgLib;
import luaj.lib.IoLib;
import luaj.lib.MathLib;
import luaj.lib.OsLib;
import luaj.lib.PackageLib;
import luaj.lib.StringLib;
import luaj.lib.TableLib;
import luaj.lib.TwoArgFunction;
import luaj.lib.Utf8Lib;
import luaj.lib.VarArgFunction;

/* compiled from: src */
/* loaded from: classes.dex */
public class Script extends TwoArgFunction {
    private static volatile int al = 0;
    private static WeakReference ao = new WeakReference(null);
    static volatile ArrayList k = null;
    static volatile int l = 0;
    static volatile long m = 0;
    static final LuaString[] n = {LuaString.c("address"), LuaString.c("value"), LuaString.c("flags"), LuaString.c("name"), LuaString.c("freeze"), LuaString.c("freezeType"), LuaString.c("freezeFrom"), LuaString.c("freezeTo")};
    static final int[] o = new int[3];
    static final int[] p = new int[8];
    static DebugLog r;
    private final byte ai;
    private String ap;
    private String aq;
    private String ar;
    private String as;
    final Object b;
    final int e;
    final String f;
    Consts i;
    volatile String j;
    volatile SavedState q;
    private volatile int am = 0;
    private volatile byte an = -1;
    volatile boolean g = true;
    volatile int h = 0;
    final Globals a = new Globals();
    final Thread c = new ScriptThread();
    final Logger d = new Logger();

    static {
        for (int i = 0; i < o.length; i++) {
            o[i] = LuaTable.a((LuaValue) n[i], 3);
        }
        for (int i2 = 0; i2 < p.length; i2++) {
            p[i2] = LuaTable.a((LuaValue) n[i2], 7);
        }
        r = null;
    }

    public Script(String str, int i, String str2) {
        int i2 = al;
        al = i2 + 1;
        this.ai = (byte) (i2 % 5);
        this.i = null;
        this.ap = null;
        this.aq = null;
        this.ar = null;
        this.as = null;
        this.j = null;
        this.q = null;
        this.b = str;
        this.e = i;
        this.f = str2;
        S();
    }

    public Script(File file, int i, String str) {
        int i2 = al;
        al = i2 + 1;
        this.ai = (byte) (i2 % 5);
        this.i = null;
        this.ap = null;
        this.aq = null;
        this.ar = null;
        this.as = null;
        this.j = null;
        this.q = null;
        luaj.f.g = false;
        this.b = file;
        this.e = i;
        this.f = str;
        S();
    }

    private void S() {
        Globals globals = this.a;
        luaj.f.a(globals);
        luaj.a.t.a(globals);
        globals.F(new BaseLib());
        globals.F(new PackageLib());
        globals.F(new Bit32Lib());
        globals.F(new TableLib());
        globals.F(new StringLib());
        globals.F(new Utf8Lib());
        globals.F(new MathLib());
        globals.F(new IoLibSafe());
        globals.F(new OsLibSafe());
        globals.F(new DebugLib());
        T();
    }

    private void T() {
        Globals globals = this.a;
        globals.e = new ScriptPrintStream(false);
        globals.f = new ScriptPrintStream(true);
        globals.F(this);
    }

    void a(boolean z, String str) {
        if (z) {
            this.d.a("err: ");
        }
        this.d.a(str);
        this.d.a("\n");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public class ScriptPrintStream extends android.a.a {
        final boolean a;

        public ScriptPrintStream(boolean z) {
            this.a = z;
        }

        @Override // android.a.a
        protected void a(String str) {
            Script.this.a(this.a, str);
            String str2 = "script: " + str;
            if (this.a) {
                la.c(str2);
            } else {
                la.a(str2);
            }
        }
    }

    @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
        Context e = Tools.e();
        ArrayList arrayList = (this.e & 4) != 0 ? new ArrayList() : null;
        LuaTable luaTable = new LuaTable(0, 128);
        luaTable.d("VERSION", new StringBuilder().append((108.0f * 1) - 6.9f).toString());
        luaTable.b("VERSION_INT", gs.c());
        luaTable.b("BUILD", (int) (((16396.7f * 1) - 254.7f) + 0.5f));
        luaTable.d("PACKAGE", Tools.g());
        luaTable.b("ANDROID_SDK_INT", Build.VERSION.SDK_INT);
        luaTable.d("FILES_DIR", Tools.i().getAbsolutePath());
        luaTable.d("CACHE_DIR", Tools.h().getAbsolutePath());
        try {
            luaTable.d("EXT_FILES_DIR", e.getExternalFilesDir(null).getAbsolutePath());
        } catch (Throwable th) {
            la.c("Failed set EXT_FILES_DIR for script", th);
            luaTable.d("EXT_FILES_DIR", Tools.i().getAbsolutePath());
        }
        try {
            luaTable.d("EXT_CACHE_DIR", e.getExternalCacheDir().getAbsolutePath());
        } catch (Throwable th2) {
            la.c("Failed set EXT_CACHE_DIR for script", th2);
            luaTable.d("EXT_CACHE_DIR", Tools.h().getAbsolutePath());
        }
        luaTable.d("EXT_STORAGE", Tools.r());
        a(luaTable, arrayList);
        luaTable.b("require", new require());
        luaTable.b("toast", new toast());
        luaTable.b("alert", new alert());
        luaTable.b("prompt", new prompt());
        luaTable.b("choice", new choice());
        luaTable.b("multiChoice", new multiChoice());
        luaTable.b("isVisible", new isVisible());
        luaTable.b("setVisible", new setVisible());
        luaTable.b("getActiveTab", new getActiveTab());
        luaTable.b("showUiButton", new showUiButton());
        luaTable.b("hideUiButton", new hideUiButton());
        luaTable.b("isClickedUiButton", new isClickedUiButton());
        getTargetPackage gettargetpackage = new getTargetPackage();
        luaTable.b("getTargetPackage", gettargetpackage);
        luaTable.b("getTargetInfo", new getTargetInfo());
        luaTable.b("isPackageInstalled", new isPackageInstalled());
        luaTable.b("processKill", new processKill());
        luaTable.b("saveVariable", new saveVariable());
        luaTable.b("makeRequest", new makeRequest());
        getResultsCount getresultscount = new getResultsCount();
        luaTable.b("getResultsCount", getresultscount);
        luaTable.b("getResults", new getResults());
        luaTable.b("editAll", new editAll());
        luaTable.b("clearResults", new clearResults());
        luaTable.b("removeResults", new removeResults());
        luaTable.b("loadResults", new loadResults());
        luaTable.b("getSelectedResults", new getSelectedResults());
        luaTable.b("setValues", new setValues());
        luaTable.b("getValues", new getValues());
        luaTable.b("getValuesRange", new getValuesRange());
        luaTable.b("processPause", new processPause());
        luaTable.b("processResume", new processResume());
        luaTable.b("processToggle", new processToggle());
        luaTable.b("isProcessPaused", new isProcessPaused());
        luaTable.b("timeJump", new timeJump());
        luaTable.b("setSpeed", new setSpeed());
        luaTable.b("getSpeed", new getSpeed());
        luaTable.b("unrandomizer", new unrandomizer());
        luaTable.b("gotoAddress", new gotoAddress());
        luaTable.b("getSelectedElements", new getSelectedElements());
        luaTable.b("getRanges", new getRanges());
        luaTable.b("setRanges", new setRanges());
        luaTable.b("copyMemory", new copyMemory());
        luaTable.b("dumpMemory", new dumpMemory());
        luaTable.b("loadList", new loadList());
        luaTable.b("saveList", new saveList());
        luaTable.b("clearList", new clearList());
        luaTable.b("addListItems", new addListItems());
        luaTable.b("getListItems", new getListItems());
        luaTable.b("removeListItems", new removeListItems());
        luaTable.b("getSelectedListItems", new getSelectedListItems());
        luaTable.b("searchNumber", new searchNumber());
        luaTable.b("refineNumber", new refineNumber());
        luaTable.b("searchAddress", new searchAddress());
        luaTable.b("refineAddress", new refineAddress());
        luaTable.b("startFuzzy", new startFuzzy());
        luaTable.b("searchFuzzy", new searchFuzzy());
        searchPointer searchpointer = new searchPointer();
        luaTable.b("searchPointer", searchpointer);
        luaTable.b("sleep", new sleep());
        luaTable.b("copyText", new copyText());
        luaTable.b("disasm", new disasm());
        luaTable.b("getLine", new getLine());
        luaTable.b("getFile", new getFile());
        luaTable.b("bytes", new bytes());
        luaTable.b("skipRestoreState", new skipRestoreState());
        luaTable.b("getRangesList", new getRangesList());
        luaTable.b("allocatePage", new allocatePage());
        luaTable.b("getLocale", new getLocale());
        luaTable.b("numberToLocale", new numberToLocale());
        luaTable.b("numberFromLocale", new numberFromLocale());
        luaTable.c(LuaValue.m("SIGN_INEQUAL").P(), LuaValue.d(268435456L));
        luaTable.c(LuaValue.m("SIGN_SMALLER").P(), LuaValue.d(134217728L));
        luaTable.c(LuaValue.m("SIGN_LARGER").P(), LuaValue.d(67108864L));
        luaTable.c(LuaValue.m("getSelectedPackage").P(), gettargetpackage);
        luaTable.c(LuaValue.m("getResultCount").P(), getresultscount);
        luaTable.c(LuaValue.m("internal1").P(), new internal1());
        luaTable.c(LuaValue.m("internal2").P(), new internal2());
        luaTable.c(LuaValue.m("internal3").P(), searchpointer);
        luaValue2.a("gg", luaTable);
        luaValue2.j("package").j("loaded").a("gg", luaTable);
        LuaValue j = luaValue2.j("os");
        j.a("exit", new exit());
        j.a("remove", new wrap("os.remove", j.j("remove"), 1));
        j.a("rename", new wrap("os.rename", j.j("rename"), 2));
        j.a("tmpname", new wrap("os.tmpname", j.j("tmpname"), 0));
        LuaValue j2 = luaValue2.j("string");
        j2.a("format", new format(j2.j("format")));
        j2.a("dump", new wrap("string.dump", j2.j("dump"), 1));
        LuaValue j3 = luaValue2.j("io");
        j3.a("open", new wrap("io.open", j3.j("open"), 2));
        j3.a("input", new wrap("io.input", j3.j("input"), 1));
        j3.a("output", new wrap("io.output", j3.j("output"), 1));
        j3.a("tmpfile", new wrap("io.tmpfile", j3.j("tmpfile"), 0));
        j3.a("lines", new wrap("io.lines", j3.j("lines"), 1));
        LuaValue j4 = luaValue2.j("debug");
        j4.a("debug", new wrap("debug.debug", j4.j("debug"), 0));
        j4.a("gethook", new wrap("debug.gethook", j4.j("gethook"), 1));
        j4.a("getinfo", new wrap("debug.getinfo", j4.j("getinfo"), 3));
        j4.a("getlocal", new wrap("debug.getlocal", j4.j("getlocal"), 3));
        j4.a("getmetatable", new wrap("debug.getmetatable", j4.j("getmetatable"), 1));
        j4.a("getregistry", new wrap("debug.getregistry", j4.j("getregistry"), 0));
        j4.a("getupvalue", new wrap("debug.getupvalue", j4.j("getupvalue"), 2));
        j4.a("getuservalue", new wrap("debug.getuservalue", j4.j("getuservalue"), 1));
        j4.a("sethook", new wrap("debug.sethook", j4.j("sethook"), 4));
        j4.a("setlocal", new wrap("debug.setlocal", j4.j("setlocal"), 4));
        j4.a("setmetatable", new wrap("debug.setmetatable", j4.j("setmetatable"), 2));
        j4.a("setupvalue", new wrap("debug.setupvalue", j4.j("setupvalue"), 3));
        j4.a("setuservalue", new wrap("debug.setuservalue", j4.j("setuservalue"), 2));
        j4.a("traceback", new wrap("debug.traceback", j4.j("traceback"), 3));
        j4.a("upvalueid", new wrap("debug.upvalueid", j4.j("upvalueid"), 2));
        j4.a("upvaluejoin", new wrap("debug.upvaluejoin", j4.j("upvaluejoin"), 4));
        this.i = arrayList != null ? a(arrayList) : new Consts();
        return luaTable;
    }

    static void a(LuaTable luaTable, ArrayList arrayList) {
        a(arrayList, luaTable, "TYPE_AUTO", 127);
        a(arrayList, luaTable, "TYPE_BYTE", 1);
        a(arrayList, luaTable, "TYPE_WORD", 2);
        a(arrayList, luaTable, "TYPE_DWORD", 4);
        a(arrayList, luaTable, "TYPE_XOR", 8);
        a(arrayList, luaTable, "TYPE_FLOAT", 16);
        a(arrayList, luaTable, "TYPE_QWORD", 32);
        a(arrayList, luaTable, "TYPE_DOUBLE", 64);
        a(arrayList, luaTable, "SIGN_EQUAL", 536870912);
        a(arrayList, luaTable, "SIGN_NOT_EQUAL", 268435456);
        a(arrayList, luaTable, "SIGN_LESS_OR_EQUAL", 134217728);
        a(arrayList, luaTable, "SIGN_GREATER_OR_EQUAL", 67108864);
        a(arrayList, luaTable, "SIGN_FUZZY_EQUAL", 536870912);
        a(arrayList, luaTable, "SIGN_FUZZY_NOT_EQUAL", 268435456);
        a(arrayList, luaTable, "SIGN_FUZZY_LESS", 134217728);
        a(arrayList, luaTable, "SIGN_FUZZY_GREATER", 67108864);
        a(arrayList, luaTable, "REGION_JAVA_HEAP", 2);
        a(arrayList, luaTable, "REGION_C_HEAP", 1);
        a(arrayList, luaTable, "REGION_C_ALLOC", 4);
        a(arrayList, luaTable, "REGION_C_DATA", 8);
        a(arrayList, luaTable, "REGION_C_BSS", 16);
        a(arrayList, luaTable, "REGION_PPSSPP", 262144);
        a(arrayList, luaTable, "REGION_ANONYMOUS", 32);
        a(arrayList, luaTable, "REGION_JAVA", 65536);
        a(arrayList, luaTable, "REGION_STACK", 64);
        a(arrayList, luaTable, "REGION_ASHMEM", 524288);
        a(arrayList, luaTable, "REGION_VIDEO", 1048576);
        a(arrayList, luaTable, "REGION_OTHER", -2080896);
        a(arrayList, luaTable, "REGION_BAD", 131072);
        a(arrayList, luaTable, "REGION_CODE_APP", 16384);
        a(arrayList, luaTable, "REGION_CODE_SYS", 32768);
        a(arrayList, luaTable, "LOAD_VALUES_FREEZE", 3);
        a(arrayList, luaTable, "LOAD_VALUES", 2);
        a(arrayList, luaTable, "LOAD_APPEND", 8);
        a(arrayList, luaTable, "SAVE_AS_TEXT", 1);
        luaTable.b("FREEZE_NORMAL", 0);
        luaTable.b("FREEZE_MAY_INCREASE", 1);
        luaTable.b("FREEZE_MAY_DECREASE", 2);
        luaTable.b("FREEZE_IN_RANGE", 3);
        luaTable.b("PROT_NONE", 0);
        a(arrayList, luaTable, "PROT_READ", 2);
        a(arrayList, luaTable, "PROT_WRITE", 1);
        a(arrayList, luaTable, "PROT_EXEC", 4);
        a(arrayList, luaTable, "POINTER_NO", 4);
        a(arrayList, luaTable, "POINTER_READ_ONLY", 8);
        a(arrayList, luaTable, "POINTER_WRITABLE", 16);
        a(arrayList, luaTable, "POINTER_EXECUTABLE", 2);
        a(arrayList, luaTable, "POINTER_EXECUTABLE_WRITABLE", 1);
        a(arrayList, luaTable, "DUMP_SKIP_SYSTEM_LIBS", 1);
        a(arrayList, luaTable, "TAB_SETTINGS", 0);
        a(arrayList, luaTable, "TAB_SEARCH", 1);
        a(arrayList, luaTable, "TAB_SAVED_LIST", 2);
        a(arrayList, luaTable, "TAB_MEMORY_EDITOR", 3);
        a(arrayList, luaTable, "ASM_ARM", 4);
        a(arrayList, luaTable, "ASM_THUMB", 5);
        a(arrayList, luaTable, "ASM_ARM64", 6);
    }

    public static Consts a(ArrayList arrayList) {
        Consts consts = (Consts) ao.get();
        if (consts == null) {
            if (arrayList == null) {
                arrayList = new ArrayList();
                a(new LuaTable(0, 64), arrayList);
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            ArrayList arrayList7 = new ArrayList();
            ArrayList arrayList8 = new ArrayList();
            ArrayList arrayList9 = new ArrayList();
            ArrayList arrayList10 = new ArrayList();
            ArrayList arrayList11 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Const r0 = (Const) it.next();
                String str = r0.a;
                if (str.startsWith("gg.REGION_")) {
                    arrayList2.add(r0);
                } else if (str.startsWith("gg.TYPE_")) {
                    arrayList3.add(r0);
                } else if (str.startsWith("gg.SIGN_FUZZY_")) {
                    arrayList4.add(r0);
                } else if (str.startsWith("gg.SIGN_")) {
                    arrayList5.add(r0);
                } else if (str.startsWith("gg.LOAD_")) {
                    arrayList6.add(r0);
                } else if (str.startsWith("gg.SAVE_")) {
                    arrayList7.add(r0);
                } else if (str.startsWith("gg.PROT_")) {
                    arrayList8.add(r0);
                } else if (str.startsWith("gg.POINTER_")) {
                    arrayList9.add(r0);
                } else if (str.startsWith("gg.DUMP_")) {
                    arrayList10.add(r0);
                } else if (str.startsWith("gg.ASM_")) {
                    arrayList11.add(r0);
                }
            }
            Consts consts2 = new Consts();
            consts2.a = (Const[]) arrayList2.toArray(new Const[arrayList2.size()]);
            consts2.b = (Const[]) arrayList3.toArray(new Const[arrayList3.size()]);
            consts2.c = (Const[]) arrayList4.toArray(new Const[arrayList4.size()]);
            consts2.d = (Const[]) arrayList5.toArray(new Const[arrayList5.size()]);
            consts2.e = (Const[]) arrayList6.toArray(new Const[arrayList6.size()]);
            consts2.f = (Const[]) arrayList7.toArray(new Const[arrayList7.size()]);
            consts2.g = (Const[]) arrayList8.toArray(new Const[arrayList8.size()]);
            consts2.h = (Const[]) arrayList9.toArray(new Const[arrayList9.size()]);
            consts2.i = (Const[]) arrayList10.toArray(new Const[arrayList10.size()]);
            consts2.j = (Const[]) arrayList11.toArray(new Const[arrayList11.size()]);
            ao = new WeakReference(consts2);
            return consts2;
        }
        return consts;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public class Consts {
        Const[] a = null;
        Const[] b = null;
        Const[] c = null;
        Const[] d = null;
        Const[] e = null;
        Const[] f = null;
        Const[] g = null;
        Const[] h = null;
        Const[] i = null;
        Const[] j = null;

        Consts() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean a(Writer writer, Const[] constArr, int i) {
            try {
                boolean z = true;
                int i2 = i;
                for (Const r6 : constArr) {
                    int i3 = r6.b;
                    if ((i2 & i3) == i3) {
                        writer.write(r6.a);
                        i2 &= i3 ^ (-1);
                        if (i2 != 0) {
                            writer.write(" | ");
                        }
                        z = false;
                    }
                }
                if (z || i2 != 0) {
                    writer.write(Integer.toString(i2));
                }
                return true;
            } catch (IOException e) {
                la.b("Writer fail", e);
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean a(Writer writer, long j) {
            try {
                if (j == 0 || j == -1) {
                    writer.write(Long.toString(j));
                } else {
                    writer.write("0x");
                    writer.write(Long.toHexString(j));
                }
                return true;
            } catch (IOException e) {
                la.b("Writer fail", e);
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean a(Writer writer, String str) {
            try {
                writer.write("\"");
                if (str.length() <= 65535) {
                    str = str.replace("\"", "\\\"");
                }
                writer.write(str);
                writer.write("\"");
                return true;
            } catch (IOException e) {
                la.b("Writer fail", e);
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean b(Writer writer, String str) {
            return a(writer, Script.a_(str));
        }
    }

    private static void a(ArrayList arrayList, LuaTable luaTable, String str, int i) {
        luaTable.b(str, i);
        if (arrayList != null) {
            arrayList.add(new Const("gg." + str, i));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public class Const {
        final String a;
        final int b;

        public Const(String str, int i) {
            this.a = str;
            this.b = i;
        }
    }

    static String a(File file) {
        try {
            return file.getCanonicalPath();
        } catch (IOException e) {
            return file.getAbsolutePath();
        }
    }

    boolean a(String str, boolean z) {
        String a = a(new File(str));
        String str2 = this.aq;
        if (str2 == null) {
            str2 = a(Tools.l());
            this.aq = str2;
        }
        if (a.startsWith(str2)) {
            return true;
        }
        String str3 = this.ar;
        if (str3 == null) {
            str3 = a(Tools.k());
            this.ar = str3;
        }
        if (a.startsWith(str3)) {
            return true;
        }
        String str4 = this.as;
        if (str4 == null) {
            str4 = a(ty.b(MainService.a));
            this.as = str4;
        }
        if (str4.startsWith(a) && (str4.length() == a.length() || str4.charAt(a.length()) == '/')) {
            return true;
        }
        if (z || !(this.b instanceof File)) {
            return false;
        }
        String str5 = this.ap;
        if (str5 == null) {
            str5 = a((File) this.b);
            this.ap = str5;
        }
        return str5.startsWith(a) && (str5.length() == a.length() || str5.charAt(a.length()) == '/');
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class IoLibSafe extends IoLib {
        IoLibSafe() {
        }

        @Override // luaj.lib.IoLib
        protected IoLib.File a(String str, char c) {
            if (Script.this.a(str, c == 'r')) {
                File file = new File(Tools.l(), "empty.txt");
                file.createNewFile();
                IoLib.File a = super.a(file.getAbsolutePath(), c);
                file.delete();
                return a;
            }
            return super.a(str, c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class OsLibSafe extends OsLib {
        OsLibSafe() {
        }

        @Override // luaj.lib.OsLib
        protected void a(String str) {
            if (!Script.this.a(str, false)) {
                super.a(str);
            }
        }

        @Override // luaj.lib.OsLib
        protected void a(String str, String str2) {
            if (!Script.this.a(str, false) && !Script.this.a(str2, false)) {
                super.a(str, str2);
            }
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class wrap extends VarArgFunction {
        final LuaValue a;
        final String b;
        final int c;

        wrap(String str, LuaValue luaValue, int i) {
            this.a = luaValue;
            this.b = str;
            this.c = i;
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public luaj.ap a_(luaj.ap apVar) {
            Globals globals;
            DebugLog debugLog = Script.r;
            Writer writer = debugLog == null ? null : debugLog.a;
            if (writer != null) {
                long nanoTime = System.nanoTime();
                try {
                    writer.write(this.b);
                    writer.write("(");
                    int j_ = apVar.j_();
                    int i = this.c;
                    if (i < 0 || j_ <= i) {
                        i = j_;
                    }
                    for (int i2 = 1; i2 <= i; i2++) {
                        if (i2 != 1) {
                            writer.write(", ");
                        }
                        ApiFunction.a((ApiFunction) null, writer, i2, apVar.c(i2));
                    }
                    writer.write(")\n");
                } catch (Throwable th) {
                    la.b("Failed write log for " + this.b, th);
                }
                debugLog.b.d = (int) (globals.d + ((System.nanoTime() - nanoTime) / 1000000));
            }
            return this.a.a_(apVar);
        }

        @Override // luaj.lib.LibFunction, luaj.LuaFunction, luaj.LuaValue, luaj.ap
        public String d_() {
            return this.a.d_();
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class format extends VarArgFunction {
        final LuaValue a;

        public format(LuaValue luaValue) {
            this.a = luaValue;
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public luaj.ap a_(luaj.ap apVar) {
            return this.a.a_(LuaValue.b(LuaValue.m(qk.a(apVar.r(1)).replace("%,d", "%d")), apVar.e_(2)));
        }
    }

    static void a(Object obj) {
        try {
            obj.wait();
        } catch (InterruptedException e) {
            la.b("Interrupted wait", e);
            Thread.currentThread().interrupt();
            throw new luaj.o(e);
        }
    }

    public void a(byte b, String str) {
        byte b2 = (byte) (b - 20);
        byte b3 = (byte) (b2 / 20);
        byte b4 = (byte) (b2 % 20);
        if (this.ai != b3) {
            la.a("callNotify id mismatch: " + ((int) this.ai) + " != " + ((int) b3) + "; " + ((int) b4) + "; " + ((int) b) + "; " + str);
            return;
        }
        byte b5 = this.an;
        if (b5 == b4) {
            synchronized (this) {
                b5 = this.an;
                if (b5 == b4) {
                    this.j = str;
                    notifyAll();
                    return;
                }
            }
        }
        la.a("callNotify seq mismatch: " + ((int) b5) + " != " + ((int) b4) + "; " + ((int) b3) + "; " + ((int) b) + "; " + str);
    }

    byte a() {
        int i = this.am;
        this.am = i + 1;
        byte b = (byte) (i % 20);
        this.an = b;
        return (byte) (b + (this.ai * 20) + 20);
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    public abstract class ApiFunction extends VarArgFunction {
        static WeakReference b = new WeakReference(null);
        static WeakReference c = new WeakReference(null);
        private static Map h = null;
        private static Map i = null;
        private static Map j = null;
        private static Map k = null;
        private String g;
        private final boolean f = this instanceof BusyApiFunction;
        private volatile luaj.ap d = null;
        private volatile Throwable e = null;
        protected volatile Object a = new Object();

        abstract String a();

        protected abstract int m_();

        @Override // luaj.LuaFunction
        public String g_() {
            String str = this.g;
            if (str == null) {
                String g_ = super.g_();
                this.g = g_;
                return g_;
            }
            return str;
        }

        @Override // luaj.lib.LibFunction, luaj.LuaFunction, luaj.LuaValue, luaj.ap
        public String d_() {
            String a = a();
            String replace = a.replace("[", "").replace("]", "").replace(" ,", ",");
            Pattern pattern = (Pattern) b.get();
            if (pattern == null) {
                pattern = Pattern.compile(".*(\\(.*\\)).*");
                b = new WeakReference(pattern);
            }
            String replaceAll = pattern.matcher(replace).replaceAll("$1");
            Pattern pattern2 = (Pattern) c.get();
            if (pattern2 == null) {
                pattern2 = Pattern.compile("(?<=[\\(,])( ?)\\s*\\S*\\s*(\\S*)(\\s*=\\s*[^,\\)]*)?(?=[,\\)])");
                c = new WeakReference(pattern2);
            }
            return "function " + pattern2.matcher(replaceAll).replaceAll("$1$2") + " end, -- " + a;
        }

        static boolean a(ApiFunction apiFunction, Writer writer, int i2, LuaValue luaValue) {
            if (luaValue instanceof LuaString) {
                return Consts.a(writer, luaValue.d_());
            }
            if (luaValue instanceof LuaTable) {
                Map map = null;
                if (apiFunction != null && i2 == 1) {
                    if ((apiFunction instanceof removeResults) || (apiFunction instanceof loadResults) || (apiFunction instanceof getValues)) {
                        map = h;
                        if (map == null) {
                            map = e(5);
                            h = map;
                        }
                    } else if (apiFunction instanceof setValues) {
                        map = i;
                        if (map == null) {
                            map = e(7);
                            i = map;
                        }
                    } else if ((apiFunction instanceof getValuesRange) || (apiFunction instanceof removeListItems)) {
                        map = j;
                        if (map == null) {
                            map = e(1);
                            j = map;
                        }
                    } else if ((apiFunction instanceof addListItems) && (map = k) == null) {
                        map = e(255);
                        k = map;
                    }
                }
                ((LuaTable) luaValue).a(writer, map);
            } else {
                writer.write(luaValue.d_());
            }
            return true;
        }

        private static Map e(int i2) {
            HashMap hashMap = new HashMap();
            for (int i3 = 0; i3 < 8; i3++) {
                if (((1 << i3) & i2) != 0) {
                    hashMap.put(Script.n[i3], u);
                }
            }
            return hashMap;
        }

        protected boolean a(Writer writer, int i2, LuaValue luaValue) {
            return a(this, writer, i2, luaValue);
        }

        protected static boolean a(Writer writer, Const[] constArr, LuaValue luaValue) {
            return Consts.a(writer, constArr, luaValue.p());
        }

        protected static boolean a(Writer writer, LuaValue luaValue) {
            return Consts.a(writer, luaValue.q());
        }

        private void b(Writer writer, luaj.ap apVar) {
            int j_ = apVar.j_();
            int m_ = m_();
            if (m_ < 0 || j_ <= m_) {
                m_ = j_;
            }
            for (int i2 = 1; i2 <= m_; i2++) {
                if (i2 != 1) {
                    writer.write(", ");
                }
                if (!a(writer, i2, apVar.c(i2))) {
                    return;
                }
            }
        }

        protected void a(Writer writer, luaj.ap apVar) {
            if (!(this instanceof isVisible) && !(this instanceof internal1) && !(this instanceof internal2) && !(this instanceof sleep)) {
                writer.write(g_());
                writer.write("(");
                b(writer, apVar);
                writer.write(")\n");
            }
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public final luaj.ap a_(luaj.ap apVar) {
            ThreadLocal threadLocal = luaj.ap.ah;
            VarArgFunction varArgFunction = (VarArgFunction) threadLocal.get();
            threadLocal.set(this);
            try {
                LuaValue g = apVar.g();
                if ((g instanceof LuaString) && g.M() > 1000000) {
                    apVar = b(g.z().a(0, 1000000), apVar.e_(2));
                }
                DebugLog debugLog = Script.r;
                if (debugLog != null) {
                    long nanoTime = System.nanoTime();
                    a(debugLog.a, apVar);
                    Globals globals = debugLog.b;
                    globals.d = (int) (((System.nanoTime() - nanoTime) / 1000000) + globals.d);
                }
                luaj.ap b2 = b(apVar);
                if (((this instanceof alert) || (this instanceof prompt) || (this instanceof choice) || (this instanceof multiChoice)) && debugLog != null) {
                    long nanoTime2 = System.nanoTime();
                    Writer writer = debugLog.a;
                    writer.write("--[[ return: ");
                    writer.write(b2 == null ? "null" : b2.toString());
                    writer.write(" ]]\n");
                    Globals globals2 = debugLog.b;
                    globals2.d = (int) (((System.nanoTime() - nanoTime2) / 1000000) + globals2.d);
                }
                if ((this instanceof getResults) && (b2 instanceof LuaTable) && debugLog != null) {
                    long nanoTime3 = System.nanoTime();
                    Writer writer2 = debugLog.a;
                    writer2.write("--[[ count: ");
                    writer2.write(Integer.toString(((LuaTable) b2).M()));
                    writer2.write(" ]]\n");
                    Globals globals3 = debugLog.b;
                    globals3.d = (int) (((System.nanoTime() - nanoTime3) / 1000000) + globals3.d);
                }
                if (b2 == v && (((this instanceof searchNumber) || (this instanceof refineNumber) || (this instanceof startFuzzy) || (this instanceof searchFuzzy) || (this instanceof searchAddress) || (this instanceof refineAddress)) && debugLog != null)) {
                    long nanoTime4 = System.nanoTime();
                    Writer writer3 = debugLog.a;
                    writer3.write("--[[ found: ");
                    writer3.write(Long.toString(MainService.instance.aj));
                    writer3.write(" ]]\n");
                    Globals globals4 = debugLog.b;
                    globals4.d = (int) (globals4.d + ((System.nanoTime() - nanoTime4) / 1000000));
                }
                return b2;
            } finally {
                threadLocal.set(varArgFunction);
            }
        }

        public luaj.ap b(final luaj.ap apVar) {
            this.d = null;
            this.e = null;
            Runnable runnable = new Runnable() { // from class: android.ext.Script.ApiFunction.1
                @Override // java.lang.Runnable
                public void run() {
                    ApiFunction.this.c(apVar);
                }
            };
            synchronized (this.a) {
                rx.a(runnable);
                Script.a(this.a);
            }
            Throwable th = this.e;
            this.e = null;
            if (th != null) {
                this.d = null;
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                }
                throw new RuntimeException(th);
            }
            luaj.ap apVar2 = this.d;
            this.d = null;
            if (this.f && apVar2 == null) {
                String e = e();
                return e == null ? f() : LuaValue.m(e);
            }
            return apVar2;
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0012 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void c(luaj.ap r4) {
            /*
                r3 = this;
                r0 = 0
                luaj.ap r2 = r3.d(r4)     // Catch: java.lang.Throwable -> L19
                r3.d = r2     // Catch: java.lang.Throwable -> L22
            L7:
                boolean r1 = r3.f
                if (r1 == 0) goto Lf
                if (r2 != 0) goto Lf
                if (r0 == 0) goto L18
            Lf:
                java.lang.Object r1 = r3.a
                monitor-enter(r1)
                java.lang.Object r0 = r3.a     // Catch: java.lang.Throwable -> L1f
                r0.notifyAll()     // Catch: java.lang.Throwable -> L1f
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L1f
            L18:
                return
            L19:
                r1 = move-exception
                r2 = r0
            L1b:
                r3.e = r1
                r0 = r1
                goto L7
            L1f:
                r0 = move-exception
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L1f
                throw r0
            L22:
                r1 = move-exception
                goto L1b
            */
            throw new UnsupportedOperationException("Method not decompiled: android.ext.Script.ApiFunction.c(luaj.ap):void");
        }

        public luaj.ap d(luaj.ap apVar) {
            return LuaValue.u;
        }

        protected String e() {
            return null;
        }

        protected luaj.ap f() {
            return LuaValue.v;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    abstract class BusyApiFunction extends ApiFunction {
        public BusyApiFunction() {
            this.a = Script.this;
        }

        @Override // android.ext.Script.ApiFunction
        protected String e() {
            return Script.this.j;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class OsExit extends luaj.o {
        final int a;

        public OsExit(int i) {
            super("called os.exit(" + i + ')');
            this.a = i;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class exit extends VarArgFunction {
        exit() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public luaj.ap a_(luaj.ap apVar) {
            throw new OsExit(apVar.d(1, 0));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class require extends ApiFunction {
        require() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 2;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.require([string version = nil [, int build = 0]]) -> nil";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            String c = apVar.c(1, "0");
            int d = apVar.d(2, 0);
            int a = gs.a(c);
            if (a > 80000) {
                a -= 80000;
            }
            if (gs.c() < a || ((int) (((17658.8f * 1) - 1516.8f) + 0.5f)) < d) {
                String sb = new StringBuilder().append((115.9f * 1) - 14.8f).toString();
                if (d > 0) {
                    c = String.valueOf(c) + " (" + d + ')';
                    sb = String.valueOf(sb) + " (" + ((int) (((19619.9f * 1) - 3477.9f) + 0.5f)) + ')';
                }
                Script.this.a.e.println(Tools.a(qk.a((int) R.string.need_update_to), c, sb));
                throw new OsExit(0);
            }
            return LuaValue.u;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class toast extends ApiFunction {
        toast() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 2;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.toast(string text [, bool fast = false]) -> nil";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            final String str = String.valueOf(Tools.c((int) R.string.script)) + ": " + apVar.r(1);
            final boolean a = apVar.a(2, false);
            rx.a(new Runnable() { // from class: android.ext.Script.toast.1
                @Override // java.lang.Runnable
                public void run() {
                    Tools.a(qk.a(str), a ? 0 : 1);
                }
            });
            return LuaValue.u;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class alert extends ApiFunction implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener {
        private volatile int d = 0;

        alert() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 4;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.alert(string text [, string positive = 'ok' [, string negative = nil [, string neutral = nil]]]) -> int: 0 = cancel, 1 = positive, 2 = negative, 3 = neutral";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            final String r = apVar.r(1);
            final String c = apVar.c(2, qk.a((int) R.string.ok));
            final String c2 = apVar.c(3, null);
            final String c3 = apVar.c(4, null);
            this.d = 0;
            synchronized (this) {
                rx.a(new Runnable() { // from class: android.ext.Script.alert.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AlertDialog.Builder positiveButton = i.c().setCustomTitle(Tools.i(Tools.c((int) R.string.script))).setMessage(qk.a(r)).setPositiveButton(qk.a(c), alert.this);
                        if (c2 != null) {
                            positiveButton.setNegativeButton(qk.a(c2), alert.this);
                        }
                        if (c3 != null) {
                            positiveButton.setNeutralButton(qk.a(c3), alert.this);
                        }
                        AlertDialog create = positiveButton.create();
                        i.a(create, alert.this);
                        i.c(create);
                        MainService.instance.b(true);
                    }
                });
                Script.a((Object) this);
            }
            return LuaValue.d(this.d);
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            synchronized (this) {
                notify();
            }
            MainService.instance.b(false);
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.d = -i;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class prompt extends ApiFunction implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, View.OnFocusChangeListener {
        private volatile int f = 0;
        private volatile LuaTable g = null;
        volatile ArrayList d = null;

        prompt() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 3;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.prompt(table prompts [, table defaults = {} [, table types = {} ]]) -> nil || table with keys from prompts and values from inputs";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(View view) {
            view.setVisibility(8);
            Tools.d(view);
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            final LuaTable t = apVar.t(1);
            final LuaTable a = apVar.a(2, (LuaTable) null);
            final LuaTable a2 = apVar.a(3, (LuaTable) null);
            this.f = 0;
            final ArrayList arrayList = new ArrayList();
            this.d = arrayList;
            this.g = new LuaTable();
            synchronized (this) {
                rx.a(new Runnable() { // from class: android.ext.Script.prompt.1
                    /* JADX WARN: Can't wrap try/catch for region: R(13:(5:75|76|77|78|79)|(2:85|(4:87|88|89|(15:91|(1:93)|(1:95)|96|97|(9:99|29|(1:32)|33|34|(1:38)|39|(1:41)(1:56)|(7:43|(1:45)|46|(1:50)|51|(1:53)|54)(1:55))|74|29|(1:32)|33|34|(2:36|38)|39|(0)(0)|(0)(0))))|100|(0)|74|29|(0)|33|34|(0)|39|(0)(0)|(0)(0)) */
                    /* JADX WARN: Removed duplicated region for block: B:105:0x03d4  */
                    /* JADX WARN: Removed duplicated region for block: B:110:0x03ec  */
                    /* JADX WARN: Removed duplicated region for block: B:120:0x015a A[SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:22:0x014c  */
                    /* JADX WARN: Removed duplicated region for block: B:53:0x026e  */
                    /* JADX WARN: Removed duplicated region for block: B:56:0x0273 A[ADDED_TO_REGION] */
                    /* JADX WARN: Removed duplicated region for block: B:60:0x02a8 A[Catch: Throwable -> 0x03e6, TryCatch #2 {Throwable -> 0x03e6, blocks: (B:58:0x027e, B:60:0x02a8, B:62:0x02ee), top: B:114:0x027e }] */
                    /* JADX WARN: Removed duplicated region for block: B:65:0x0318  */
                    /* JADX WARN: Removed duplicated region for block: B:67:0x0321  */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public void run() {
                        /*
                            Method dump skipped, instructions count: 1012
                            To view this dump change 'Code comments level' option to 'DEBUG'
                        */
                        throw new UnsupportedOperationException("Method not decompiled: android.ext.Script.prompt.AnonymousClass1.run():void");
                    }
                });
                Script.a((Object) this);
            }
            this.d = null;
            LuaTable luaTable = this.g;
            this.g = null;
            return this.f == 0 ? LuaValue.u : luaTable;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            LuaValue luaValue;
            if (i == -1) {
                this.f = -i;
                ArrayList<TextView> arrayList = this.d;
                LuaTable luaTable = this.g;
                if (arrayList != null && luaTable != null) {
                    for (TextView textView : arrayList) {
                        if (textView != null && (luaValue = (LuaValue) textView.getTag()) != null) {
                            if (textView instanceof android.widget.EditText) {
                                String charSequence = textView.getText().toString();
                                int dataType = textView instanceof ha ? ((ha) textView).getDataType() : -1;
                                String a_ = (dataType == 1 || dataType == 8 || dataType == 16) ? Script.a_(charSequence) : charSequence;
                                luaTable.c(luaValue, LuaValue.m(a_));
                                iw.a(a_, dataType);
                            } else if (textView instanceof CheckBox) {
                                luaTable.c(luaValue, LuaValue.b(((CheckBox) textView).isChecked()));
                            } else if (textView instanceof TextView) {
                                String charSequence2 = textView.getText().toString();
                                luaTable.c(luaValue, LuaValue.m(charSequence2));
                                iw.a(charSequence2, 1);
                            }
                        }
                    }
                }
            }
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            InternalKeyboard internalKeyboard;
            boolean z2;
            if ((Config.B & 1) != 0 && z && (internalKeyboard = (InternalKeyboard) view.getRootView().findViewById(R.id.keyboard)) != null && (view instanceof ha)) {
                int dataType = ((ha) view).getDataType();
                if (dataType != 4 && dataType != 2) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                internalKeyboard.b(view, z2);
                if (!z2) {
                    Tools.e(view);
                }
            }
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            synchronized (this) {
                notify();
            }
            MainService.instance.b(false);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class choice extends ApiFunction implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener {
        private volatile int d = 0;

        choice() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 3;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.choice(table items [, string selected = nil [, string message = nil]]) -> string || nil";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            final String str;
            LuaTable t = apVar.t(1);
            final LuaValue c = apVar.c(2);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            luaj.z S = t.S();
            final int i2 = -1;
            while (S.a()) {
                LuaValue c2 = S.c();
                LuaValue d = S.d();
                if (c2.b(c)) {
                    i2 = i;
                }
                arrayList2.add(qk.a(d.y()));
                arrayList.add(c2);
                i++;
            }
            String a = qk.a(apVar.c(3, ""));
            if (a.length() > 0) {
                str = String.valueOf('\n') + a;
            } else {
                str = null;
            }
            final CharSequence[] charSequenceArr = (CharSequence[]) arrayList2.toArray(new CharSequence[arrayList2.size()]);
            this.d = -1;
            synchronized (this) {
                rx.a(new Runnable() { // from class: android.ext.Script.choice.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AlertDialog.Builder negativeButton = i.c().setCustomTitle(Tools.b(Tools.c((int) R.string.script), str)).setNegativeButton(qk.a((int) R.string.cancel), choice.this);
                        if (c.F()) {
                            negativeButton.setItems(charSequenceArr, choice.this);
                        } else {
                            negativeButton.setSingleChoiceItems(charSequenceArr, i2, choice.this);
                        }
                        AlertDialog create = negativeButton.create();
                        i.a(create, choice.this);
                        i.c(create);
                        MainService.instance.b(true);
                    }
                });
                Script.a((Object) this);
            }
            return this.d < 0 ? LuaValue.u : (LuaValue) arrayList.get(this.d);
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            synchronized (this) {
                notify();
            }
            MainService.instance.b(false);
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.d = i;
            Tools.a(dialogInterface);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class multiChoice extends ApiFunction implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnMultiChoiceClickListener {
        volatile boolean[] d;
        private volatile boolean e;

        multiChoice() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 3;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.multiChoice(table items [, table selection = {} [, string message = nil]]) -> table || nil";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            LuaTable t = apVar.t(1);
            LuaTable a = apVar.a(2, (LuaTable) null);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            luaj.z S = t.S();
            while (S.a()) {
                LuaValue c = S.c();
                LuaValue d = S.d();
                arrayList2.add(Build.VERSION.SDK_INT < 11 ? Tools.a((CharSequence) qk.a(d.y()), -1) : qk.a(d.y()));
                arrayList3.add(Boolean.valueOf(a != null && Script.a(a, c, false)));
                arrayList.add(c);
            }
            this.d = Tools.a((List) arrayList3);
            this.e = false;
            String a2 = qk.a(apVar.c(3, ""));
            final String str = a2.length() > 0 ? String.valueOf('\n') + a2 : null;
            final CharSequence[] charSequenceArr = (CharSequence[]) arrayList2.toArray(new CharSequence[arrayList2.size()]);
            synchronized (this) {
                rx.a(new Runnable() { // from class: android.ext.Script.multiChoice.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AlertDialog create = i.a(Tools.o()).setCustomTitle(Tools.b(Tools.c((int) R.string.script), str)).setPositiveButton(qk.a((int) R.string.ok), multiChoice.this).setNegativeButton(qk.a((int) R.string.cancel), multiChoice.this).setMultiChoiceItems(charSequenceArr, multiChoice.this.d, multiChoice.this).create();
                        i.a(create, multiChoice.this);
                        i.c(create);
                        MainService.instance.b(true);
                    }
                });
                Script.a((Object) this);
            }
            if (!this.e) {
                return LuaValue.u;
            }
            LuaTable luaTable = new LuaTable();
            for (int i = 0; i < arrayList.size(); i++) {
                if (this.d[i]) {
                    luaTable.c((LuaValue) arrayList.get(i), LuaValue.v);
                }
            }
            return luaTable;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            synchronized (this) {
                notify();
            }
            MainService.instance.b(false);
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == -1) {
                this.e = true;
            }
        }

        @Override // android.content.DialogInterface.OnMultiChoiceClickListener
        public void onClick(DialogInterface dialogInterface, int i, boolean z) {
            this.d[i] = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class isVisible extends ApiFunction {
        isVisible() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.isVisible() -> bool";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            return LuaValue.b(MainService.instance.p != null);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class setVisible extends ApiFunction {
        private int e = 0;
        private long f = 0;

        setVisible() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 1;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.setVisible(bool visible) -> nil";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            boolean z = true;
            MainService mainService = MainService.instance;
            if (apVar.k(1)) {
                if (mainService.p == null) {
                    mainService.M();
                } else {
                    z = false;
                }
            } else {
                if (mainService.p != null) {
                    mainService.c(false);
                } else {
                    z = false;
                }
                mainService.Z.a();
            }
            if (z) {
                long nanoTime = System.nanoTime() / 60000000000L;
                if (nanoTime != this.f) {
                    this.f = nanoTime;
                    this.e = 0;
                }
                int i = this.e + 1;
                this.e = i;
                if (i > 30) {
                    Script.this.a_(2);
                }
            }
            return LuaValue.u;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getActiveTab extends ApiFunction {
        getActiveTab() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.getActiveTab() -> int";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            return LuaValue.d(MainService.instance.r());
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class showUiButton extends ApiFunction {
        showUiButton() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.showUiButton() -> nil";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            MainService.instance.f(true);
            return u;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class hideUiButton extends ApiFunction {
        hideUiButton() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.hideUiButton() -> nil";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            MainService.instance.f(false);
            return u;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class isClickedUiButton extends ApiFunction {
        isClickedUiButton() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.isClickedUiButton() -> bool || nil";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            MainService mainService = MainService.instance;
            LuaValue luaValue = u;
            if (mainService.f != null) {
                if (mainService.g) {
                    mainService.g = false;
                    return v;
                }
                return w;
            }
            return luaValue;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getTargetPackage extends ApiFunction {
        getTargetPackage() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.getTargetPackage() -> string || nil";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            String str = null;
            qh qhVar = MainService.instance.ap;
            if (qhVar != null) {
                str = qhVar.c;
            }
            return str == null ? LuaValue.u : LuaValue.m(str);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getTargetInfo extends ApiFunction {
        getTargetInfo() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.getTargetInfo() -> table || nil";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            ActivityInfo[] activityInfoArr;
            Throwable th;
            int i = 1;
            LuaValue luaValue = LuaValue.u;
            qh qhVar = MainService.instance.ap;
            if (qhVar != null) {
                String str = qhVar.c;
                try {
                    PackageInfo d = Tools.d(str, 1);
                    if (d != null) {
                        LuaTable luaTable = new LuaTable();
                        luaTable.d("packageName", qhVar.c);
                        luaTable.d("cmdLine", qhVar.a);
                        luaTable.d("name", qhVar.b);
                        luaTable.d("nativeLibraryDir", qhVar.d);
                        luaTable.b("pid", qhVar.f);
                        luaTable.b("uid", qhVar.g);
                        luaTable.b("x64", qhVar.n ? LuaValue.v : LuaValue.w);
                        luaTable.b("RSS", qhVar.o);
                        luaTable.b("firstInstallTime", d.firstInstallTime);
                        luaTable.b("lastUpdateTime", d.lastUpdateTime);
                        if (d.packageName != null) {
                            luaTable.d("packageName", d.packageName);
                        }
                        if (d.sharedUserId != null) {
                            luaTable.d("sharedUserId", d.sharedUserId);
                        }
                        luaTable.b("sharedUserLabel", d.sharedUserLabel);
                        luaTable.b("versionCode", d.versionCode);
                        if (d.versionName != null) {
                            luaTable.d("versionName", d.versionName);
                        }
                        PackageManager m = Tools.m();
                        if (d.activities != null && m != null) {
                            LuaTable luaTable2 = new LuaTable();
                            for (ActivityInfo activityInfo : d.activities) {
                                if (activityInfo != null) {
                                    try {
                                        LuaTable luaTable3 = new LuaTable();
                                        if (activityInfo.name != null) {
                                            luaTable3.c("name", activityInfo.name);
                                        }
                                        luaTable3.c("label", activityInfo.loadLabel(m).toString());
                                        int i2 = i + 1;
                                        try {
                                            luaTable2.a(i, (LuaValue) luaTable3);
                                            i = i2;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            i = i2;
                                            la.b("Failed get activity info", th);
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                    }
                                }
                            }
                            luaTable.b("activities", luaTable2);
                        }
                        if (m != null) {
                            luaTable.d("installer", m.getInstallerPackageName(str));
                            luaTable.b("enabledSetting", m.getApplicationEnabledSetting(str));
                        }
                        ApplicationInfo applicationInfo = d.applicationInfo;
                        if (applicationInfo != null) {
                            if (applicationInfo.backupAgentName != null) {
                                luaTable.d("backupAgentName", applicationInfo.backupAgentName);
                            }
                            if (applicationInfo.className != null) {
                                luaTable.d("className", applicationInfo.className);
                            }
                            if (applicationInfo.dataDir != null) {
                                luaTable.d("dataDir", applicationInfo.dataDir);
                            }
                            luaTable.b("descriptionRes", applicationInfo.descriptionRes);
                            luaTable.b("flags", applicationInfo.flags);
                            luaTable.b("icon", applicationInfo.icon);
                            luaTable.b("labelRes", applicationInfo.labelRes);
                            luaTable.b("logo", applicationInfo.logo);
                            if (applicationInfo.manageSpaceActivityName != null) {
                                luaTable.d("manageSpaceActivityName", applicationInfo.manageSpaceActivityName);
                            }
                            if (applicationInfo.name != null) {
                                luaTable.d("name", applicationInfo.name);
                            }
                            if (applicationInfo.nativeLibraryDir != null) {
                                luaTable.d("nativeLibraryDir", applicationInfo.nativeLibraryDir);
                            }
                            if (applicationInfo.packageName != null) {
                                luaTable.d("packageName", applicationInfo.packageName);
                            }
                            if (applicationInfo.permission != null) {
                                luaTable.d("permission", applicationInfo.permission);
                            }
                            if (applicationInfo.processName != null) {
                                luaTable.d("processName", applicationInfo.processName);
                            }
                            if (applicationInfo.publicSourceDir != null) {
                                luaTable.d("publicSourceDir", applicationInfo.publicSourceDir);
                            }
                            if (applicationInfo.sourceDir != null) {
                                luaTable.d("sourceDir", applicationInfo.sourceDir);
                            }
                            luaTable.b("targetSdkVersion", applicationInfo.targetSdkVersion);
                            if (applicationInfo.taskAffinity != null) {
                                luaTable.d("taskAffinity", applicationInfo.taskAffinity);
                            }
                            luaTable.b("theme", applicationInfo.theme);
                            luaTable.b("uid", applicationInfo.uid);
                            String a = Tools.a(applicationInfo);
                            if (a != null) {
                                luaTable.d("label", a);
                            }
                        }
                        return luaTable;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    la.b("Pkg not found: " + str, e);
                }
            }
            return luaValue;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class isPackageInstalled extends ApiFunction {
        isPackageInstalled() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 1;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.isPackageInstalled(string pkg) -> bool";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            return LuaValue.b(Tools.e(apVar.r(1)));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class processKill extends ApiFunction {
        private int e = 0;
        private long f = 0;

        processKill() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.processKill() -> bool";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            long nanoTime = System.nanoTime() / 60000000000L;
            if (nanoTime != this.f) {
                this.f = nanoTime;
                this.e = 0;
            }
            int i = this.e + 1;
            this.e = i;
            if (i > 4) {
                Script.this.a_(3);
            }
            return LuaValue.b(MainService.instance.d(Script.this.a()));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class makeRequest extends ApiFunction implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener {
        private volatile byte e = 0;

        makeRequest() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 3;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.makeRequest(string url [, table headers = {} [, string data = nil]]) -> table || string";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            String r = apVar.r(1);
            LuaTable a = apVar.a(2, (LuaTable) null);
            if (a == null) {
                a = new LuaTable();
            }
            LuaString a2 = apVar.a(3, (LuaString) null);
            if (this.e == 0) {
                synchronized (this) {
                    rx.a(new Runnable() { // from class: android.ext.Script.makeRequest.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AlertDialog create = i.c().setCustomTitle(Tools.i(Tools.c((int) R.string.script))).setMessage(qk.a((int) R.string.script_prompt_internet)).setPositiveButton(qk.a((int) R.string.yes), makeRequest.this).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null).create();
                            i.a(create, makeRequest.this);
                            i.c(create);
                        }
                    });
                    Script.a((Object) this);
                }
            }
            if (this.e != 1) {
                return LuaValue.m("The user did not allow access to the Internet.");
            }
            return a(r, a, a2);
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            synchronized (this) {
                if (this.e == 0) {
                    this.e = (byte) 2;
                }
                notify();
            }
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.e = (byte) 1;
        }

        public luaj.ap a(String str, LuaTable luaTable, LuaString luaString) {
            InputStream errorStream;
            try {
                uk.a = true;
                LuaTable luaTable2 = new LuaTable();
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                luaj.z S = luaTable.S();
                while (S.a()) {
                    LuaValue c = S.c();
                    LuaValue d = S.d();
                    if (d instanceof LuaTable) {
                        a(c.y(), d.O(), httpURLConnection);
                    } else {
                        httpURLConnection.addRequestProperty(c.y(), d.y());
                    }
                }
                if (luaString != null) {
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod("POST");
                    int i = luaString.d;
                    if (httpURLConnection.getRequestProperty("Content-Length") == null) {
                        httpURLConnection.addRequestProperty("Content-Length", Integer.toString(i));
                    }
                    if (httpURLConnection.getRequestProperty("Content-Type") == null) {
                        httpURLConnection.addRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                    }
                    httpURLConnection.connect();
                    OutputStream outputStream = httpURLConnection.getOutputStream();
                    outputStream.write(luaString.b, luaString.c, i);
                    luaString = null;
                    outputStream.flush();
                } else {
                    httpURLConnection.connect();
                }
                luaTable2.d("url", str);
                luaTable2.d("requestMethod", httpURLConnection.getRequestMethod());
                luaTable2.b("code", httpURLConnection.getResponseCode());
                luaTable2.d("message", httpURLConnection.getResponseMessage());
                luaTable2.b("headers", a(httpURLConnection));
                luaTable2.d("contentEncoding", httpURLConnection.getContentEncoding());
                luaTable2.b("contentLength", httpURLConnection.getContentLength());
                luaTable2.d("contentType", httpURLConnection.getContentType());
                luaTable2.b("date", httpURLConnection.getDate());
                luaTable2.b("expiration", httpURLConnection.getExpiration());
                luaTable2.b("lastModified", httpURLConnection.getLastModified());
                luaTable2.b("usingProxy", httpURLConnection.usingProxy() ? LuaValue.v : LuaValue.w);
                if (httpURLConnection instanceof HttpsURLConnection) {
                    luaTable2.d("cipherSuite", ((HttpsURLConnection) httpURLConnection).getCipherSuite());
                }
                try {
                    errorStream = httpURLConnection.getInputStream();
                } catch (IOException e) {
                    errorStream = httpURLConnection.getErrorStream();
                    luaTable2.b("error", LuaValue.v);
                }
                BufferedInputStream bufferedInputStream = new BufferedInputStream(errorStream);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = bufferedInputStream.read(bArr);
                    if (read != -1) {
                        byteArrayOutputStream.write(bArr, 0, read);
                    } else {
                        luaTable2.a("content", LuaValue.c(byteArrayOutputStream.toByteArray()));
                        httpURLConnection.disconnect();
                        return luaTable2;
                    }
                }
            } catch (Throwable th) {
                la.b("makeRequest fail for '" + str + "'; data = " + luaString + "; headers = " + luaTable, th);
                return LuaValue.m(Script.a(th));
            }
        }

        private void a(String str, LuaTable luaTable, HttpURLConnection httpURLConnection) {
            luaj.z S = luaTable.S();
            while (S.a()) {
                httpURLConnection.addRequestProperty(str, S.d().y());
            }
        }

        private LuaTable a(HttpURLConnection httpURLConnection) {
            LuaTable luaTable = new LuaTable();
            for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    key = "null";
                }
                List<String> value = entry.getValue();
                LuaTable luaTable2 = new LuaTable();
                int i = 1;
                luaTable2.d_(value.size());
                for (String str : value) {
                    luaTable2.b(i, str);
                    i++;
                }
                luaTable.b(key, luaTable2);
            }
            return luaTable;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class saveVariable extends ApiFunction {
        saveVariable() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 2;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.saveVariable(mixed variable, string filename) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            return new GgLib.saveVariable(Script.this.a).a_(apVar);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getRanges extends ApiFunction {
        getRanges() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.getRanges() -> int";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            return LuaValue.d(Config.i);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class setRanges extends ApiFunction {
        setRanges() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 1;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.setRanges(int ranges) -> nil";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            Config.a((int) R.id.config_ranges).d = apVar.o(1);
            Config.c();
            return LuaValue.u;
        }

        @Override // android.ext.Script.ApiFunction
        protected boolean a(Writer writer, int i, LuaValue luaValue) {
            switch (i) {
                case 1:
                    if (luaValue.h_()) {
                        return a(writer, Script.this.i.a, luaValue);
                    }
                    break;
            }
            return super.a(writer, i, luaValue);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class searchNumber extends BusyApiFunction {
        searchNumber() {
            super();
        }

        @Override // android.ext.Script.ApiFunction
        protected final int m_() {
            return 7;
        }

        @Override // android.ext.Script.ApiFunction
        final String a() {
            return this instanceof refineNumber ? "gg.searchNumber(string text [, int type = gg.TYPE_AUTO [, bool encrypted = false [, int sign = gg.SIGN_EQUAL [, long memoryFrom = 0 [, long memoryTo = -1 [, long limit = 0]]]]]]) -> true || string with error".replace("searchNumber", "refineNumber") : "gg.searchNumber(string text [, int type = gg.TYPE_AUTO [, bool encrypted = false [, int sign = gg.SIGN_EQUAL [, long memoryFrom = 0 [, long memoryTo = -1 [, long limit = 0]]]]]]) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public final luaj.ap d(luaj.ap apVar) {
            Script.this.g = false;
            if ((this instanceof refineNumber) && MainService.instance.aj == 0) {
                return v;
            }
            try {
                if (ra.a(Script.this.a(), Script.a(apVar.r(1)), Script.b(apVar.d(2, 127)), apVar.a(3, false), Script.a(apVar.d(4, 536870912)), apVar.a(5, 0L), apVar.a(6, -1L), false, apVar.a(7, 0L))) {
                    return LuaValue.v;
                }
                return null;
            } catch (NumberFormatException e) {
                return LuaValue.m(Script.a((Throwable) e));
            }
        }

        @Override // android.ext.Script.ApiFunction
        protected final boolean a(Writer writer, int i, LuaValue luaValue) {
            switch (i) {
                case 2:
                    if (luaValue.h_()) {
                        return a(writer, Script.this.i.b, luaValue);
                    }
                    break;
                case 4:
                    if (luaValue.h_()) {
                        return a(writer, Script.this.i.d, luaValue);
                    }
                    break;
                case 5:
                case 6:
                    if (luaValue.E()) {
                        return a(writer, luaValue);
                    }
                    break;
            }
            return super.a(writer, i, luaValue);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class refineNumber extends searchNumber {
        refineNumber() {
            super();
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class startFuzzy extends BusyApiFunction {
        startFuzzy() {
            super();
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 4;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.startFuzzy([int type = gg.TYPE_AUTO [, long memoryFrom = 0 [, long memoryTo = -1 [, long limit = 0]]]]) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            Script.this.g = false;
            try {
                if (ik.a(Script.this.a(), Script.b(apVar.d(1, 127)), apVar.a(2, 0L), apVar.a(3, -1L), apVar.a(4, 0L))) {
                    return LuaValue.v;
                }
                return null;
            } catch (NumberFormatException e) {
                return LuaValue.m(Script.a((Throwable) e));
            }
        }

        @Override // android.ext.Script.ApiFunction
        protected boolean a(Writer writer, int i, LuaValue luaValue) {
            switch (i) {
                case 1:
                    if (luaValue.h_()) {
                        return a(writer, Script.this.i.b, luaValue);
                    }
                    break;
                case 2:
                case 3:
                    if (luaValue.E()) {
                        return a(writer, luaValue);
                    }
                    break;
            }
            return super.a(writer, i, luaValue);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class searchFuzzy extends BusyApiFunction {
        searchFuzzy() {
            super();
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 6;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.searchFuzzy([string difference = '0' [, int sign = gg.SIGN_FUZZY_EQUAL [, int type = gg.TYPE_AUTO [, long memoryFrom = 0 [, long memoryTo = -1 [, long limit = 0]]]]]]) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            int b;
            int a;
            Script.this.g = false;
            try {
                if ((apVar.d(2, 0) & 127) != 0) {
                    b = Script.b(apVar.d(2, 127));
                    a = Script.a(apVar.d(3, 536870912));
                } else {
                    b = Script.b(apVar.d(3, 127));
                    a = Script.a(apVar.d(2, 536870912));
                }
                if (ik.a(Script.this.a(), Script.a(apVar.c(1, "0")), b, a, 1, apVar.a(4, 0L), apVar.a(5, -1L), apVar.a(6, 0L))) {
                    return LuaValue.v;
                }
                return null;
            } catch (NumberFormatException e) {
                return LuaValue.m(Script.a((Throwable) e));
            }
        }

        @Override // android.ext.Script.ApiFunction
        protected boolean a(Writer writer, int i, LuaValue luaValue) {
            switch (i) {
                case 2:
                    if (luaValue.h_()) {
                        return a(writer, Script.this.i.c, luaValue);
                    }
                    break;
                case 3:
                    if (luaValue.h_()) {
                        return a(writer, Script.this.i.b, luaValue);
                    }
                    break;
                case 4:
                case 5:
                    if (luaValue.E()) {
                        return a(writer, luaValue);
                    }
                    break;
            }
            return super.a(writer, i, luaValue);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class searchAddress extends BusyApiFunction {
        searchAddress() {
            super();
        }

        @Override // android.ext.Script.ApiFunction
        protected final int m_() {
            return 7;
        }

        @Override // android.ext.Script.ApiFunction
        final String a() {
            return this instanceof refineAddress ? "gg.searchAddress(string text [, long mask = -1 [, int type = gg.TYPE_AUTO [, int sign = gg.SIGN_EQUAL [, long memoryFrom = 0 [, long memoryTo = -1 [, long limit = 0]]]]]]) -> true || string with error".replace("searchAddress", "refineAddress") : "gg.searchAddress(string text [, long mask = -1 [, int type = gg.TYPE_AUTO [, int sign = gg.SIGN_EQUAL [, long memoryFrom = 0 [, long memoryTo = -1 [, long limit = 0]]]]]]) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public final luaj.ap d(luaj.ap apVar) {
            Script.this.g = false;
            if ((this instanceof refineAddress) && MainService.instance.aj == 0) {
                return v;
            }
            try {
                if (ov.a(Script.this.a(), Script.a(apVar.r(1)), apVar.a(2, -1L), Script.b(apVar.d(3, 127)), Script.a(apVar.d(4, 536870912)), apVar.a(5, 0L), apVar.a(6, -1L), false, apVar.a(7, 0L))) {
                    return LuaValue.v;
                }
                return null;
            } catch (NumberFormatException e) {
                return LuaValue.m(Script.a((Throwable) e));
            }
        }

        @Override // android.ext.Script.ApiFunction
        protected final boolean a(Writer writer, int i, LuaValue luaValue) {
            switch (i) {
                case 2:
                case 5:
                case 6:
                    if (luaValue.E()) {
                        return a(writer, luaValue);
                    }
                    break;
                case 3:
                    if (luaValue.h_()) {
                        return a(writer, Script.this.i.b, luaValue);
                    }
                    break;
                case 4:
                    if (luaValue.h_()) {
                        return a(writer, Script.this.i.d, luaValue);
                    }
                    break;
            }
            return super.a(writer, i, luaValue);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class refineAddress extends searchAddress {
        refineAddress() {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class internal1 extends BusyApiFunction {
        internal1() {
            super();
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 4;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "do not use";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            Script.this.g = false;
            try {
                LuaString s = apVar.s(1);
                int i = s.d;
                byte[] bArr = new byte[i];
                s.a(0, bArr, 0, i);
                if (ra.a(Script.this.a(), apVar.a(4, 1L) != 2 ? 1 : 2, bArr, apVar.a(2, 0L), apVar.a(3, -1L), false, apVar.a(4, 0L))) {
                    return LuaValue.v;
                }
                return null;
            } catch (NumberFormatException e) {
                return LuaValue.m(Script.a((Throwable) e));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class internal2 extends ApiFunction {
        internal2() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 2;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "do not use";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            LuaClosure l = apVar.l(1);
            String r = apVar.r(2);
            luaj.ap apVar2 = LuaValue.v;
            PrintStream printStream = luaj.aj.b;
            try {
                luaj.aj.b = new PrintStream(new BufferedOutputStream(new FileOutputStream(r), 65536));
                luaj.aj.a(l.a);
                luaj.aj.b.close();
                luaj.aj.a(l, String.valueOf(r) + ".tail");
            } catch (Throwable th) {
                la.c("Failed dump " + l + " into '" + r + '\'', th);
                apVar2 = LuaValue.m(Script.a(th));
            }
            luaj.aj.b = printStream;
            return apVar2;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class searchPointer extends BusyApiFunction {
        searchPointer() {
            super();
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 4;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.searchPointer(int maxOffset [, long memoryFrom = 0 [, long memoryTo = -1 [, long limit = 0]]]) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            Script.this.g = false;
            try {
                if (ra.a(Script.this.a(), (short) apVar.o(1), apVar.a(2, 0L), apVar.a(3, -1L), apVar.a(4, 0L))) {
                    return LuaValue.v;
                }
                return null;
            } catch (NumberFormatException e) {
                return LuaValue.m(Script.a((Throwable) e));
            }
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getResultsCount extends ApiFunction {
        getResultsCount() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.getResultsCount() -> long";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            return LuaValue.d(MainService.instance.aj);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getResults extends BusyApiFunction {
        getResults() {
            super();
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 9;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.getResults(int maxCount [, int skip = 0 [, long addressMin = nil [, long addressMax = nil [, string valueMin = nil [, string valueMax = nil [, int type = nil [, string fractional = nil [, int pointer = nil]]]]]]]]) -> table || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            int o = apVar.o(1);
            int d = apVar.d(2, 0);
            try {
                ek.a(Script.this.a(), o, d, ek.a(apVar.a(3, 0L), apVar.a(4, -1L), apVar.c(5, null), apVar.c(6, null), apVar.d(7, 0), apVar.c(8, null), apVar.d(9, 0)));
                return null;
            } catch (luaj.o e) {
                throw e;
            } catch (Throwable th) {
                return LuaValue.m(Script.a(th));
            }
        }

        @Override // android.ext.Script.ApiFunction
        protected luaj.ap f() {
            Script.this.g = true;
            LuaTable luaTable = new LuaTable();
            final ArrayList arrayList = new ArrayList(MainService.instance.am.b());
            final Object obj = new Object();
            synchronized (obj) {
                rx.a(new Runnable() { // from class: android.ext.Script.getResults.1
                    @Override // java.lang.Runnable
                    public void run() {
                        android.c.a aVar = MainService.instance.am;
                        ArrayList arrayList2 = arrayList;
                        for (int i = 0; i < aVar.b(); i++) {
                            try {
                                d a = aVar.a(i, (d) null);
                                if (a != null) {
                                    arrayList2.add(a);
                                }
                            } catch (IndexOutOfBoundsException e) {
                            }
                        }
                        synchronized (obj) {
                            obj.notifyAll();
                        }
                    }
                });
                Script.a(obj);
            }
            luaTable.d_(arrayList.size());
            Iterator it = arrayList.iterator();
            int i = 1;
            while (it.hasNext()) {
                d dVar = (d) it.next();
                if (dVar != null) {
                    luaTable.b(i, Script.b((int[]) null, dVar));
                    i++;
                }
            }
            return luaTable;
        }

        @Override // android.ext.Script.ApiFunction
        protected boolean a(Writer writer, int i, LuaValue luaValue) {
            switch (i) {
                case 7:
                    if (luaValue.h_()) {
                        return a(writer, Script.this.i.b, luaValue);
                    }
                    break;
                case 9:
                    if (luaValue.h_()) {
                        return a(writer, Script.this.i.h, luaValue);
                    }
                    break;
            }
            return super.a(writer, i, luaValue);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class editAll extends ApiFunction {
        editAll() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 2;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.editAll(string value, int type) -> count of changed || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            char[] cArr;
            byte[] bArr;
            String[] strArr;
            pv pvVar;
            int i;
            String str;
            long j;
            long j2;
            int i2;
            long j3;
            d dVar;
            int i3;
            long j4;
            if (!Script.this.g) {
                throw new luaj.o("You must call gg.getResults before calling gg.editAll.");
            }
            int i4 = 0;
            try {
                String a = Script.a(apVar.r(1));
                int b = Script.b(apVar.o(2));
                rd a2 = ra.a(a, false);
                int i5 = a2 != null ? a2.b : 0;
                if (a2 != null) {
                    a = a2.a;
                }
                MainService mainService = MainService.instance;
                android.c.a aVar = mainService.am;
                int b2 = aVar.b();
                if (b == 1 && ps.d(a)) {
                    cArr = null;
                    bArr = ps.a((CharSequence) a);
                    strArr = null;
                } else if ((b & 6) != 0 && ps.d(a) && a.charAt(0) == ';') {
                    cArr = a.substring(1).toCharArray();
                    bArr = null;
                    strArr = null;
                } else if (a.indexOf(59) == -1) {
                    cArr = null;
                    bArr = null;
                    strArr = null;
                } else {
                    String[] split = a.split(";");
                    if (split.length == 0) {
                        cArr = null;
                        bArr = null;
                        strArr = null;
                    } else {
                        cArr = null;
                        bArr = null;
                        strArr = split;
                    }
                }
                d dVar2 = new d();
                pv pvVar2 = null;
                pv[] pvVarArr = strArr == null ? null : new pv[strArr.length];
                int i6 = 0;
                long j5 = 0;
                int i7 = 0;
                while (i7 < b2) {
                    try {
                        aVar.a(i7, dVar2);
                        if (dVar2.d != b) {
                            j = j5;
                            i = i6;
                            dVar = dVar2;
                            str = a;
                            i3 = i4;
                        } else {
                            if (bArr != null) {
                                int i8 = 1 + j5 != dVar2.b ? 0 : i6;
                                long j6 = dVar2.b;
                                if (i8 < bArr.length) {
                                    i = i8 + 1;
                                    j4 = 255 & bArr[i8];
                                } else {
                                    j4 = 0;
                                    i = i8;
                                }
                                dVar2.c = j4;
                                j = j6;
                                str = a;
                            } else if (cArr != null) {
                                boolean z = dVar2.d == 2;
                                int i9 = ((long) (z ? 2 : 4)) + j5 != dVar2.b ? 0 : i6;
                                long j7 = dVar2.b;
                                if (i9 < cArr.length) {
                                    i2 = i9 + 1;
                                    j2 = 65535 & cArr[i9];
                                } else {
                                    j2 = 0;
                                    i2 = i9;
                                }
                                dVar2.c = j2;
                                if (z) {
                                    j = j7;
                                    i = i2;
                                    str = a;
                                } else {
                                    long j8 = dVar2.c;
                                    if (i2 < cArr.length) {
                                        i = i2 + 1;
                                        j3 = (65535 & cArr[i2]) << 16;
                                    } else {
                                        j3 = 0;
                                        i = i2;
                                    }
                                    dVar2.c = j3 | j8;
                                    j = j7;
                                    str = a;
                                }
                            } else {
                                if (strArr == null) {
                                    if (pvVar2 == null) {
                                        pvVar = d.a(null, a, b, R.string.number_name, dVar2.b);
                                        i = i6;
                                        str = a;
                                    } else {
                                        i = i6;
                                        pvVar = pvVar2;
                                        str = a;
                                    }
                                } else {
                                    int length = i7 % strArr.length;
                                    String str2 = strArr[length];
                                    pvVar = pvVarArr[length];
                                    if (pvVar == null) {
                                        pvVar = d.a(null, str2, b, R.string.number_name, dVar2.b);
                                        pvVarArr[length] = pvVar;
                                    }
                                    i = length;
                                    str = str2;
                                }
                                dVar2.a(null, pvVar, str, dVar2.b, "0", 0);
                                j = j5;
                                pvVar2 = pvVar;
                            }
                            dVar2.m(i5);
                            dVar = new d();
                            i3 = i4 + 1;
                        }
                        i7++;
                        j5 = j;
                        i6 = i;
                        dVar2 = dVar;
                        a = str;
                        i4 = i3;
                    } catch (IndexOutOfBoundsException e) {
                        la.b("List changed", e);
                    }
                }
                mainService.k.g(Script.this.a());
                final Object obj = new Object();
                synchronized (obj) {
                    rx.a(new Runnable() { // from class: android.ext.Script.editAll.1
                        @Override // java.lang.Runnable
                        public void run() {
                            MainService.instance.e(Script.this.a());
                            synchronized (obj) {
                                obj.notifyAll();
                            }
                        }
                    });
                    Script.a(obj);
                }
                return LuaValue.d(i4);
            } catch (NumberFormatException e2) {
                return LuaValue.m(Script.a((Throwable) e2));
            }
        }

        @Override // android.ext.Script.ApiFunction
        protected boolean a(Writer writer, int i, LuaValue luaValue) {
            switch (i) {
                case 2:
                    if (luaValue.h_()) {
                        return a(writer, Script.this.i.b, luaValue);
                    }
                    break;
            }
            return super.a(writer, i, luaValue);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class clearResults extends ApiFunction {
        clearResults() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.clearResults() -> nil";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            MainService.instance.a(Script.this.a());
            return LuaValue.u;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class removeResults extends ApiFunction {
        removeResults() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 1;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.removeResults(table results) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            Script.this.g = false;
            MainService.instance.k.b(Script.this.a(), Script.a(apVar));
            final Object obj = new Object();
            synchronized (obj) {
                rx.a(new Runnable() { // from class: android.ext.Script.removeResults.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MainService.instance.j(false);
                        synchronized (obj) {
                            obj.notifyAll();
                        }
                    }
                });
                Script.a(obj);
            }
            return LuaValue.v;
        }
    }

    static ArrayList a(luaj.ap apVar) {
        LuaTable t = apVar.t(1);
        ArrayList arrayList = new ArrayList();
        qh qhVar = MainService.instance.ap;
        boolean z = qhVar != null ? qhVar.n : false;
        luaj.z S = t.S();
        while (S.a()) {
            d a = a((d) null, S.d().O(), (byte) 2, z);
            a.d &= 127;
            arrayList.add(a);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class loadResults extends BusyApiFunction {
        ArrayList e;

        loadResults() {
            super();
            this.e = null;
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 1;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.loadResults(table results) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            Script.this.g = false;
            ArrayList a = Script.a(apVar);
            MainService.instance.a(Script.this.a());
            if (a.size() == 0) {
                return LuaValue.v;
            }
            this.e = a;
            return super.b(apVar);
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            try {
                MainService.instance.k.a(Script.this.a(), this.e);
                return null;
            } finally {
                this.e = null;
            }
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getSelectedResults extends ApiFunction {
        getSelectedResults() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.getSelectedResults() -> table || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            d a;
            android.c.a aVar = MainService.instance.am;
            LuaTable luaTable = new LuaTable();
            int i = 1;
            for (int i2 = 0; i2 < aVar.b(); i2++) {
                try {
                    if (aVar.b(i2) && (a = aVar.a(i2, (d) null)) != null) {
                        int i3 = i + 1;
                        try {
                            luaTable.b(i, Script.b((int[]) null, a));
                            i = i3;
                        } catch (IndexOutOfBoundsException e) {
                            i = i3;
                        }
                    }
                } catch (IndexOutOfBoundsException e2) {
                }
            }
            return luaTable;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class setValues extends ApiFunction {
        setValues() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 1;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.setValues(table values) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            LuaTable t = apVar.t(1);
            MainService mainService = MainService.instance;
            qh qhVar = mainService.ap;
            boolean z = qhVar != null ? qhVar.n : false;
            ex exVar = mainService.k;
            LuaString luaString = Script.n[1];
            luaj.z S = t.S();
            while (S.a()) {
                LuaTable O = S.d().O();
                try {
                    d a = Script.a((d) null, O, (byte) 1, z);
                    a.d &= 127;
                    if (a.d != 0) {
                        rd a2 = ra.a(Script.a(Script.c(O, (LuaValue) luaString)), false);
                        exVar.a(a, a2 != null ? a2.b : 0);
                    }
                } catch (NumberFormatException e) {
                    throw Script.a(S.c(), O, e);
                }
            }
            mainService.k.g(Script.this.a());
            final Object obj = new Object();
            synchronized (obj) {
                rx.a(new Runnable() { // from class: android.ext.Script.setValues.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MainService.instance.e(Script.this.a());
                        synchronized (obj) {
                            obj.notifyAll();
                        }
                    }
                });
                Script.a(obj);
            }
            return LuaValue.v;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class getValues extends BusyApiFunction {
        final ArrayList e;
        long[] f;
        int[] g;
        int h;

        getValues() {
            super();
            this.e = new ArrayList();
            this.f = null;
            this.g = null;
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 1;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.getValues(table values) -> table || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            long[] jArr;
            LuaTable t = apVar.t(1);
            ArrayList arrayList = this.e;
            this.g = null;
            this.f = null;
            long[] jArr2 = new long[t.P() + t.X()];
            int[] iArr = new int[jArr2.length];
            arrayList.clear();
            arrayList.ensureCapacity(jArr2.length);
            qh qhVar = MainService.instance.ap;
            boolean z = qhVar != null ? qhVar.n : false;
            d dVar = new d(0L, 0L, 4);
            luaj.z S = t.S();
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int[] iArr2 = iArr;
            while (S.a()) {
                if (S.b() != 0) {
                    i2++;
                }
                LuaValue c = S.c();
                Script.a(dVar, S.d().O(), (byte) 2, z);
                if (i3 == jArr2.length) {
                    int i4 = i + 1;
                    int i5 = i3 >> 1;
                    if (i5 < 10) {
                        i5 = 10;
                    }
                    ho.a(Thread.currentThread(), (Throwable) new RuntimeException("OF " + i4 + "; " + jArr2.length + "; " + t.P() + " + " + t.X() + "; " + c.h_() + ": " + c + "; " + t.i() + "; " + t), false);
                    jArr = Arrays.copyOf(jArr2, i3 + i5);
                    iArr2 = Arrays.copyOf(iArr2, i5 + i3);
                    i = i4;
                } else {
                    jArr = jArr2;
                }
                jArr[i3] = dVar.b;
                iArr2[i3] = dVar.d & 127;
                arrayList.add(c);
                i3++;
                jArr2 = jArr;
            }
            this.h = i2;
            if (iArr2.length != i3) {
                iArr2 = Arrays.copyOf(iArr2, i3);
            }
            this.g = iArr2;
            if (jArr2.length != i3) {
                jArr2 = Arrays.copyOf(jArr2, i3);
            }
            this.f = jArr2;
            if (i3 == 0) {
                this.g = null;
                this.f = null;
                return new LuaTable();
            }
            return super.b(apVar);
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            MainService.instance.k.a(Script.this.a(), this.g, this.f);
            this.g = null;
            this.f = null;
            return null;
        }

        @Override // android.ext.Script.ApiFunction
        protected luaj.ap f() {
            ArrayList arrayList = this.e;
            LuaTable luaTable = new LuaTable();
            luaTable.d_(this.h);
            ArrayList arrayList2 = Script.k;
            if (arrayList2 != null) {
                Script.l++;
                Script.k = null;
                Iterator it = arrayList2.iterator();
                int i = 0;
                while (it.hasNext()) {
                    luaTable.c((LuaValue) arrayList.get(i), Script.b((int[]) null, (d) it.next()));
                    i++;
                }
            } else {
                Script.l += 100000;
                ho.a(Thread.currentThread(), (Throwable) new RuntimeException("memList is null " + Script.l), false);
            }
            this.g = null;
            this.f = null;
            arrayList.clear();
            arrayList.trimToSize();
            return luaTable;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class getValuesRange extends ApiFunction {
        getValuesRange() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 1;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.getValuesRange(table values) -> table || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            long b;
            LuaTable t = apVar.t(1);
            LuaTable luaTable = new LuaTable();
            luaTable.a(t.P(), luaTable.o_());
            LuaString luaString = Script.n[0];
            luaj.z S = t.S();
            while (S.a()) {
                LuaValue d = S.d();
                if (!d.N()) {
                    b = d.w();
                } else {
                    b = Script.b(d.O(), (LuaValue) luaString);
                }
                int b2 = S.b();
                if (b2 == 0) {
                    luaTable.c(S.c(), LuaValue.m(RegionList.a(b).toString()));
                } else {
                    luaTable.b(b2, LuaValue.m(RegionList.a(b).toString()));
                }
            }
            return luaTable;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class gotoAddress extends ApiFunction {
        gotoAddress() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 1;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.gotoAddress(long address) -> nil";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            MainService.instance.b(apVar.p(1));
            return LuaValue.u;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getSelectedElements extends ApiFunction {
        getSelectedElements() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.getSelectedElements() -> table || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            ow owVar = MainService.instance.K;
            boolean[] a = owVar.a();
            LuaTable luaTable = new LuaTable();
            int i = 1;
            for (int i2 = 0; i2 < a.length; i2++) {
                try {
                    if (a[i2]) {
                        int i3 = i + 1;
                        try {
                            luaTable.b(i, LuaLong.b(owVar.a(i2)));
                            i = i3;
                        } catch (IndexOutOfBoundsException e) {
                            i = i3;
                        }
                    }
                } catch (IndexOutOfBoundsException e2) {
                }
            }
            return luaTable;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class processPause extends ApiFunction {
        processPause() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.processPause() -> bool";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            return LuaValue.b(MainService.instance.c(Script.this.a(), true));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class processResume extends ApiFunction {
        processResume() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.processResume() -> bool";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            return LuaValue.b(MainService.instance.c(Script.this.a()));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class processToggle extends ApiFunction {
        processToggle() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.processToggle() -> bool";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            return LuaValue.b(MainService.instance.b(Script.this.a(), true));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class isProcessPaused extends ApiFunction {
        isProcessPaused() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.isProcessPaused() -> bool";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            return LuaValue.b(MainService.instance.N);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class timeJump extends BusyApiFunction {
        timeJump() {
            super();
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 1;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.timeJump(string time) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            try {
                MainService.instance.k.a(Script.this.a(), rz.a(Script.a(apVar.r(1))));
                return null;
            } catch (NumberFormatException e) {
                return LuaValue.m(Script.a((Throwable) e));
            }
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getSpeed extends ApiFunction {
        getSpeed() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.getSpeed() -> double";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            return LuaValue.c(MainService.instance.l());
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class setSpeed extends BusyApiFunction {
        setSpeed() {
            super();
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 1;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.setSpeed(double speed) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            double m = apVar.m(1);
            if (m < 1.0E-9d || m > 1.0E9d) {
                return LuaValue.m("Speed outside range: " + m + " (1.0E-9; 1.0E9)");
            }
            MainService.instance.a(Script.this.a(), m);
            return null;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class unrandomizer extends BusyApiFunction {
        unrandomizer() {
            super();
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 4;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.unrandomizer([long qword = nil [, long qincr = nil [, double double_ = nil [, double dincr = nil]]]]) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            int i = 0;
            if (!apVar.f(1) || !apVar.f(2)) {
                i = 2;
            }
            MainService.instance.k.a(Script.this.a(), (apVar.f(2) && apVar.f(3)) ? i : i | 4, apVar.a(1, 0L), apVar.a(2, 0L), apVar.a(3, 0.0d), apVar.a(4, 0.0d));
            return null;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class loadList extends ApiFunction {
        loadList() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 2;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.loadList(string file [, int flags = 0]) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            File file = new File(apVar.r(1));
            if (!file.exists()) {
                return LuaValue.m("File '" + file.getAbsolutePath() + "' not found");
            }
            if (!file.isFile()) {
                return LuaValue.m("Path '" + file.getAbsolutePath() + "' is not a file");
            }
            if (!file.canRead()) {
                return LuaValue.m("File '" + file.getAbsolutePath() + "' can not be read");
            }
            int d = apVar.d(2, 0);
            try {
                kx.a(MainService.instance.ap.f, file.getAbsolutePath(), d | 4);
                return LuaValue.v;
            } catch (Throwable th) {
                la.c("Failed load list: " + file.getAbsolutePath() + "; " + d, th);
                return LuaValue.m(Script.a(th));
            }
        }

        @Override // android.ext.Script.ApiFunction
        protected boolean a(Writer writer, int i, LuaValue luaValue) {
            switch (i) {
                case 2:
                    if (luaValue.h_()) {
                        return a(writer, Script.this.i.e, luaValue);
                    }
                    break;
            }
            return super.a(writer, i, luaValue);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class saveList extends ApiFunction {
        saveList() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 2;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.saveList(string file [, int flags = 0]) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            File file = new File(apVar.r(1));
            if (file.isDirectory()) {
                return LuaValue.m("Path '" + file.getAbsolutePath() + "' is a directory");
            }
            int d = apVar.d(2, 0);
            MainService mainService = MainService.instance;
            try {
                SavedListAdapter savedListAdapter = mainService.an;
                int count = savedListAdapter.getCount();
                qx[] qxVarArr = new qx[count];
                for (int i = 0; i < count; i++) {
                    qxVarArr[i] = savedListAdapter.getItem(i);
                }
                kx.a(mainService.ap.f, qxVarArr, file.getAbsolutePath(), d);
                return LuaValue.v;
            } catch (Throwable th) {
                la.c("Failed saved list: " + file.getAbsolutePath() + "; " + d, th);
                return LuaValue.m(Script.a(th));
            }
        }

        @Override // android.ext.Script.ApiFunction
        protected boolean a(Writer writer, int i, LuaValue luaValue) {
            switch (i) {
                case 2:
                    if (luaValue.h_()) {
                        return a(writer, Script.this.i.f, luaValue);
                    }
                    break;
            }
            return super.a(writer, i, luaValue);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class clearList extends ApiFunction {
        clearList() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.clearList() -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            try {
                MainService.instance.an.c();
                return LuaValue.v;
            } catch (Throwable th) {
                la.c("Failed clear list", th);
                return LuaValue.m(Script.a(th));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class addListItems extends ApiFunction {
        final ArrayList d = new ArrayList();
        LuaValue e = null;

        addListItems() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 1;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.addListItems(table items) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            luaj.ap m;
            LuaValue luaValue;
            LuaBoolean luaBoolean = LuaValue.v;
            ArrayList arrayList = this.d;
            try {
                try {
                    arrayList.clear();
                    LuaTable t = apVar.t(1);
                    qh qhVar = MainService.instance.ap;
                    boolean z = qhVar != null ? qhVar.n : false;
                    luaj.z S = t.S();
                    while (S.a()) {
                        try {
                            qx a = Script.a(S.d().O(), z);
                            if (a != null) {
                                arrayList.add(a);
                            }
                        } catch (NumberFormatException | luaj.o e) {
                            throw Script.a(S.c(), luaValue, e);
                        }
                    }
                    this.e = null;
                    final Object obj = new Object();
                    synchronized (obj) {
                        rx.a(new Runnable() { // from class: android.ext.Script.addListItems.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ArrayList arrayList2 = addListItems.this.d;
                                try {
                                    SavedListAdapter savedListAdapter = MainService.instance.an;
                                    Iterator it = arrayList2.iterator();
                                    while (it.hasNext()) {
                                        qx qxVar = (qx) it.next();
                                        if (qxVar != null) {
                                            savedListAdapter.a(qxVar, (byte) 0, false);
                                        }
                                    }
                                    savedListAdapter.notifyDataSetChanged();
                                    savedListAdapter.d();
                                    addListItems.this.e = LuaValue.v;
                                } catch (Throwable th) {
                                    la.c("Failed add list items", th);
                                    addListItems.this.e = LuaValue.m(Script.a(th));
                                }
                                synchronized (obj) {
                                    obj.notifyAll();
                                }
                            }
                        });
                        Script.a(obj);
                    }
                    m = this.e;
                } catch (luaj.o e2) {
                    throw e2;
                }
            } catch (Throwable th) {
                la.c("Failed add list items", th);
                m = LuaValue.m(Script.a(th));
            }
            try {
                arrayList.clear();
                arrayList.trimToSize();
            } catch (Throwable th2) {
                la.a(th2);
            }
            this.e = null;
            return m;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getListItems extends ApiFunction {
        getListItems() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.getListItems() -> table || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            try {
                final ArrayList arrayList = new ArrayList(MainService.instance.an.getCount());
                final Object obj = new Object();
                synchronized (obj) {
                    rx.a(new Runnable() { // from class: android.ext.Script.getListItems.1
                        @Override // java.lang.Runnable
                        public void run() {
                            SavedListAdapter savedListAdapter = MainService.instance.an;
                            try {
                                int count = savedListAdapter.getCount();
                                for (int i = 0; i < count; i++) {
                                    qx item = savedListAdapter.getItem(i);
                                    if (item != null) {
                                        arrayList.add(item);
                                    }
                                }
                            } catch (Throwable th) {
                                la.c("Failed get list items", th);
                            }
                            synchronized (obj) {
                                obj.notifyAll();
                            }
                        }
                    });
                    Script.a(obj);
                }
                LuaTable luaTable = new LuaTable();
                luaTable.d_(arrayList.size());
                Iterator it = arrayList.iterator();
                int i = 1;
                while (it.hasNext()) {
                    qx qxVar = (qx) it.next();
                    if (qxVar != null) {
                        int i2 = i + 1;
                        luaTable.b(i, Script.a(qxVar));
                        i = i2;
                    }
                }
                return luaTable;
            } catch (luaj.o e) {
                throw e;
            } catch (Throwable th) {
                la.c("Failed get list items", th);
                return LuaValue.m(Script.a(th));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class removeListItems extends ApiFunction {
        removeListItems() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 1;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.removeListItems(table items) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            try {
                LuaTable t = apVar.t(1);
                t.M();
                final long[] jArr = new long[t.P() + t.X()];
                LuaString luaString = Script.n[0];
                luaj.z S = t.S();
                final int i = 0;
                while (S.a()) {
                    LuaValue d = S.d();
                    jArr[i] = d.N() ? Script.b((LuaTable) d, (LuaValue) luaString) : d.w();
                    i++;
                }
                final Object obj = new Object();
                synchronized (obj) {
                    rx.a(new Runnable() { // from class: android.ext.Script.removeListItems.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                MainService.instance.an.a(jArr, i);
                            } catch (Throwable th) {
                                la.c("Failed remove list items", th);
                            }
                            synchronized (obj) {
                                obj.notifyAll();
                            }
                        }
                    });
                    Script.a(obj);
                }
                return LuaValue.v;
            } catch (luaj.o e) {
                throw e;
            } catch (Throwable th) {
                la.c("Failed remove list items", th);
                return LuaValue.m(Script.a(th));
            }
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getSelectedListItems extends ApiFunction {
        getSelectedListItems() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.getSelectedListItems() -> table || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            qx qxVar;
            android.c.e b = MainService.instance.an.b();
            LuaTable luaTable = new LuaTable();
            int i = 1;
            for (int i2 = 0; i2 < b.b(); i2++) {
                try {
                    if (b.d(i2) && (qxVar = (qx) b.c(i2)) != null) {
                        int i3 = i + 1;
                        try {
                            luaTable.b(i, Script.a(qxVar));
                            i = i3;
                        } catch (IndexOutOfBoundsException e) {
                            i = i3;
                        }
                    }
                } catch (IndexOutOfBoundsException e2) {
                }
            }
            return luaTable;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class copyMemory extends BusyApiFunction {
        copyMemory() {
            super();
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 3;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.copyMemory(long from, long to, int bytes) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            MainService.instance.k.a(Script.this.a(), apVar.p(1), apVar.p(2), apVar.o(3));
            return null;
        }

        @Override // android.ext.Script.ApiFunction
        protected boolean a(Writer writer, int i, LuaValue luaValue) {
            switch (i) {
                case 1:
                case 2:
                    if (luaValue.E()) {
                        return a(writer, luaValue);
                    }
                    break;
            }
            return super.a(writer, i, luaValue);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class dumpMemory extends BusyApiFunction {
        dumpMemory() {
            super();
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 4;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.dumpMemory(long from, long to, string dir [, int flags = nil]) -> true || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            MainService mainService = MainService.instance;
            qh qhVar = mainService.ap;
            String str = qhVar == null ? "unknown" : qhVar.c;
            if (mainService.S()) {
                mainService.k.a(Script.this.a(), apVar.p(1), apVar.p(2), apVar.d(4, 0), apVar.r(3), str);
                return null;
            }
            return LuaValue.m(qk.a((int) R.string.busy_dialog_fail));
        }

        @Override // android.ext.Script.ApiFunction
        protected boolean a(Writer writer, int i, LuaValue luaValue) {
            switch (i) {
                case 1:
                case 2:
                    if (luaValue.E()) {
                        return a(writer, luaValue);
                    }
                    break;
                case 4:
                    if (luaValue.h_()) {
                        return a(writer, Script.this.i.i, luaValue);
                    }
                    break;
            }
            return super.a(writer, i, luaValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class sleep extends ApiFunction {
        sleep() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 1;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.sleep(int milliseconds) -> nil";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            int o = apVar.o(1);
            if (o < 0) {
                throw new luaj.o("milliseconds < 0: " + o);
            }
            try {
                Thread.sleep(o);
                return LuaValue.u;
            } catch (InterruptedException e) {
                la.b("Interrupted sleep", e);
                throw new luaj.o(e);
            }
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class copyText extends ApiFunction {
        copyText() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 2;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.copyText(string text [, bool fixLocale = true]) -> nil";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            String r = apVar.r(1);
            if (apVar.a(2, true)) {
                r = Script.a(r);
            }
            Tools.a(qk.a(r));
            return LuaValue.u;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class disasm extends ApiFunction {
        disasm() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 3;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.disasm(int type, long address, int opcode) -> string";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            long p = apVar.p(2);
            int o = apVar.o(3);
            switch (apVar.o(1)) {
                case 4:
                    return LuaString.c(ai.a(new ai(), p, o));
                case 5:
                    return LuaString.c(ai.b(new ai(), p, o));
                case 6:
                    StringBuilder sb = new StringBuilder();
                    ag.a(ag.a(), p, o, sb);
                    return LuaString.c(sb.toString());
                default:
                    return a(1, "gg.disasm", "unknown type: " + apVar.o(1));
            }
        }

        @Override // android.ext.Script.ApiFunction
        protected boolean a(Writer writer, int i, LuaValue luaValue) {
            switch (i) {
                case 1:
                    if (luaValue.h_()) {
                        return a(writer, Script.this.i.j, luaValue);
                    }
                    break;
                case 2:
                case 3:
                    if (luaValue.E()) {
                        return a(writer, luaValue);
                    }
                    break;
            }
            return super.a(writer, i, luaValue);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    public abstract class DebugFunction extends ApiFunction {
        protected LuaClosure d = null;

        public void a(LuaClosure luaClosure) {
            this.d = luaClosure;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getFile extends DebugFunction {
        getFile() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.getFile() -> string";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            String str;
            if (this.d == null) {
                str = "?";
            } else if (this.d.d != null) {
                str = this.d.d;
            } else if (this.d.a != null) {
                str = this.d.a.w != null ? this.d.a.w.d_() : "??";
            } else {
                str = "???";
            }
            if (str.startsWith("@")) {
                str = str.substring(1);
            }
            return LuaValue.m(str);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getLine extends DebugFunction {
        getLine() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.getLine() -> int";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            int i = -1;
            if (this.d != null && this.d.a != null && this.d.a.t != null && this.d.e >= 0 && this.d.e < this.d.a.t.length) {
                i = this.d.a.t[this.d.e];
            }
            return LuaValue.d(i);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class bytes extends ApiFunction {
        bytes() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 2;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.bytes(string text [, string encoding = 'UTF-8']) -> table";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            try {
                byte[] bytes = apVar.r(1).getBytes(apVar.c(2, "UTF-8"));
                LuaTable luaTable = new LuaTable();
                int length = bytes.length;
                luaTable.d_(length);
                for (int i = 0; i < length; i++) {
                    luaTable.b(i + 1, LuaValue.d(bytes[i] & 255));
                }
                return luaTable;
            } catch (UnsupportedEncodingException e) {
                throw new luaj.o(e);
            }
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class skipRestoreState extends ApiFunction {
        skipRestoreState() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.skipRestoreState() -> nil";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            Script.this.q = null;
            return LuaValue.u;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getRangesList extends ApiFunction {
        getRangesList() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 1;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.getRangesList([string filter = '']) -> table";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            String c = apVar.c(1, "");
            if (c.length() > 0) {
                c = Tools.l(c);
            }
            LuaTable luaTable = new LuaTable();
            Pattern pattern = null;
            if (c.length() > 0) {
                try {
                    pattern = Pattern.compile(c);
                } catch (Throwable th) {
                    la.a(th);
                }
            }
            LuaString c2 = LuaString.c("state");
            LuaString c3 = LuaString.c("start");
            LuaString c4 = LuaString.c("end");
            LuaString c5 = LuaString.c("type");
            LuaString c6 = LuaString.c("name");
            LuaString c7 = LuaString.c("internalName");
            int i = 1;
            for (qs qsVar : RegionList.getList()) {
                String d = qsVar.d();
                if (pattern == null || pattern.matcher(d).find()) {
                    LuaTable luaTable2 = new LuaTable(0, 6);
                    luaTable2.c(c2, LuaValue.m(qsVar.b().toString()));
                    luaTable2.c(c3, LuaValue.d(qsVar.b));
                    luaTable2.c(c4, LuaValue.d(qsVar.c));
                    luaTable2.c(c5, LuaValue.m(qsVar.a()));
                    luaTable2.c(c6, LuaValue.m(qsVar.c()));
                    luaTable2.c(c7, LuaValue.m(d));
                    luaTable.a(i, (LuaValue) luaTable2);
                    i++;
                }
            }
            return luaTable;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class allocatePage extends BusyApiFunction {
        allocatePage() {
            super();
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 2;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.allocatePage([int mode = gg.PROT_READ | gg.PROT_EXEC [, long address = 0]) -> long || string with error";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap d(luaj.ap apVar) {
            int d = apVar.d(1, 6);
            long a = apVar.a(2, 0L);
            Script.m = 0L;
            MainService.instance.k.b(Script.this.a(), a, d);
            return null;
        }

        @Override // android.ext.Script.ApiFunction
        protected luaj.ap f() {
            long j = Script.m;
            return (-1024 >= j || j > 0) ? LuaValue.d(Script.m) : LuaValue.m(String.valueOf(qk.a((int) R.string.allocate_fail)) + ' ' + (-j));
        }

        @Override // android.ext.Script.ApiFunction
        protected boolean a(Writer writer, int i, LuaValue luaValue) {
            switch (i) {
                case 1:
                    if (luaValue.h_()) {
                        return a(writer, Script.this.i.g, luaValue);
                    }
                    break;
                case 2:
                    if (luaValue.E()) {
                        return a(writer, luaValue);
                    }
                    break;
            }
            return super.a(writer, i, luaValue);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getLocale extends ApiFunction {
        getLocale() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 0;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.getLocale() -> string";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            return LuaValue.m(qk.a((int) R.string.lang_code).replace("~", ""));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class numberToLocale extends ApiFunction {
        numberToLocale() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 1;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.numberToLocale(string num) -> string";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            return LuaValue.m(Script.a(apVar.y(1)));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class numberFromLocale extends ApiFunction {
        numberFromLocale() {
        }

        @Override // android.ext.Script.ApiFunction
        protected int m_() {
            return 1;
        }

        @Override // android.ext.Script.ApiFunction
        String a() {
            return "gg.numberFromLocale(string num) -> string";
        }

        @Override // android.ext.Script.ApiFunction
        public luaj.ap b(luaj.ap apVar) {
            return LuaValue.m(Script.a_(apVar.y(1)));
        }
    }

    static int a(int i) {
        switch (i) {
            case 67108864:
            case 134217728:
            case 268435456:
            case 536870912:
                return i;
            default:
                throw new luaj.o("Unknown sign: " + i + ". The sign must be one of the constants gg.SIGN_*.");
        }
    }

    static int b(int i) {
        if (i == 0 || (i & (-128)) != 0) {
            throw new luaj.o("Unknown type: " + i + ". The type must be one of the constants gg.TYPE_*.");
        }
        return i;
    }

    public static void a(bk bkVar) {
        bkVar.g();
        ArrayList arrayList = new ArrayList();
        while (true) {
            try {
                int b = bkVar.b();
                if (b == 0) {
                    break;
                }
                arrayList.add(new d(bkVar.c(), bkVar.d(), b));
            } catch (IOException e) {
                la.c("???", e);
                ho.a(Thread.currentThread(), (Throwable) e, false);
            }
        }
        k = arrayList;
        l += 100;
    }

    public static void a(long j) {
        m = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static LuaTable b(int[] iArr, d dVar) {
        if (iArr == null) {
            iArr = o;
        }
        int length = iArr.length;
        LuaString[] luaStringArr = n;
        LuaTable luaTable = new LuaTable(0, length);
        long j = dVar.b;
        int i = dVar.d;
        luaTable.a(iArr[0], luaStringArr[0], j);
        a(iArr[1], luaTable, luaStringArr[1], j, dVar.c, i);
        luaTable.a(iArr[2], luaStringArr[2], i);
        return luaTable;
    }

    private static void a(int i, LuaTable luaTable, LuaString luaString, long j, long j2, int i2) {
        if (i2 == 8) {
            j2 ^= j;
        }
        if (i2 == 16) {
            luaTable.a(i, luaString, Float.intBitsToFloat((int) j2));
        } else if (i2 == 64) {
            luaTable.a(i, luaString, Double.longBitsToDouble(j2));
        } else {
            luaTable.a(i, luaString, gv.a(j2, d.f(i2), false));
        }
    }

    static LuaTable a(qx qxVar) {
        LuaString[] luaStringArr = n;
        int[] iArr = p;
        LuaTable b = b(iArr, qxVar);
        String str = qxVar.e;
        if (str != null) {
            b.d(luaStringArr[3], LuaValue.m(str));
        }
        b.a(iArr[4], luaStringArr[4], qxVar.f);
        b.a(iArr[5], luaStringArr[5], (int) qxVar.g);
        long j = qxVar.b;
        int i = qxVar.d;
        if (qxVar.h != 0 || qxVar.i != 0) {
            a(iArr[6], b, luaStringArr[6], j, qxVar.h, i);
            a(iArr[7], b, luaStringArr[7], j, qxVar.i, i);
        }
        return b;
    }

    static String a(String str) {
        return (ps.d(str) || ps.e(str) != 0) ? str : ps.b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a_(String str) {
        return ps.a(str);
    }

    static d a(d dVar, LuaTable luaTable, byte b, boolean z) {
        long j;
        LuaString[] luaStringArr = n;
        long b2 = b(luaTable, (LuaValue) luaStringArr[0]);
        if (!z) {
            b2 &= 4294967295L;
        }
        int b3 = b(a(luaTable, (LuaValue) luaStringArr[2]));
        if (b != 2) {
            LuaString luaString = luaStringArr[1];
            j = a(b2, luaString, luaTable.w(luaString), b3, b == 0);
        } else {
            j = 0;
        }
        if (dVar == null) {
            return new d(b2, j, b3);
        }
        dVar.b = b2;
        dVar.c = j;
        dVar.d = b3;
        return dVar;
    }

    private static long a(long j, LuaValue luaValue, LuaValue luaValue2, int i, boolean z) {
        long j2;
        if (luaValue2 instanceof LuaLong) {
            long q = luaValue2.q();
            if (i == 16) {
                q = Float.floatToRawIntBits((float) q);
            } else if (i == 64) {
                q = Double.doubleToRawLongBits(q);
            }
            if (i == 8) {
                return q ^ j;
            }
            return q;
        } else if (luaValue2 instanceof LuaDouble) {
            double o2 = luaValue2.o();
            if (i == 16) {
                j2 = Float.floatToRawIntBits((float) o2);
            } else if (i == 64) {
                j2 = Double.doubleToRawLongBits(o2);
            } else {
                j2 = (long) o2;
            }
            if (i == 8) {
                return j2 ^ j;
            }
            return j2;
        } else {
            try {
                String b_ = z ? luaValue2.b_((String) null) : luaValue2.y();
                if (b_ == null) {
                    return 0L;
                }
                String a = a(b_);
                rd a2 = ra.a(a, false);
                if (a2 != null) {
                    a = a2.a;
                }
                return d.a(j, a, i);
            } catch (luaj.o e) {
                throw a(luaValue, e);
            }
        }
    }

    static qx a(LuaTable luaTable, boolean z) {
        LuaString[] luaStringArr = n;
        qx qxVar = new qx();
        a(qxVar, luaTable, (byte) 0, z);
        qxVar.e = a(luaTable, luaStringArr[3], (String) null);
        qxVar.f = a(luaTable, (LuaValue) luaStringArr[4], false);
        qxVar.n(a(luaTable, luaStringArr[5], 0));
        long j = qxVar.b;
        int i = qxVar.d;
        LuaString luaString = luaStringArr[6];
        qxVar.h = a(j, luaString, luaTable.w(luaString), i, true);
        LuaString luaString2 = luaStringArr[7];
        qxVar.i = a(j, luaString2, luaTable.w(luaString2), i, true);
        return qxVar;
    }

    static luaj.o a(LuaValue luaValue, LuaValue luaValue2, Throwable th) {
        return new luaj.o("Failed parse item " + luaValue2.d_() + " on key '" + luaValue.d_() + "': " + th.getMessage(), th);
    }

    private static luaj.o a(LuaValue luaValue, luaj.o oVar) {
        String message = oVar.getMessage();
        if (message.indexOf("bad argument:") == 0) {
            return new luaj.o("bad argument for key '" + luaValue.d_() + "':" + message.substring("bad argument:".length()));
        }
        return oVar;
    }

    static boolean a(LuaTable luaTable, LuaValue luaValue, boolean z) {
        try {
            return luaTable.w(luaValue).a(z);
        } catch (luaj.o e) {
            throw a(luaValue, e);
        }
    }

    static int a(LuaTable luaTable, LuaValue luaValue, int i) {
        try {
            return luaTable.w(luaValue).b_(i);
        } catch (luaj.o e) {
            throw a(luaValue, e);
        }
    }

    static String a(LuaTable luaTable, LuaValue luaValue, String str) {
        try {
            return luaTable.w(luaValue).b_(str);
        } catch (luaj.o e) {
            throw a(luaValue, e);
        }
    }

    static int a(LuaTable luaTable, LuaValue luaValue) {
        try {
            return luaTable.w(luaValue).v();
        } catch (luaj.o e) {
            throw a(luaValue, e);
        }
    }

    static long b(LuaTable luaTable, LuaValue luaValue) {
        try {
            return luaTable.z(luaValue);
        } catch (luaj.o e) {
            throw a(luaValue, e);
        }
    }

    static String c(LuaTable luaTable, LuaValue luaValue) {
        try {
            return luaTable.w(luaValue).y();
        } catch (luaj.o e) {
            throw a(luaValue, e);
        }
    }

    static String a(Throwable th) {
        if (th instanceof pt) {
            ((pt) th).a();
        }
        return th.toString();
    }

    void c(String str) {
        this.d.a("\n");
        this.d.a(str);
        this.d.a("\n");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public class SavedState {
        int a;

        private SavedState() {
        }

        /* synthetic */ SavedState(SavedState savedState) {
            this();
        }
    }

    void a_() {
        SavedState savedState = new SavedState(null);
        savedState.a = Config.i;
        this.q = savedState;
    }

    void b_() {
        final SavedState savedState = this.q;
        if (savedState != null) {
            rx.a(new Runnable() { // from class: android.ext.Script.1
                @Override // java.lang.Runnable
                public void run() {
                    Config.a((int) R.id.config_ranges).d = savedState.a;
                    Config.c();
                }
            });
        }
    }

    boolean b(File file) {
        if (file.exists()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
                int i = 0;
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    String trim = readLine.trim();
                    if (trim.length() != 0) {
                        if (i == 0) {
                            try {
                                Integer.parseInt(trim);
                                i = 1;
                            } catch (Throwable th) {
                            }
                        } else if (trim.split("\\|").length < 10) {
                            i = -i;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                bufferedReader.close();
                return i > 1;
            } catch (IOException e) {
                la.a("Failed detect", e);
                return false;
            }
        }
        return false;
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class ScriptThread extends Thread {
        public ScriptThread() {
            super("Script thread");
            ho.a(this);
        }

        /* JADX WARN: Removed duplicated region for block: B:49:0x0153 A[Catch: Throwable -> 0x0294, TryCatch #4 {Throwable -> 0x0294, blocks: (B:3:0x0004, B:5:0x0011, B:9:0x001e, B:11:0x002d, B:13:0x0033, B:14:0x004a, B:17:0x0050, B:19:0x0058, B:22:0x0063, B:24:0x006b, B:28:0x007e, B:29:0x0098, B:31:0x00a0, B:33:0x00b1, B:35:0x00b7, B:37:0x00c9, B:39:0x00d1, B:40:0x00dd, B:42:0x0101, B:44:0x0109, B:47:0x0146, B:49:0x0153, B:50:0x015f, B:46:0x0115, B:75:0x026a, B:72:0x0250, B:54:0x0199, B:57:0x01c7, B:58:0x01d5, B:60:0x01e8, B:62:0x01f0, B:64:0x01f6, B:65:0x023c, B:67:0x0240, B:6:0x0016), top: B:87:0x0004, inners: #1, #5, #6 }] */
        /* JADX WARN: Removed duplicated region for block: B:79:0x029c  */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 681
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: android.ext.Script.ScriptThread.run():void");
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    public class Logger {
        final OutputStream a;
        final FileInputStream b;
        final StringBuilder c;
        int d;

        Logger() {
            FileInputStream fileInputStream;
            BufferedOutputStream bufferedOutputStream;
            StringBuilder sb = null;
            try {
                File file = new File(Tools.i(), String.valueOf(System.currentTimeMillis()) + ".tmp");
                file.createNewFile();
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        file.delete();
                    } catch (Throwable th) {
                        th = th;
                        la.a(th);
                        sb = new StringBuilder();
                        this.c = sb;
                        this.a = bufferedOutputStream;
                        this.b = fileInputStream;
                        this.d = 0;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = null;
                }
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = null;
                bufferedOutputStream = null;
            }
            this.c = sb;
            this.a = bufferedOutputStream;
            this.b = fileInputStream;
            this.d = 0;
        }

        public void a(String str) {
            StringBuilder sb = this.c;
            if (sb == null) {
                try {
                    byte[] bytes = str.getBytes();
                    this.a.write(bytes);
                    this.d = bytes.length + this.d;
                    return;
                } catch (Throwable th) {
                    la.a(th);
                    return;
                }
            }
            sb.append(str);
        }

        public String toString() {
            int i = 262144;
            if (this.d < 0) {
                return "must be called only once";
            }
            StringBuilder sb = this.c;
            if (sb == null) {
                try {
                    int i2 = this.d;
                    this.d = -1;
                    this.a.close();
                    if (i2 > 262144) {
                        this.b.skip(i2 - 262144);
                    } else {
                        i = i2;
                    }
                    byte[] bArr = new byte[i];
                    int read = this.b.read(bArr);
                    this.b.close();
                    la.a("Log script size: read = " + read + "; used = " + i + "; full = " + i2);
                    if (read > 0) {
                        return new String(bArr, 0, read);
                    }
                } catch (Throwable th) {
                    la.a(th);
                }
                return "";
            }
            return sb.toString();
        }
    }

    public static void a(Globals globals) {
        LuaNil.a = null;
        LuaNumber.e = null;
        LuaBoolean.a = null;
        LuaValue j = globals == null ? null : globals.j("string");
        LuaString.a = (j == null || j.F()) ? null : LuaValue.b(new LuaValue[]{D, j});
        LuaFunction.s = null;
        LuaThread.a = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public final class DebugLog {
        final Writer a;
        final Globals b;

        DebugLog(Writer writer, Globals globals) {
            this.a = writer;
            this.b = globals;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01f4 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01ff A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0255  */
    /* JADX WARN: Type inference failed for: r3v0, types: [luaj.Globals, android.ext.Script$DebugLog] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void d() {
        /*
            Method dump skipped, instructions count: 647
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.Script.d():void");
    }

    public Script c_() {
        this.c.start();
        return this;
    }

    public Script f() {
        return a_(1);
    }

    public Script a_(int i) {
        this.h = i;
        this.c.interrupt();
        return this;
    }

    public static String d(String str) {
        Globals globals = new Globals();
        globals.a = false;
        luaj.a.t.a(globals);
        globals.F(new BaseLib());
        globals.F(new Bit32Lib());
        globals.F(new TableLib());
        globals.F(new StringLib());
        globals.F(new Utf8Lib());
        globals.F(new MathLib());
        globals.F(new OsLib());
        return globals.a(new ByteArrayInputStream(str.getBytes()), str, "t", globals).l().d_();
    }
}
