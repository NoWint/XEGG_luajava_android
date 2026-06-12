package android.ext;

import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SeekBar;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.ActivityMain;
import catch_.me_.if_.you_.can_.MainActivity;
import catch_.me_.if_.you_.can_.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;

/* compiled from: src */
/* loaded from: classes.dex */
public class ConfigListAdapter extends BaseAdapter implements AdapterView.OnItemClickListener {
    public static final String DEVS = "\td2dyno - __owner__, __design__, __pm__.\n\tEnyby - __code__, __pm__.\n\tTrasd - __tech__, __pm__.\n\tAqua - __creator__.\n".intern();
    public static long a = 0;
    static final int[] b = {R.string.help_faq_title, R.string.help_faq, -1, R.string.help_context_title, R.string.help_context, -1, R.string.help_basics_title, R.string.help_basics, 2, R.string.help_floating_icon_title, R.string.help_floating_icon_, -1, R.string.help_scripts_title, R.string.help_scripts, 21, R.string.help_exact_search_title, R.string.help_exact_search, -1, R.string.help_speedhack_title, R.string.help_speedhack, 1, R.string.help_group_search_title, R.string.help_group_search_, 6, R.string.help_range_search_title, R.string.help_range_search, 5, R.string.help_encrypted_search_title, R.string.help_encrypted_search, 7, R.string.search_unknown_value, R.string.help_fuzzy_search, 0, R.string.help_mask_search_title, R.string.help_mask_search, 8, R.string.help_fill_title, R.string.help_fill, 9, R.string.help_string_search_title, R.string.help_text_search, 12, R.string.help_xor_search_title, R.string.help_xor_search, 11, R.string.help_search_filter_title, R.string.help_search_filter, 20, R.string.help_memory_filter_title, R.string.help_memory_filter, 16, R.string.help_others_title, R.string.help_others, 4, R.string.help_typical_usage_title, R.string.help_typical_usage, 3, R.string.help_speed_up_title, R.string.help_speed_up, 10, R.string.help_games_protection_title, R.string.help_games_protection_, 14, R.string.help_hide_gg_title, R.string.help_games_protection_end, 24, R.string.help_hints_title, R.string.help_hints_0, -1, R.string.help_hex_colors_title, R.string.help_hex_colors, -1, R.string.help_pointer_search_title, R.string.help_pointer_search, 17, R.string.help_unaligned_title, R.string.help_unaligned, 22, R.string.help_formula_calculator_title, R.string.help_formula_calculator, 23, R.string.help_add_to_value_title, R.string.help_add_to_value, 13, R.string.unrandomizer, R.string.help_unrandomizer, 18, R.string.restart_game_without_protection, R.string.warn_restart_off_prot, 15, R.string.disable_protection, R.string.warn_patch_off_prot_, -1, R.string.work_without_root_title, R.string.work_without_root, 19, R.string.help_game_not_listed_title, R.string.help_game_not_listed_root, -1, R.string.help_force_close_title, R.string.daemon_killed, -1, R.string.help_lasm_title, R.string.help_lasm, 25};
    static final String[] c = {"kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh24950vhdufk0xqnqrz0zlwk0nqrzq0fkdqjhv0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh25570vshhg0kdfn0dqg0wlph0mxps0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh248;0krz0xvh0h|h0lfrq0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh248<0krz0vhdufk0hqfu|swhg0ydoxh0jdphjxdugldq2\r\rkwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh24970frpsduh0phwkrgv0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh24<40klvwru|0xvdjh0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh25550h{dpsoh0ri0udqjh0vhdufk0jdphjxdugldq2\r\rkwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh25590krz0wr0vhdufk0urxqghg0ydoxh0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh255<0krz0wr0xvh0rughuhg0jurxs0vhdufk0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh248<0krz0vhdufk0hqfu|swhg0ydoxh0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh25960h{dpsoh0ri0wkh0pdvn0vhdufk0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh255:0krz0wr0xvh0iloo0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh24<50krz0wr0vshhg0xs0vhdufk0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh25;60{ru0vhdufk0jxlgh0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh28:80;330wh{w0vwulqj0kh{0dre0vhdufk0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh26690rswlrq0dgg0wr0ydoxh0gr0qrw0uhsodfh0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh26860lpsorvlrq0qhyhu0orvh0krsh0kdfn0ohyho0klgh0iurp0wkh0jdph0jdphjxdugldq2\r\rkwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh26870lpsorvlrq0qhyhu0orvh0krsh0kdfn0fuhglwv0klgh0iurp0wkh0jdph0jdphjxdugldq2\r\rkwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh26930lpsorvlrq0qhyhu0orvh0krsh0kdfn0fuhglwv0uhvwduw0zlwkrxw0surwhfwlrq0jdphjxdugldq2\r\rkwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh26950lpsorvlrq0qhyhu0orvh0krsh0kdfn0fuhglwv0glvdeoh0surwhfwlrq0jdphjxdugldq2\r\rkwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh28680:530xvh0urrw0iurp0yluwxdo0vsdfh0iru0klgh0jdphjxdugldq0yluwxdo{srvhg0jdphjxdugldq2\r\rkwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh28;30iuhh0iluh0dyrlg0ghwhfwlrq0urrw0iurp0yluwxdo0vsdfh0yluwxdo{srvhg0jdphjxdugldq2\r\rkwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh28;40dyrlg0ghwhfwlrq0urrw0iurp0yluwxdo0vsdfh0yluwxdo{srvhg0jdphjxdugldq2\r\rkwws=22jdphjxdugldq1qhw2iruxp2wdjv2dss(53klgh2\r\rkwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh28;80dyrlg0ghwhfwlrq0urrw0iurp0yluwxdo0vsdfh0pxowlsoh0dffrxqwv0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh26;80uhvwduw0zlwkrxw0surwhfwlrq0uhsdlu0wkh0uherrw0uxq0jdphjxdugldq0jdphjxdugldq2\r\rkwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh26;70uhvwduw0zlwkrxw0surwhfwlrq0uhsdlu0wkh0uherrw0uherrw0ghylfh0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh267:0krz0wr0vhdufk0ilowhu0lq0wkh0phpru|0hglwru0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh26770krz0wr0txlfno|0vhdufk0iru0srlqwhuv0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh26990xqudqgrpl}hu0jdphjxdugldq2\r\rkwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh26;40uxvvldq0vorwv0kdfn0vwruh0xqudqgrpl}hu0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2qrurrw", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh27480ilowhuv0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2ilohv2fdwhjru|290oxd0vfulswv2\r\rkwws=22jdphjxdugldq1qhw2khos2", "kwws=22jdphjxdugldq1qhw2iruxp2ilohv2iloh2:970xqdoljqhg0vhdufk2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh286:0:630irupxod0fdofxodwru0jdphjxdugldq2\r\rkwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh286;0jxq0zdu0vkrrwlqj0jdphv0kdfn0sulfh0irupxod0fdofxodwru0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh28680:530xvh0urrw0iurp0yluwxdo0vsdfh0iru0klgh0jdphjxdugldq0yluwxdo{srvhg0jdphjxdugldq2\r\rkwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh28;30iuhh0iluh0dyrlg0ghwhfwlrq0urrw0iurp0yluwxdo0vsdfh0yluwxdo{srvhg0jdphjxdugldq2\r\rkwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh28;40dyrlg0ghwhfwlrq0urrw0iurp0yluwxdo0vsdfh0yluwxdo{srvhg0jdphjxdugldq2\r\rkwws=22jdphjxdugldq1qhw2iruxp2wdjv2dss(53klgh2\r\rkwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh28;80dyrlg0ghwhfwlrq0urrw0iurp0yluwxdo0vsdfh0pxowlsoh0dffrxqwv0jdphjxdugldq2", "kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh29470il{lqj0d0vfulsw0xvlqj0dvvhpeohu0jdphjxdugldq2"};
    private static boolean j = false;
    private WeakReference e = new WeakReference(null);
    private WeakReference f = new WeakReference(null);
    private WeakReference g = new WeakReference(null);
    private boolean h = false;
    private tp i = null;
    private View[] d = android.c.b.b;

    public ConfigListAdapter() {
        HotPoint hotPoint = MainService.instance.l;
        a(hotPoint.getLayoutAlpha(), hotPoint.getVanishingTime(), null, null, hotPoint.getSize());
        a();
    }

    public void a(boolean z) {
        if (z) {
            if (this.d.length <= 0) {
                ViewGroup viewGroup = (ViewGroup) android.fix.i.a((int) R.layout.service_config, (ViewGroup) null);
                this.e = new WeakReference((TextView) viewGroup.findViewById(R.id.game_section));
                this.f = new WeakReference((TextView) viewGroup.findViewById(R.id.config_icon_text));
                this.g = new WeakReference((ImageView) viewGroup.findViewById(R.id.config_icon_example));
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    try {
                        View childAt = viewGroup.getChildAt(i);
                        if (childAt.getVisibility() != 8) {
                            if (childAt instanceof TextView) {
                                ((TextView) childAt).setText(qk.a(((TextView) childAt).getText().toString().trim()));
                                a((TextView) childAt);
                            }
                            childAt.setLayoutParams(new AbsListView.LayoutParams(-1, -2, 0));
                            arrayList.add(childAt);
                        }
                    } catch (ArrayIndexOutOfBoundsException e) {
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Tools.d((View) it.next());
                }
                this.d = (View[]) arrayList.toArray(new View[arrayList.size()]);
                notifyDataSetChanged();
                MainService mainService = MainService.instance;
                mainService.S.setAdapter((ListAdapter) this);
                HotPoint hotPoint = mainService.l;
                b();
                a(hotPoint.getLayoutAlpha(), hotPoint.getVanishingTime(), null, null, hotPoint.getSize());
                tp tpVar = this.i;
                if (tpVar != null) {
                    Tools.a(MainService.instance.S, tpVar);
                    MainService.instance.S.post(new da(this, tpVar));
                }
            }
        } else if (this.d.length != 0) {
            ListView listView = MainService.instance.S;
            this.i = Tools.a(listView);
            this.d = android.c.b.b;
            notifyDataSetChanged();
            listView.setAdapter((ListAdapter) null);
        }
    }

    private void a(TextView textView) {
        int i = 0;
        switch (textView.getId()) {
            case R.id.help /* 2131427347 */:
                i = R.drawable.ic_help_circle_outline_white_24dp;
                break;
            case R.id.config_time_jump_panel /* 2131427460 */:
                i = R.drawable.ic_fast_forward_white_24dp;
                break;
            case R.id.config_unrandomizer /* 2131427462 */:
                i = R.drawable.ic_dice_multiple_white_24dp;
                break;
            case R.id.config_autopause /* 2131427468 */:
                i = R.drawable.ic_pause_white_18dp;
                break;
            case R.id.config_saved_list_updates_interval /* 2131427470 */:
                i = R.drawable.ic_content_save_white_24dp;
                break;
            case R.id.config_speeds /* 2131427471 */:
                i = R.drawable.ic_speedometer_white_24dp;
                break;
            case R.id.config_history_limit /* 2131427486 */:
                i = R.drawable.ic_history_white_24dp;
                break;
            case R.id.config_use_small_list_items /* 2131427492 */:
                i = R.drawable.ic_format_list_bulleted_white_24dp;
                break;
            case R.id.config_icons_size /* 2131427497 */:
                i = R.drawable.ic_tooltip_edit_white_24dp;
                break;
            case R.id.screenshot /* 2131427512 */:
                i = R.drawable.ic_cellphone_screenshot_white_24dp;
                break;
        }
        if (i != 0) {
            Tools.a(textView, Tools.b(i), Config.d());
        }
    }

    public void a() {
        View[] viewArr;
        for (View view : this.d) {
            if (view instanceof TextView) {
                TextView textView = (TextView) view;
                int id = view.getId();
                ct a2 = Config.a(id);
                boolean z = id == R.id.config_speedhack_functions || id == R.id.config_unrandomizer;
                if (a2 != null) {
                    textView.setText(a2.toString());
                    z = a2.g;
                }
                if (z) {
                    textView.setBackgroundColor(-2137746366);
                }
            }
        }
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View[] viewArr = this.d;
        return i >= viewArr.length ? new View(Tools.e()) : viewArr[i];
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        if (!this.h) {
            this.h = true;
            a();
            this.h = false;
        }
        super.notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.d.length;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        TextView textView = (TextView) this.e.get();
        if (textView != null) {
            String a2 = qk.a((int) R.string.game_settings);
            qh qhVar = MainService.instance.ap;
            String str = qhVar != null ? qhVar.b : null;
            if (str != null) {
                a2 = String.valueOf(Tools.g(a2)) + " \"" + str + "\":";
            }
            textView.setText(a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f, int i, TextView textView, ImageView imageView, int i2) {
        MainService mainService = MainService.instance;
        String str = "fail";
        try {
            str = Tools.a(qk.a((int) R.string.config_icon_text), Integer.valueOf(100 - ((int) (100.0f * f))), i < 0 ? qk.a((int) R.string.icon_hide_never) : Tools.a(qk.a((int) R.string.icon_hide_after), Integer.valueOf(i)));
        } catch (Throwable th) {
            la.c("Fail setup string for icon config", th);
        }
        TextView textView2 = (TextView) this.f.get();
        if (textView2 != null) {
            textView2.setText(str);
        }
        if (textView != null) {
            textView.setText(str);
        }
        mainService.l.setSize(i2);
        int sizePx = mainService.l.getSizePx();
        TimeJumpPanel timeJumpPanel = mainService.m;
        if (timeJumpPanel != null) {
            timeJumpPanel.setMinSize(sizePx);
        }
        ImageView imageView2 = (ImageView) this.g.get();
        if (imageView2 != null) {
            Tools.a(imageView2, f * 255.0f);
            Config.b(imageView2, sizePx);
        }
        if (imageView != null) {
            Tools.a(imageView, f * 255.0f);
            Config.b(imageView, sizePx);
        }
        mainService.l.setLayoutAlpha(f);
        mainService.l.setVanishingTime(i);
        mainService.a(mainService.S.getAdapter());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c() {
        i.a(i.c().setCustomTitle(Tools.d((int) R.string.app_name)).setMessage(qk.a((int) R.string.exit_confirm)).setPositiveButton(qk.a((int) R.string.restart), new ib(200, true)).setNegativeButton(qk.a((int) R.string.skip), (DialogInterface.OnClickListener) null));
    }

    private static void m() {
        new qw().a("mc", a, 0L).commit();
    }

    public static String d() {
        SharedPreferences s = Tools.s();
        SharedPreferences.Editor edit = s.edit();
        StringBuilder sb = new StringBuilder();
        long j2 = s.getLong("mc", 0L);
        edit.remove("mc");
        if (j2 != 0) {
            sb.append("&mc=");
            sb.append('=');
            sb.append(Long.toHexString(j2));
        }
        edit.commit();
        return sb.toString();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j2) {
        int id;
        View view2;
        if (view != null && (id = view.getId()) != -1) {
            long j3 = 1 << (i % 63);
            if ((a & j3) == 0) {
                a = j3 | a;
                m();
            }
            MainService mainService = MainService.instance;
            ct a2 = Config.a(id);
            if (a2 != null) {
                if (id == R.id.config_keyboard) {
                    a2.a(new dq(this));
                } else if (id == R.id.config_icons_size) {
                    a2.a(new ed(this));
                }
                a2.d();
                return;
            }
            switch (id) {
                case R.id.help /* 2131427347 */:
                    g();
                    return;
                case R.id.changelog /* 2131427388 */:
                    new db(this, "changelog").start();
                    return;
                case R.id.donate /* 2131427452 */:
                    new be("kwws=22jdphjxdugldq1qhw2grqdwh").onClick(null, 0);
                    return;
                case R.id.config_reset /* 2131427453 */:
                    mainService.a(true);
                    return;
                case R.id.config_exit /* 2131427454 */:
                    i.a(i.c().setCustomTitle(Tools.d((int) R.string.exit)).setPositiveButton(qk.a((int) R.string.yes), new ib(300)).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null));
                    return;
                case R.id.config_kill_game /* 2131427455 */:
                    i.a(i.c().setCustomTitle(Tools.d((int) R.string.kill_game)).setMessage(qk.a((int) R.string.kill_game_info_)).setPositiveButton(qk.a((int) R.string.yes), new ef(this, mainService)).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null));
                    return;
                case R.id.config_speedhack_functions /* 2131427459 */:
                    MainService.instance.ae.a();
                    return;
                case R.id.config_unrandomizer /* 2131427462 */:
                    MainService.instance.ag.a();
                    return;
                case R.id.config_speeds /* 2131427471 */:
                    try {
                        view2 = android.fix.i.a((int) R.layout.list_speeds_config, (ViewGroup) null);
                    } catch (IndexOutOfBoundsException e) {
                        la.a(e);
                        view2 = null;
                        MainService.H();
                    }
                    if (view2 != null) {
                        TextView textView = (TextView) view2.findViewById(R.id.message);
                        textView.setText(qk.a(textView.getText().toString().trim()));
                        EditTextSpeeds editTextSpeeds = (EditTextSpeeds) view2.findViewById(R.id.speeds);
                        TextView textView2 = (TextView) view2.findViewById(R.id.default_);
                        textView2.setText(String.valueOf(Tools.c((int) R.string.default_)) + ": " + ky.a());
                        textView2.setOnClickListener(new eh(this, editTextSpeeds));
                        editTextSpeeds.setText(MainService.instance.ab.f());
                        editTextSpeeds.setDataType(16);
                        editTextSpeeds.setOnChangedListener(new ei(this, editTextSpeeds, (TextView) view2.findViewById(R.id.hint)));
                        i.a(i.c().setView(InternalKeyboard.a(view2)).setPositiveButton(qk.a((int) R.string.confirm), new ej(this, editTextSpeeds)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null), editTextSpeeds);
                        return;
                    }
                    return;
                case R.id.config_path /* 2131427480 */:
                    a((String) null);
                    return;
                case R.id.config_su /* 2131427481 */:
                    j();
                    return;
                case R.id.config_toolbar_buttons /* 2131427495 */:
                    f();
                    return;
                case R.id.config_icon /* 2131427498 */:
                    View a3 = android.fix.i.a((int) R.layout.service_config_icon, (ViewGroup) null);
                    SeekBar seekBar = (SeekBar) a3.findViewById(R.id.transparency);
                    SeekBar seekBar2 = (SeekBar) a3.findViewById(R.id.hide);
                    SeekBar seekBar3 = (SeekBar) a3.findViewById(R.id.size);
                    TextView textView3 = (TextView) a3.findViewById(R.id.config_icon_text);
                    ImageView imageView = (ImageView) a3.findViewById(R.id.config_icon_example);
                    float layoutAlpha = mainService.l.getLayoutAlpha();
                    int vanishingTime = mainService.l.getVanishingTime();
                    int size = mainService.l.getSize();
                    seekBar.setProgress(10 - ((int) (10.0f * layoutAlpha)));
                    seekBar2.setProgress(vanishingTime < 0 ? seekBar2.getMax() : vanishingTime);
                    seekBar3.setMax(12);
                    seekBar3.setProgress(size);
                    a(layoutAlpha, vanishingTime, textView3, imageView, size);
                    ee eeVar = new ee(this, seekBar, seekBar2, seekBar3, textView3, imageView);
                    seekBar.setOnSeekBarChangeListener(eeVar);
                    seekBar2.setOnSeekBarChangeListener(eeVar);
                    seekBar3.setOnSeekBarChangeListener(eeVar);
                    i.a(i.c().setPositiveButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null).setView(a3));
                    return;
                case R.id.hide_icons /* 2131427501 */:
                    CharSequence[] charSequenceArr = {String.valueOf(qk.a((int) R.string.nothing)) + " (" + qk.a((int) R.string.default_mark) + ')', qk.a((int) R.string.app_short_name_sw), qk.a((int) R.string.app_short_name_hw)};
                    AlertDialog create = i.c().setCustomTitle(Tools.d((int) R.string.hide_icons)).setItems(charSequenceArr, new de(this)).create();
                    ListView listView = create.getListView();
                    if (listView != null) {
                        Drawable[] drawableArr = new Drawable[3];
                        drawableArr[1] = Tools.b((int) R.mipmap.ic_sw_48dp);
                        drawableArr[2] = Tools.b((int) R.mipmap.ic_hw_48dp);
                        Tools.a(listView, charSequenceArr, drawableArr, 48, 0);
                    }
                    i.c(create);
                    return;
                case R.id.config_language /* 2131427504 */:
                    k();
                    return;
                case R.id.config_disable_protection /* 2131427506 */:
                    if (lh.g()) {
                        i.a(i.c().setCustomTitle(Tools.d((int) R.string.disable_protection)).setMessage(qk.a((int) R.string.warn_patch_off_prot_)).setPositiveButton(qk.a((int) R.string.ok), new df(this, mainService)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
                        return;
                    }
                    return;
                case R.id.config_clear_history /* 2131427507 */:
                    i.a(i.c().setCustomTitle(Tools.d((int) R.string.clear_history)).setMessage(qk.a((int) R.string.clear_history_warn)).setPositiveButton(qk.a((int) R.string.ok), new dg(this)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
                    return;
                case R.id.config_clear_defaults /* 2131427508 */:
                    i.a(i.c().setMessage(qk.a((int) R.string.reset_ignore)).setPositiveButton(qk.a((int) R.string.confirm), new dd(this)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
                    return;
                case R.id.config_last_stats /* 2131427509 */:
                    View a4 = android.fix.i.a((int) R.layout.main_new_version, (ViewGroup) null);
                    ((TextView) a4.findViewById(R.id.changelog)).setText(la.e);
                    i.a(i.c().setCustomTitle(Tools.d((int) R.string.last_stats)).setView(a4).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
                    return;
                case R.id.show_logcat /* 2131427510 */:
                    o();
                    return;
                case R.id.config_region_log /* 2131427511 */:
                    gs.a();
                    return;
                case R.id.screenshot /* 2131427512 */:
                    e();
                    return;
                case R.id.about /* 2131427513 */:
                    i.a(i.c().setCustomTitle(Tools.d((int) R.string.about)).setMessage(qk.a("__version__ " + ((108.2f * 1) - 7.1f) + " (" + ((int) (((16573.3f * 1) - 431.3f) + 0.5f)) + ")\n\n__developers__\n" + DEVS + "\n__special_thanks__\n\tdanilo_scala,\n\tYoungBai,\n\tKorean L,\n\tiAndroHacker,\n\tMobile46,\n\treduxpl,\n\tjan.eike.kottlarz,\n\ttimo.szillat,\n\tSubZero5,\n\tZuiXan,\n\tAlex,\n\tGanjar Sukmara,\n\tdd09david,\n\tvenomx961,\n\tchatzopoulosapostolos,\n\tWanderMax,\n\tIvan Maldonado,\n\tvesper7dd,\n\tSelfDestruct68,\n\tmallachri,\n\tAzhar Dripana,\n\tIlya Kushnir,\n\twasao0807,\n\tAlex NG,\n\tjeroen.wilmink,\n\tpodluka,\n\tAnty0,\n\tkiilerman496,\n\tthex3only,\n\tmustafayasir6,\n\tHavergal Samosir Jr.,\n\timpykid,\n\t28ado1,\n\tElectroz,\n\tvincensius.august,\n\tRuan Carlos,\n\tNurMarvin,\n\tSkullboyq,\n\tYakiaaa,\n\tag2s20150609,\n\tanitamoellerga,\n\tcoolapk_ooops,\n\tpandecheng,\n\tpkjisoo32,\n\tLeam19999,\n\tminecraft172zzz,\n\tTodd Justin York,\n\tGedablo,\n\trootddos511,\n\t楊萬林,\n\tchetraclr,\n\tcub.madrax,\n\tntnhiu,\n\tbuivanxia10,\n\twl02082201,\n\tBacklift,\n\tvonxom,\n\tPeter Cuevas H,\n\talg1.66336611,\n\tHoangthinh99hp,\n\tJackH4L,\n\tspacemaker2906,\n\tva3kama3eredeti,\n\tAustin Andrews,\n\tsaqibpiash,\n\tsuuyout,\n\tsljivics,\n\tDartel,\n\tdoungvichetra2,\n\t0968688218channa,\n\tCaptainTF,\n\tdbinkv1,\n\tronaldmoura,\n\tlafrite.cassee,\n\tJazeks,\n\tNightMareNivek,\n\tprefix309,\n\tmilad19s,\n\tliato.games,\n\tCmP,\n\t1701silentspawn,\n\tgood7773good7773good7773,\n\tATAA SY,\n\tkhiemhocrot.98,\n\ta0193143,\n\tYaroslav,\n\tzam5355,\n\tlonglix,\n\tsssidiki4,\n\tGeorge,\n\t冰鍊,\n\tFloatKey.")).setNeutralButton(qk.a((int) R.string.copy), new eg(this)).setPositiveButton(qk.a((int) R.string.site), new be(null)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
                    return;
                default:
                    la.b("Unknown id in config: " + id);
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e() {
        i.a(i.c().setCustomTitle(Tools.d((int) R.string.screenshot)).setMessage(Tools.a(qk.a((int) R.string.screenshot_prompt), 8)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).setPositiveButton(qk.a((int) R.string.ok), new dh()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i) {
        int i2;
        int i3 = 10;
        if (i == 3) {
            try {
                i2 = Tools.s().getInt("hide-icon", 0);
            } catch (Throwable th) {
                la.c("Failed disable icon " + i, th);
                return;
            }
        } else {
            i2 = i;
        }
        if ((i2 == 1 && (ar.d instanceof MainActivity)) || (i2 == 2 && (ar.d instanceof ActivityMain))) {
            if (i != 3) {
                i.a(i.c().setCustomTitle(Tools.d((int) R.string.hide_icons)).setMessage(qk.a((int) R.string.cannot_hide_launcher_icon)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
                return;
            }
            return;
        }
        String g = Tools.g();
        PackageManager m = Tools.m();
        ComponentName componentName = new ComponentName(g, ActivityMain.class.getName());
        ComponentName componentName2 = new ComponentName(g, MainActivity.class.getName());
        la.a("hide A: " + i2 + "; " + componentName2 + ": " + m.getComponentEnabledSetting(componentName2) + "; " + componentName + ": " + m.getComponentEnabledSetting(componentName) + ';');
        if (i == 3) {
            int i4 = (m.getComponentEnabledSetting(componentName) == 2 ? 10 : 0) + (m.getComponentEnabledSetting(componentName2) == 2 ? 1 : 0);
            if (i2 == 1) {
                i3 = 1;
            } else if (i2 != 2) {
                i3 = 0;
            }
            if (i4 == i3) {
                return;
            }
        }
        if (i2 != 1) {
            Tools.a(1, componentName2, 1);
        }
        if (i2 != 2) {
            Tools.a(3, componentName, 1);
        }
        if (i2 == 1) {
            Tools.a(5, componentName2, 2);
        }
        if (i2 == 2) {
            Tools.a(7, componentName, 2);
        }
        if (i2 != 1) {
            Tools.a(9, componentName2, 1);
        }
        if (i2 != 2) {
            Tools.a(11, componentName, 1);
        }
        la.a("hide Z: " + i2 + "; " + componentName2 + ": " + m.getComponentEnabledSetting(componentName2) + "; " + componentName + ": " + m.getComponentEnabledSetting(componentName) + ';');
        if (i != 3) {
            new qw().a("hide-icon", i2, 0).commit();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f() {
        String[] strArr = new String[MainService.q.length * 2];
        strArr[0] = String.valueOf(qk.a((int) R.string.search)) + ", " + qk.a((int) R.string.portrait);
        strArr[1] = String.valueOf(qk.a((int) R.string.search)) + ", " + qk.a((int) R.string.landscape);
        strArr[2] = String.valueOf(qk.a((int) R.string.saved_list)) + ", " + qk.a((int) R.string.portrait);
        strArr[3] = String.valueOf(qk.a((int) R.string.saved_list)) + ", " + qk.a((int) R.string.landscape);
        strArr[4] = String.valueOf(qk.a((int) R.string.memory_editor)) + ", " + qk.a((int) R.string.portrait);
        strArr[5] = String.valueOf(qk.a((int) R.string.memory_editor)) + ", " + qk.a((int) R.string.landscape);
        i.a(i.c().setItems(strArr, new dk(strArr)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
    }

    private static void n() {
        if (Config.C && !j) {
            for (int i = 0; i < b.length; i++) {
                if (b[i] == R.string.help_game_not_listed_root) {
                    b[i] = R.string.help_game_not_listed_noroot;
                }
            }
            j = true;
        }
    }

    public static void g() {
        b(0);
    }

    public static void b(int i) {
        n();
        String[] strArr = new String[(b.length / 3) + 1];
        int i2 = 0;
        for (int i3 = 0; i3 < b.length; i3++) {
            if (i3 % 3 == 0) {
                int i4 = (i3 / 3) + 1;
                if (i == b[i3] || i == b[i3 + 1]) {
                    i2 = i4;
                }
                strArr[i4] = qk.a(b[i3]);
            }
        }
        strArr[0] = qk.a((int) R.string.video_tutorials);
        dn dnVar = new dn();
        if (i2 == 0) {
            i.a(i.c().setItems(strArr, dnVar).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
        } else {
            dnVar.onClick(null, i2);
        }
    }

    public static DialogInterface.OnClickListener h() {
        return new Cdo();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0026 A[Catch: Throwable -> 0x0065, TryCatch #1 {Throwable -> 0x0065, blocks: (B:9:0x0012, B:11:0x0026, B:18:0x0034, B:20:0x003a, B:22:0x0040, B:24:0x0046), top: B:36:0x0012 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean i() {
        /*
            r2 = 1
            r1 = 0
            int r0 = android.os.Build.VERSION.SDK_INT
            r3 = 21
            if (r0 < r3) goto L68
            java.lang.String[] r0 = android.os.Build.SUPPORTED_64_BIT_ABIS     // Catch: java.lang.Throwable -> L4f
            if (r0 == 0) goto L2d
            java.lang.String[] r0 = android.os.Build.SUPPORTED_64_BIT_ABIS     // Catch: java.lang.Throwable -> L4f
            int r0 = r0.length     // Catch: java.lang.Throwable -> L4f
            if (r0 <= 0) goto L2d
            r0 = r2
        L12:
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L65
            java.lang.String r4 = "/proc/self/auxv"
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L65
            r4 = 4096(0x1000, float:5.74E-42)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L65
            int r5 = r3.read(r4)     // Catch: java.lang.Throwable -> L65
            r3.close()     // Catch: java.lang.Throwable -> L65
            if (r5 <= 0) goto L63
            int r3 = r5 % 16
            r6 = 8
            if (r3 != r6) goto L2f
        L2c:
            return r1
        L2d:
            r0 = r1
            goto L12
        L2f:
            r3 = r1
        L30:
            if (r3 < r5) goto L34
            r1 = r2
            goto L2c
        L34:
            int r6 = r3 + 4
            r6 = r4[r6]     // Catch: java.lang.Throwable -> L65
            if (r6 != 0) goto L2c
            int r6 = r3 + 5
            r6 = r4[r6]     // Catch: java.lang.Throwable -> L65
            if (r6 != 0) goto L2c
            int r6 = r3 + 6
            r6 = r4[r6]     // Catch: java.lang.Throwable -> L65
            if (r6 != 0) goto L2c
            int r6 = r3 + 7
            r6 = r4[r6]     // Catch: java.lang.Throwable -> L65
            if (r6 != 0) goto L2c
            int r3 = r3 + 16
            goto L30
        L4f:
            r2 = move-exception
            r0 = r1
        L51:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "Failed check 64 client. Used: "
            r1.<init>(r3)
            java.lang.StringBuilder r1 = r1.append(r0)
            java.lang.String r1 = r1.toString()
            android.ext.la.b(r1, r2)
        L63:
            r1 = r0
            goto L2c
        L65:
            r1 = move-exception
            r2 = r1
            goto L51
        L68:
            r0 = r1
            goto L63
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.ConfigListAdapter.i():boolean");
    }

    private void o() {
        new dp(this, "loadLogcat").start();
    }

    public static void a(String str) {
        la.a("mConfigTempPath onClick");
        View a2 = android.fix.i.a((int) R.layout.temp_path_config, (ViewGroup) null);
        EditTextPath editTextPath = (EditTextPath) a2.findViewById(R.id.temp_file_path);
        SharedPreferences s = Tools.s();
        if (str == null) {
            str = s.getString("temp-path", "");
        }
        editTextPath.setText(str);
        editTextPath.setDataType(4);
        editTextPath.setPathType(0);
        ((TextView) a2.findViewById(R.id.temp_file_desc)).setText(String.valueOf(qk.a((int) R.string.path_for_temp_files)) + '\n' + qk.a((int) R.string.path_must_be));
        a2.findViewById(R.id.path_selector).setTag(editTextPath);
        AlertDialog create = i.c().setView(InternalKeyboard.c(a2, false)).setPositiveButton(qk.a((int) R.string.confirm), (DialogInterface.OnClickListener) null).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).create();
        dr drVar = new dr(editTextPath, create);
        tw.a((Button) a2.findViewById(R.id.typical_values), editTextPath);
        a(create, drVar, editTextPath);
    }

    private static void a(AlertDialog alertDialog, View.OnClickListener onClickListener, android.widget.EditText editText) {
        alertDialog.setButton(-1, qk.a((int) R.string.confirm), new ds(onClickListener, alertDialog));
        i.a(alertDialog, new dt(onClickListener));
        i.a(alertDialog, editText);
    }

    public static void j() {
        if (lh.g()) {
            View a2 = android.fix.i.a((int) R.layout.temp_path_config, (ViewGroup) null);
            EditTextPath editTextPath = (EditTextPath) a2.findViewById(R.id.temp_file_path);
            SharedPreferences s = Tools.s();
            editTextPath.setText(s.getString("su", ""));
            editTextPath.setDataType(4);
            editTextPath.setPathType(1);
            editTextPath.setHint("su");
            ((TextView) a2.findViewById(R.id.temp_file_desc)).setText(qk.a((int) R.string.su_command));
            CheckBox checkBox = (CheckBox) a2.findViewById(R.id.use_sh);
            checkBox.setChecked(s.getBoolean("sh", false));
            checkBox.setVisibility(0);
            a2.findViewById(R.id.path_selector).setTag(editTextPath);
            AlertDialog create = i.c().setView(InternalKeyboard.c(a2, false)).setPositiveButton(qk.a((int) R.string.confirm), (DialogInterface.OnClickListener) null).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).create();
            du duVar = new du(editTextPath, checkBox, create);
            Button button = (Button) a2.findViewById(R.id.typical_values);
            String[] strArr = {"su", "ku.sud", "/system/bin/su", "/system/xbin/su", "/su/bin/su", "/system/xbin/bstk/su", "/sbin/su", "/magisk/.core/bin/su", "/magisk/phh/bin/su"};
            button.setOnClickListener(new tw(strArr, strArr));
            button.setTag(editTextPath);
            a(create, duVar, editTextPath);
        }
    }

    public static void a(Configuration configuration, Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            try {
                configuration.setLocale(locale);
            } catch (Throwable th) {
                la.a(th);
            }
            try {
                configuration.setLayoutDirection(locale);
            } catch (Throwable th2) {
                la.a(th2);
            }
        }
        try {
            configuration.locale = locale;
        } catch (Throwable th3) {
            la.c("Failed set locale", th3);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(8:15|16|(1:5)|6|7|8|9|10)|3|(0)|6|7|8|9|10) */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x008e, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x008f, code lost:
        android.ext.la.a(r2);
     */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String a(android.content.res.Configuration r8, java.util.Locale r9, android.content.res.AssetManager r10, android.util.DisplayMetrics r11) {
        /*
            android.content.res.Configuration r2 = new android.content.res.Configuration
            r2.<init>(r8)
            a(r2, r9)
            r1 = 0
            int r0 = android.os.Build.VERSION.SDK_INT
            r3 = 17
            if (r0 < r3) goto L8c
            android.content.Context r0 = android.ext.MainService.context     // Catch: java.lang.Throwable -> L88
            android.content.Context r0 = r0.createConfigurationContext(r2)     // Catch: java.lang.Throwable -> L88
            android.content.res.Resources r0 = r0.getResources()     // Catch: java.lang.Throwable -> L88
        L19:
            if (r0 != 0) goto L20
            android.content.res.Resources r0 = new android.content.res.Resources
            r0.<init>(r10, r11, r2)
        L20:
            java.lang.String r1 = ""
            java.lang.String r2 = "%,d;%,d;%e;%e;%e;%e;"
            r3 = 6
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Exception -> L8e
            r4 = 0
            r5 = 1234567890(0x499602d2, float:1228890.2)
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Exception -> L8e
            r3[r4] = r5     // Catch: java.lang.Exception -> L8e
            r4 = 1
            r5 = -1234567890(0xffffffffb669fd2e, float:-3.4867076E-6)
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Exception -> L8e
            r3[r4] = r5     // Catch: java.lang.Exception -> L8e
            r4 = 2
            r6 = 9096566307362129385(0x7e3d7edc621b45e9, double:1.23456E300)
            java.lang.Double r5 = java.lang.Double.valueOf(r6)     // Catch: java.lang.Exception -> L8e
            r3[r4] = r5     // Catch: java.lang.Exception -> L8e
            r4 = 3
            r6 = -126805729492646423(0xfe3d7edc621b45e9, double:-1.23456E300)
            java.lang.Double r5 = java.lang.Double.valueOf(r6)     // Catch: java.lang.Exception -> L8e
            r3[r4] = r5     // Catch: java.lang.Exception -> L8e
            r4 = 4
            r6 = 120036927227341818(0x1aa74f30750abfa, double:1.23456E-300)
            java.lang.Double r5 = java.lang.Double.valueOf(r6)     // Catch: java.lang.Exception -> L8e
            r3[r4] = r5     // Catch: java.lang.Exception -> L8e
            r4 = 5
            r6 = -9103335109627433990(0x81aa74f30750abfa, double:-1.23456E-300)
            java.lang.Double r5 = java.lang.Double.valueOf(r6)     // Catch: java.lang.Exception -> L8e
            r3[r4] = r5     // Catch: java.lang.Exception -> L8e
            java.lang.String r1 = java.lang.String.format(r9, r2, r3)     // Catch: java.lang.Exception -> L8e
        L6f:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r3 = 2131165315(0x7f070083, float:1.7944844E38)
            java.lang.String r0 = r0.getString(r3)
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r2.<init>(r0)
            java.lang.StringBuilder r0 = r2.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        L88:
            r0 = move-exception
            android.ext.la.a(r0)
        L8c:
            r0 = r1
            goto L19
        L8e:
            r2 = move-exception
            android.ext.la.a(r2)
            goto L6f
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.ConfigListAdapter.a(android.content.res.Configuration, java.util.Locale, android.content.res.AssetManager, android.util.DisplayMetrics):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k() {
        Tools.a((int) R.string.loading, 0);
        rx.b(new dz());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void l() {
        MainService mainService = MainService.instance;
        if (mainService != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            HashMap hashMap = new HashMap();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            mainService.n.getDefaultDisplay().getMetrics(displayMetrics);
            Resources resources = MainService.context.getResources();
            Configuration configuration = resources.getConfiguration();
            AssetManager assets = resources.getAssets();
            String[] e = ad.e();
            Arrays.sort(e, new ea());
            String a2 = qk.a((int) R.string.lang_code);
            int i = -1;
            long currentTimeMillis = System.currentTimeMillis();
            int length = e.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                String str = e[i2];
                int i4 = i3 + 1;
                if (str != null) {
                    try {
                        long currentTimeMillis2 = System.currentTimeMillis();
                        if (currentTimeMillis2 - currentTimeMillis > 2000) {
                            try {
                                Tools.a(String.valueOf((i4 * 100) / e.length) + "%", 0);
                                currentTimeMillis = currentTimeMillis2;
                            } catch (Throwable th) {
                                th = th;
                                currentTimeMillis = currentTimeMillis2;
                                la.c("Failed check locale: " + str, th);
                                i2++;
                                i3 = i4;
                            }
                        }
                        if (str.length() == 0) {
                            str = "en_US";
                            if (Build.VERSION.SDK_INT >= 21) {
                                "en_US".replace('_', '-');
                            }
                        }
                        Locale a3 = ad.a(str);
                        String a4 = a(configuration, a3, assets, displayMetrics);
                        if (hashMap.get(a4) == null) {
                            if (a4.startsWith(a2) && i == -1) {
                                i = arrayList.size();
                            }
                            String format = String.format(a3, "\n[%,.1f | %.2e]", Double.valueOf(-1234.0d), Double.valueOf(-4.56E-78d));
                            hashMap.put(a4, str);
                            arrayList.add(str);
                            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                            spannableStringBuilder.append((CharSequence) a3.getDisplayName(a3));
                            spannableStringBuilder.setSpan(new ForegroundColorSpan(qh.q), 0, spannableStringBuilder.length(), 33);
                            int length2 = spannableStringBuilder.length();
                            spannableStringBuilder.append((CharSequence) " (");
                            spannableStringBuilder.append((CharSequence) str);
                            spannableStringBuilder.append(')');
                            spannableStringBuilder.setSpan(new ForegroundColorSpan(qh.p), length2, spannableStringBuilder.length(), 33);
                            int length3 = spannableStringBuilder.length();
                            spannableStringBuilder.append((CharSequence) format);
                            spannableStringBuilder.setSpan(new RelativeSizeSpan(0.6f), length3, spannableStringBuilder.length(), 33);
                            spannableStringBuilder.setSpan(new ForegroundColorSpan(qh.r), length3, spannableStringBuilder.length(), 33);
                            arrayList2.add(spannableStringBuilder);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                i2++;
                i3 = i4;
            }
            a(configuration, ad.a(ad.c()), assets, displayMetrics);
            ad.d();
            rx.a(new eb(new ArrayAdapter(MainService.context, arrayList2), i, arrayList));
        }
    }
}
