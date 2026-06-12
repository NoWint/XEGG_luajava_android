package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.ext.Script;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/* compiled from: src */
/* loaded from: classes.dex */
public class kx implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnShowListener, View.OnClickListener, View.OnLongClickListener {
    private static int h = -1;
    boolean a = false;
    private android.widget.EditText b;
    private RadioGroup c;
    private CheckBox d;
    private AlertDialog e;
    private qh f;
    private qx[] g;

    public static void a(int i, qx[] qxVarArr, String str, int i2) {
        String str2;
        String str3;
        long j;
        File file = new File(str);
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        boolean z = (i2 & 1) != 0;
        FileWriter fileWriter = new FileWriter(file);
        if (!z) {
            fileWriter.write(String.valueOf(i) + "\n");
        }
        for (qx qxVar : qxVarArr) {
            if (qxVar != null) {
                qs b = RegionList.b(qxVar.b);
                if (b == null || b.d().length() == 0) {
                    str2 = "";
                    str3 = "";
                    j = 0;
                } else {
                    str2 = b.a();
                    str3 = b.d();
                    j = qxVar.b - b.b;
                }
                StringBuilder sb = new StringBuilder();
                if (z) {
                    sb.append(RegionList.a(qxVar.b));
                    sb.append("; ");
                    sb.append(qxVar.g());
                    sb.append("; ");
                    sb.append(qxVar.t());
                    sb.append("; ");
                    sb.append(qxVar.h());
                    sb.append("; ");
                    sb.append(qxVar.n());
                    sb.append("\n");
                } else {
                    sb.append(a(qxVar.t()));
                    sb.append('|');
                    sb.append(Long.toHexString(qxVar.b));
                    sb.append('|');
                    sb.append(Integer.toHexString(qxVar.d));
                    sb.append('|');
                    sb.append(Long.toHexString(qxVar.c));
                    sb.append('|');
                    sb.append(qxVar.f ? '1' : '0');
                    sb.append('|');
                    sb.append((int) qxVar.g);
                    sb.append('|');
                    sb.append(Long.toHexString(qxVar.h));
                    sb.append('|');
                    sb.append(Long.toHexString(qxVar.i));
                    sb.append('|');
                    sb.append(a(str2));
                    sb.append('|');
                    sb.append(a(str3));
                    sb.append('|');
                    sb.append(Long.toHexString(j));
                    sb.append("\n");
                }
                fileWriter.write(sb.toString());
            }
        }
        fileWriter.close();
    }

    private static String a(String str) {
        return str.replace('|', '/');
    }

    public static void a(int i, String str, int i2) {
        File file = new File(str);
        if (file.exists()) {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            boolean z = (i2 & 1) != 0;
            boolean z2 = (i2 & 2) != 0;
            SavedListAdapter savedListAdapter = MainService.instance.an;
            if ((i2 & 8) == 0) {
                savedListAdapter.c();
            }
            int i3 = 0;
            boolean z3 = false;
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    int i4 = i3 + 1;
                    if (i4 == 1) {
                        z3 = Integer.parseInt(readLine) == i;
                        i3 = i4;
                    } else {
                        String[] split = readLine.split("\\|");
                        if (split.length < 10) {
                            la.b("Failed parse line: '" + readLine + "' " + split.length);
                            i3 = i4;
                        } else {
                            qx qxVar = new qx(ps.a(split[1], 16), ps.a(split[3], 16), Integer.parseInt(split[2], 16), split[0], z ? split[4].equals("1") : false, Byte.parseByte(split[5]), ps.a(split[6], 16), ps.a(split[7], 16));
                            long a = ps.a(split[10], 16);
                            if (!z3) {
                                qs b = RegionList.b(qxVar.b);
                                if (b == null || !b.a().equals(split[8]) || !b.d().equals(split[9]) || qxVar.b != b.b + a) {
                                    qs a2 = RegionList.a(split[8], split[9], a);
                                    if (a2 != null) {
                                        long j = a2.b + a;
                                        la.a("Fix: " + Long.toHexString(qxVar.b) + " -> " + Long.toHexString(j) + "; " + split[8] + ' ' + split[9] + ' ' + Long.toHexString(a) + "; " + a2.a() + ' ' + a2.d());
                                        qxVar.b = j;
                                    }
                                } else {
                                    la.a("ASLR: " + Long.toHexString(qxVar.b) + " ??? " + Long.toHexString(b.b + a) + "; " + split[8] + ' ' + split[9] + ' ' + Long.toHexString(a) + "; " + b.a() + ' ' + b.d());
                                }
                            }
                            if (z2) {
                                qxVar.p();
                            }
                            savedListAdapter.a(qxVar, (byte) 0, false);
                            i3 = i4;
                        }
                    }
                } catch (OutOfMemoryError e) {
                    la.b("OOM on load list", e);
                }
            }
            bufferedReader.close();
            savedListAdapter.notifyDataSetChanged();
            savedListAdapter.d();
            if (!z3 && (i2 & 4) == 0) {
                i.a(i.c().setCustomTitle(Tools.d((int) R.string.load_list)).setMessage(qk.a((int) R.string.load_warning)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
            }
        }
    }

    private static boolean b(String str) {
        SharedPreferences a;
        int i;
        qx[] qxVarArr;
        int i2;
        try {
            a = MainService.instance.a(str, 0);
            i = a.getInt("size", 0);
            qxVarArr = new qx[i];
            i2 = 0;
        } catch (Exception e) {
            la.b("Failed load saved list", e);
        }
        while (true) {
            int i3 = i2;
            if (i3 >= i) {
                break;
            }
            try {
                qxVarArr[i3] = new qx(a.getLong(String.valueOf(i3) + "-address", 0L), a.getLong(String.valueOf(i3) + "-data", 0L), a.getInt(String.valueOf(i3) + "-flags", 4), a.getString(String.valueOf(i3) + "-name", null), a.getBoolean(String.valueOf(i3) + "-freeze", false), (byte) a.getInt(String.valueOf(i3) + "-freezeType", 0), a.getLong(String.valueOf(i3) + "-freezeFrom", 0L), a.getLong(String.valueOf(i3) + "-freezeTo", 0L));
            } catch (Exception e2) {
                la.b("Failed load item: " + i3, e2);
            }
            i2 = i3 + 1;
            la.b("Failed load saved list", e);
            return false;
        }
        int i4 = a.getInt("pid", 0);
        int i5 = 0;
        while (i5 < 10) {
            File file = new File(qd.a(null, "save-path"), String.valueOf(str) + (i5 == 0 ? "" : Integer.valueOf(i5 + 45)) + ".txt");
            if (!file.exists()) {
                try {
                    a(i4, qxVarArr, file.getAbsolutePath(), 0);
                    if (file.exists()) {
                        return true;
                    }
                } catch (IOException e3) {
                    la.b("Failed save saved list", e3);
                }
            }
            i5++;
        }
        return false;
    }

    public static void a() {
        String[] list;
        File parentFile = ty.b("tmp").getParentFile();
        if (parentFile.exists() && (list = parentFile.list()) != null) {
            for (String str : list) {
                if (str != null && !str.endsWith("_preferences.xml") && str.endsWith(".xml")) {
                    String substring = str.substring(0, str.length() - 4);
                    if (!substring.equals(MainService.a) && !substring.equals("DefaultStorage")) {
                        la.a("Try convert '" + substring + "'.");
                        if (b(substring)) {
                            la.a("All ok - remove '" + substring + "'.");
                            new File(parentFile, str).delete();
                        }
                    }
                }
            }
        }
    }

    public kx(qh qhVar, qx[] qxVarArr) {
        if (qhVar == null) {
            i.a(i.c().setCustomTitle(Tools.d((int) R.string.load_list)).setMessage(qk.a((int) R.string.no_application)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
        } else if (qxVarArr != null && qxVarArr.length == 0) {
            i.a(i.c().setMessage(qk.a((int) R.string.empty_save)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
        } else {
            MainService.instance.k.i();
            this.f = qhVar;
            this.g = qxVarArr;
            boolean z = qxVarArr == null;
            View a = android.fix.i.a((int) R.layout.save, (ViewGroup) null);
            ((TextView) a.findViewById(R.id.message)).setText(qk.a(z ? R.string.load_saved_list : R.string.save_saved_list));
            EditTextPath editTextPath = (EditTextPath) a.findViewById(R.id.file);
            this.b = editTextPath;
            editTextPath.setText(qd.a("save-path", "-list", ".txt"));
            editTextPath.setDataType(4);
            editTextPath.setPathType(z ? 1 : 2);
            a.findViewById(R.id.path_selector).setTag(editTextPath);
            if (z) {
                a.findViewById(R.id.load_stuff).setVisibility(0);
            } else {
                a.findViewById(R.id.save_stuff).setVisibility(0);
            }
            RadioGroup radioGroup = (RadioGroup) a.findViewById(R.id.mode);
            this.c = radioGroup;
            if (h > 0) {
                radioGroup.check(h);
            }
            ((RadioButton) a.findViewById(R.id.mode_0)).setText(qk.a((int) R.string.load_0));
            ((RadioButton) a.findViewById(R.id.mode_1)).setText(qk.a((int) R.string.load_1));
            ((RadioButton) a.findViewById(R.id.mode_2)).setText(qk.a((int) R.string.load_2));
            CheckBox checkBox = (CheckBox) a.findViewById(R.id.as_text);
            this.d = checkBox;
            Tools.j(checkBox);
            checkBox.setOnLongClickListener(this);
            AlertDialog.Builder negativeButton = i.c().setView(InternalKeyboard.c(a, false)).setPositiveButton(qk.a(z ? R.string.load : R.string.save), this).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null);
            if (z && MainService.instance.an.getCount() != 0) {
                negativeButton.setNeutralButton(qk.a((int) R.string.append), this);
            }
            AlertDialog create = negativeButton.create();
            this.e = create;
            i.a(create, (DialogInterface.OnShowListener) this);
            i.a(create, (DialogInterface.OnDismissListener) this);
            i.a(create, editTextPath);
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (view == null) {
            return false;
        }
        switch (view.getId()) {
            case R.id.as_text /* 2131427422 */:
                i.a(i.c().setMessage(qk.a((int) R.string.as_text_help)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
                return true;
            default:
                return false;
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        android.widget.EditText editText = this.b;
        if (editText != null) {
            qd.a(editText.getText().toString(), "save-path", "-list", ".txt");
        }
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(dialogInterface, -1, (Object) null, this);
        Tools.a(dialogInterface, -3, (Object) (-3), (View.OnClickListener) this);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Button button = ((AlertDialog) dialogInterface).getButton(i);
        if (button != null) {
            onClick(button);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        android.widget.EditText editText = this.b;
        if (view != null && editText != null) {
            String trim = editText.getText().toString().trim();
            if (Tools.o(trim)) {
                boolean z = this.g == null;
                if (!z || Tools.b((Object) trim)) {
                    iw.a(trim, 4);
                    if (z) {
                        MainService.instance.i();
                        RadioGroup radioGroup = this.c;
                        if (radioGroup != null) {
                            int checkedRadioButtonId = radioGroup.getCheckedRadioButtonId();
                            h = checkedRadioButtonId;
                            switch (checkedRadioButtonId) {
                                case R.id.mode_1 /* 2131427426 */:
                                    r0 = 2;
                                    break;
                                case R.id.mode_2 /* 2131427427 */:
                                    break;
                                default:
                                    r0 = 3;
                                    break;
                            }
                            if (view.getTag() instanceof Integer) {
                                r0 |= 8;
                            }
                            try {
                                a(this.f.f, trim, r0);
                                Tools.a((DialogInterface) this.e);
                                qm qmVar = MainService.instance.h;
                                if (qmVar != null) {
                                    qmVar.write("gg.loadList(");
                                    Script.Consts.a(qmVar, trim);
                                    qmVar.write(", ");
                                    Script.Consts.a(qmVar, qmVar.a.e, r0);
                                    qmVar.write(")\n");
                                    return;
                                }
                                return;
                            } catch (IOException e) {
                                la.b("Failed load list", e);
                                Tools.b(e.getMessage());
                                return;
                            }
                        }
                        return;
                    }
                    CheckBox checkBox = this.d;
                    if (checkBox != null) {
                        try {
                            r0 = checkBox.isChecked() ? 1 : 0;
                            a(this.f.f, this.g, trim, r0);
                            Tools.a((DialogInterface) this.e);
                            qm qmVar2 = MainService.instance.h;
                            if (qmVar2 != null) {
                                if (this.a) {
                                    qmVar2.write("\nlocal prev = gg.getListItems()\n");
                                    qmVar2.write("gg.clearList()\n");
                                    qmVar2.write("local t = ");
                                    ek.a(qmVar2, true);
                                    qmVar2.write("gg.addListItems(t)\n");
                                    qmVar2.write("t = nil\n");
                                }
                                qmVar2.write("gg.saveList(");
                                Script.Consts.a(qmVar2, trim);
                                qmVar2.write(", ");
                                Script.Consts.a(qmVar2, qmVar2.a.f, r0);
                                qmVar2.write(")");
                                if (this.a) {
                                    qmVar2.write("\ngg.clearList()\n");
                                    qmVar2.write("gg.addListItems(prev)\n");
                                    qmVar2.write("prev = nil\n");
                                }
                                qmVar2.write("\n");
                            }
                        } catch (IOException e2) {
                            la.b("Failed save list", e2);
                            Tools.b(e2.getMessage());
                        }
                    }
                }
            }
        }
    }
}
