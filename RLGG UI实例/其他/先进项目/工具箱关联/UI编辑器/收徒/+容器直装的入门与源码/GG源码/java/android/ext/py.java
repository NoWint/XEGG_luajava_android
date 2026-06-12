package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.fix.ListView;
import android.fix.TextView;
import android.text.format.DateFormat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import catch_.me_.if_.you_.can_.R;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

/* compiled from: src */
/* loaded from: classes.dex */
class py implements DialogInterface.OnClickListener, View.OnClickListener, AdapterView.OnItemClickListener {
    ListView a;
    final /* synthetic */ PathSelector b;
    private ImageView c;
    private TextView d;
    private TextView e;
    private File f;
    private ArrayAdapter g;
    private AlertDialog h;
    private int i;
    private android.widget.EditText j;
    private android.widget.EditText k;
    private int l;
    private int m;
    private int n;

    private py(PathSelector pathSelector) {
        this.b = pathSelector;
        this.l = Tools.c((int) R.color.file_lua, -16755456);
        this.m = Tools.c((int) R.color.file_txt, -16777131);
        this.n = Tools.c((int) R.color.file_lasm, -16755371);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ py(PathSelector pathSelector, py pyVar) {
        this(pathSelector);
    }

    private void a() {
        this.f = this.f.getParentFile();
        if (this.f == null) {
            this.f = new File("/");
        }
    }

    private void a(String str) {
        this.f = new File(this.f, str);
    }

    private void b() {
        this.d.setText(this.f.getAbsolutePath());
        String[] b = PathSelector.b(this.f);
        b(b == null);
        ArrayList a = PathSelector.a(this.i, this.f, b == null ? android.c.b.a : b, null, this.c.getTag() == null);
        this.g.clear();
        this.g.setNotifyOnChange(false);
        Iterator it = a.iterator();
        while (it.hasNext()) {
            this.g.add(((qb) it.next()).a);
        }
        this.g.notifyDataSetChanged();
        this.g.setNotifyOnChange(true);
    }

    public View a(int i, View view, ViewGroup viewGroup) {
        File file;
        long j;
        long j2;
        boolean z;
        if (view == null) {
            view = android.fix.i.from(this.b.getContext()).inflate(R.layout.path_item, (ViewGroup) null);
            qc qcVar = new qc();
            qcVar.a = (TextView) view.findViewById(R.id.name);
            qcVar.b = (TextView) view.findViewById(R.id.date);
            qcVar.c = (TextView) view.findViewById(R.id.size);
            qcVar.d = Config.a((ImageView) view.findViewById(R.id.icon));
            view.setTag(qcVar);
        }
        try {
            file = (File) this.g.getItem(i);
        } catch (IndexOutOfBoundsException e) {
            la.b("Failed get item: " + i, e);
            file = null;
        }
        File file2 = file == null ? new File(this.f, "???") : file;
        qc qcVar2 = (qc) view.getTag();
        String name = file2.getName();
        if (name.endsWith(".lua")) {
            view.setBackgroundColor(this.l);
        } else if (name.endsWith(".txt")) {
            view.setBackgroundColor(this.m);
        } else if (name.endsWith(".lasm")) {
            view.setBackgroundColor(this.n);
        } else {
            view.setBackgroundColor(0);
        }
        qcVar2.a.setText(name);
        try {
            boolean a = PathSelector.a(file2);
            j2 = a ? -1L : file2.length();
            j = file2.lastModified();
            z = a;
        } catch (Throwable th) {
            la.b("Failed get info: " + file2.getAbsolutePath(), th);
            j = -1;
            j2 = -1;
            z = false;
        }
        qcVar2.d.setImageResource(z ? R.drawable.ic_folder_outline_white_24dp : R.drawable.ic_file_white_24dp);
        qcVar2.c.setText(j2 >= 0 ? Tools.a(this.b.getContext(), j2) : "");
        qcVar2.b.setText(j > 0 ? DateFormat.format("yyyy-MM-dd kk:mm:ss", j) : "");
        return view;
    }

    private void b(String str) {
        EditText editText = new EditText(Tools.e());
        this.k = editText;
        editText.setText(str);
        i.a(i.c().setCustomTitle(Tools.b(qk.a((int) R.string.folder_new), String.valueOf(this.f.getAbsolutePath()) + "/...")).setView(InternalKeyboard.c(editText, false)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).setPositiveButton(qk.a((int) R.string.ok), this));
    }

    private void a(File file, boolean z) {
        ArrayAdapter arrayAdapter = this.g;
        int count = arrayAdapter.getCount();
        String lowerCase = file.getAbsolutePath().toLowerCase(Locale.US);
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i < count) {
                File file2 = (File) arrayAdapter.getItem(i);
                if (file.equals(file2)) {
                    break;
                }
                int i3 = (z != PathSelector.a(file2) || lowerCase.compareTo(file2.getAbsolutePath().toLowerCase(Locale.US)) <= 0) ? i2 : i;
                i++;
                i2 = i3;
            } else {
                i = i2;
                break;
            }
        }
        a(i);
    }

    private void a(int i) {
        this.a.setSelection(i);
        this.a.post(new pz(this, i));
    }

    private void a(boolean z) {
        this.c.setTag(z ? null : this.c);
        this.c.setImageDrawable(Tools.b(z ? R.drawable.ic_sort_name_white_24dp : R.drawable.ic_sort_date_white_24dp));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.add /* 2131427412 */:
                b("");
                return;
            case R.id.sort /* 2131427413 */:
                boolean z = this.c.getTag() != null;
                PathSelector.a = z;
                a(z);
                b();
                a(0);
                return;
            case R.id.up /* 2131427414 */:
                File file = this.f;
                a();
                b();
                a(file, true);
                return;
            default:
                Object tag = this.b.getTag();
                if (tag instanceof EditTextPath) {
                    EditTextPath editTextPath = (EditTextPath) tag;
                    this.j = editTextPath;
                    View a = android.fix.i.a((int) R.layout.path_selector, (ViewGroup) null);
                    this.d = (TextView) a.findViewById(R.id.path);
                    Config.a((ImageView) a.findViewById(R.id.add)).setOnClickListener(this);
                    ImageView imageView = (ImageView) a.findViewById(R.id.sort);
                    this.c = imageView;
                    Config.a(imageView).setOnClickListener(this);
                    a(PathSelector.a);
                    Config.a((ImageView) a.findViewById(R.id.up)).setOnClickListener(this);
                    this.e = (TextView) a.findViewById(R.id.failed);
                    ListView listView = (ListView) a.findViewById(R.id.files);
                    this.a = listView;
                    qa qaVar = new qa(this, this.b.getContext(), new ArrayList());
                    this.g = qaVar;
                    listView.setAdapter((ListAdapter) qaVar);
                    listView.setOnItemClickListener(this);
                    this.i = editTextPath.getPathType();
                    File file2 = new File(editTextPath.getText().toString());
                    this.f = file2;
                    while (!PathSelector.a(this.f)) {
                        a();
                    }
                    b();
                    a(file2, this.i == 0);
                    AlertDialog.Builder negativeButton = i.c().setView(a).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null);
                    if (this.i != 1) {
                        negativeButton.setPositiveButton(qk.a((int) R.string.ok), this);
                    }
                    AlertDialog create = negativeButton.create();
                    this.h = create;
                    i.c(create);
                    return;
                }
                return;
        }
    }

    private void b(boolean z) {
        this.e.setVisibility(z ? 0 : 8);
        this.a.setVisibility(z ? 8 : 0);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        if (i >= 0 && i < this.g.getCount()) {
            try {
                File file = (File) this.g.getItem(i);
                if (file != null) {
                    if (PathSelector.a(file)) {
                        a(file.getName());
                        b();
                        a(0);
                    } else if (this.i != 0) {
                        this.j.setText(file.getAbsolutePath());
                        Tools.a((DialogInterface) this.h);
                    }
                }
            } catch (Exception e) {
                la.b("Failed get Item: " + i, e);
            }
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String str;
        if (dialogInterface == this.h) {
            String absolutePath = this.f.getAbsolutePath();
            if (this.i == 2) {
                String name = new File(this.j.getText().toString()).getName();
                str = String.valueOf(absolutePath) + "/" + ((name == null || name.length() == 0) ? "file.txt" : "file.txt");
            } else {
                str = absolutePath;
            }
            this.j.setText(str);
            return;
        }
        android.widget.EditText editText = this.k;
        if (editText != null) {
            String trim = editText.getText().toString().trim();
            if (trim.length() > 0) {
                File file = new File(this.f, trim);
                if (file.exists()) {
                    if (PathSelector.a(file)) {
                        Tools.a((int) R.string.folder_exists);
                    } else {
                        Tools.a((int) R.string.folder_file);
                    }
                    b(trim);
                    return;
                } else if (!file.mkdirs()) {
                    Tools.a((int) R.string.folder_failed);
                    b(trim);
                    return;
                } else {
                    iw.a(trim, 4);
                    b();
                    return;
                }
            }
            Tools.a((int) R.string.folder_failed);
            b(trim);
        }
    }
}
