package com.mucheng.mucuteui.example.ui;

import static com.mucheng.mucuteui.eventbus.EventBus.GlobalEventBus;
import static com.mucheng.mucuteui.example.component.ButtonItemComponents.ButtonItem;
import static com.mucheng.mucuteui.example.component.ButtonItemComponents.ButtonItemProps;
import static com.mucheng.mucuteui.example.component.SwitchItemComponents.SwitchItem;
import static com.mucheng.mucuteui.example.component.SwitchItemComponents.SwitchItemProps;
import static com.mucheng.mucuteui.util.MuCuteUtil.requireActivity;


import android.view.View;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.example.listener.OnCheckedListener;

import java.util.List;
import android.widget.Toast;

public class GUIGroupWorld extends GUIGroup {

  public static final String GUIGroupWorldKey = "GUIGroupWorldKey";

  public static void init() {
    GlobalEventBus.register(GUIGroupWorldKey, new GUIGroupWorld());
  }
  
  private static boolean ReachChecked = false;

  private static boolean AntiAFKChecked = false;

  @Override
  protected void makeChildren(List<ComponentEventBus<? extends View>> list) {
	  list.add(SwitchItem(SwitchItemProps()
						  .title("Reach-World")
						  .description("Increase your attacking distance")
						  .checked(ReachChecked)
						  .onChecked(new OnCheckedListener() {
								  @Override
								  public void onChecked(boolean isChecked) {
									  ReachChecked = isChecked;
									  Toast.makeText(requireActivity(), String.format("SwitchItem was checked: %s.", isChecked), Toast.LENGTH_SHORT).show();
								  }
							  })));
	  list.add(ButtonItem(ButtonItemProps()
						  .title("AntiAFK-World")
						  .description("Prevents you from being kicked off the server")
						  .stateful(true)
						  .checked(AntiAFKChecked)
						  .onChecked(new OnCheckedListener() {
								  @Override
								  public void onChecked(boolean isChecked) {
									  AntiAFKChecked = isChecked;
									  Toast.makeText(requireActivity(), String.format("StatefulButton was checked: %s.", isChecked), Toast.LENGTH_SHORT).show();
								  }
							  })));
	  list.add(ButtonItem(ButtonItemProps()
						  .title("FastFly-World")
						  .description("Jump up and fly")
						  .buttonText("Run")
						  .onClick(new View.OnClickListener() {
								  @Override
								  public void onClick(View v) {
									  Toast.makeText(requireActivity(), "ButtonItem was clicked.", Toast.LENGTH_SHORT).show();
								  }
							  })));
  }

}
