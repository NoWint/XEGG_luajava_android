package com.mucheng.inject.ui;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodReplacement;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage.LoadPackageParam;
import de.robv.android.xposed.XC_MethodHook;
import android.app.Activity;
import com.mucheng.mucuteui.util.MuCuteUtil;
import com.mucheng.mucuteui.example.ui.FloatButton;
import com.mucheng.mucuteui.example.ui.ClickGUI;
import com.mucheng.mucuteui.eventbus.EventBus;
import android.widget.Toast;
import android.os.Bundle;

public class HookInit implements IXposedHookLoadPackage {

	@Override
	public void handleLoadPackage(LoadPackageParam lpparam) throws Throwable {
		if ("com.mucheng.inject.ui".equals(lpparam.packageName)) {
			XposedHelpers.findAndHookMethod(
				MainActivity.class.getName(),
				lpparam.classLoader,
				"isModuleActivated",
				XC_MethodReplacement.returnConstant(true));
		}
		if ("com.mojang.minecraftpe".equals(lpparam.packageName)) {
			XposedHelpers.findAndHookMethod(
			    "com.mojang.minecraftpe.MainActivity",
				lpparam.classLoader,
				"onCreate",
				Bundle.class,
				new XC_MethodHook() {
					
				    @Override
					protected void afterHookedMethod(MethodHookParam param) throws Throwable {
						Activity activity = (Activity) param.thisObject;
						Toast.makeText(activity, "InjectUI: Hook onCreate Method", Toast.LENGTH_SHORT).show();
						MuCuteUtil.initialize(activity);
						FloatButton.init();
						ClickGUI.init();
						EventBus.GlobalEventBus.send(FloatButton.FloatButtonKey);
					}
					
				}
			);
		}
		if ("com.netease.x19".equals(lpparam.packageName)) {
			XposedHelpers.findAndHookMethod(
				Activity.class.getName(),
				lpparam.classLoader,
				"onCreate",
				Bundle.class,
				new XC_MethodHook() {

				    @Override
					protected void afterHookedMethod(MethodHookParam param) throws Throwable {
						Activity activity = (Activity) param.thisObject;
						if (!activity.getClass().getName().equals("com.mojang.minecraftpe.MainActivity")) {
							return;
						}
						Toast.makeText(activity, "InjectUI: Hook onCreate Method", Toast.LENGTH_SHORT).show();
						MuCuteUtil.initialize(activity);
						FloatButton.init();
						ClickGUI.init();
						EventBus.GlobalEventBus.send(FloatButton.FloatButtonKey);
					}

				}
			);
		}
	}

}
