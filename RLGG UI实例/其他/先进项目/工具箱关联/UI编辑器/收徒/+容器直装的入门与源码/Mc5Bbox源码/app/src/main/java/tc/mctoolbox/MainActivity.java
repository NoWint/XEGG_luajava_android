package tc.mctoolbox;

import android.app.Activity;
import android.os.Bundle;
import android.view.*;
import tc.dedroid.util.Dedroid;
import tc.dedroid.util.DedroidDialog;
import android.Manifest;
import android.content.Intent;
import tc.dedroid.util.DedroidFile;
import java.io.IOException;
import MC5box;
import io.mrarm.mctoolbox.MinecraftActivity;
import android.widget.EditText;
import android.webkit.WebView;
import android.graphics.*;
import android.os.Build;
import android.provider.Settings;
import android.net.Uri;
import tc.dedroid.util.DedroidToast;
import tc.dedroid.util.DedroidPlugin;
import org.json.JSONException;
import java.lang.reflect.InvocationTargetException;
import android.webkit.WebViewClient;
import tc.dedroid.util.DedroidWeb;
import tc.dedroid.util.DedroidNetwork;
import android.content.Context;
import android.widget.Toast;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.widget.RelativeLayout;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.Button;
import android.widget.TextView;
import java.time.format.TextStyle;

public class MainActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }
    @Override
    public void onConfigurationChanged(Configuration cfg){
        super.onConfigurationChanged(cfg);
    }
    public void launch(View v) {}
    public void launch2(View v) {}
    public void checkUpdate(View v) {}
    public void help(View v) {}
    public void customPackage(View v) {}
    public void requestPermission(View v) {}
    public void about(View v) {}
    public void exit(View v) {}
    public void ex(View v) {}
    public void exmgr(View v){}
    public void home(View v){}
    public void login(View v) {}
    public void createfile(View v) {}
    public void mkdir(View v) {}
    public class MC5boxApi{}
}
