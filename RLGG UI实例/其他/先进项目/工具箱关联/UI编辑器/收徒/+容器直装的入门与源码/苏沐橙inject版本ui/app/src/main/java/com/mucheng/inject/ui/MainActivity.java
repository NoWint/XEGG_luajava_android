package com.mucheng.inject.ui;

import android.app.ActionBar;
import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.content.pm.PackageManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.widget.Toast;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setSubtitle(isModuleActivated() ? R.string.xposed_activated : R.string.xposed_unactivated);
        }
    }

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.menu_main, menu);
		return super.onCreateOptionsMenu(menu);
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		if (item.getItemId() == R.id.showOrHideLaunchIcon) {
			boolean show = getPackageManager().getComponentEnabledSetting(getAliseComponentName()) == PackageManager.COMPONENT_ENABLED_STATE_ENABLED;
			if (show) {
			    showOrHideLauncherIcon(false);
				Toast.makeText(this, "隐藏桌面图标", Toast.LENGTH_SHORT).show();
				finish();
			} else {
				showOrHideLauncherIcon(true);
				Toast.makeText(this, "显示桌面图标", Toast.LENGTH_SHORT).show();
			}
		}
		return super.onOptionsItemSelected(item);
	}
	
	public void showOrHideLauncherIcon(boolean isShow) {
        PackageManager packageManager = getPackageManager();
        int show = isShow ? PackageManager.COMPONENT_ENABLED_STATE_ENABLED : PackageManager.COMPONENT_ENABLED_STATE_DISABLED;
        packageManager.setComponentEnabledSetting(getAliseComponentName(), show, PackageManager.DONT_KILL_APP);
	}
	
	private ComponentName getAliseComponentName() {
        return new ComponentName(MainActivity.this, "com.mucheng.inject.ui.MainActivity-Alias");
	}

    public static boolean isModuleActivated() {
        return false;
    }
}
