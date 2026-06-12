package com.mucheng.mucuteuix.example.ui;

import android.content.Context;
import android.os.Vibrator;

import com.mucheng.mucuteuix.effect.Hint;
import com.mucheng.mucuteuix.effect.Notification;
import com.mucheng.mucuteuix.example.callback.ItemCallback;

public class AttackGUI extends MoveMenu {

  private static boolean isOpenMenu = true;

  private static boolean isPositionInit = false;

  private static int menuX;

  private static int menuY;

  private static MoveButton aimBotButton;

  private static boolean aimBotButtonShown;

  @Override
  protected void init() {
    if (!isPositionInit) {
      if (isLandscape()) {
        menuX = (int) (W() * 0.54) + dip2pxInt(60);
        menuY = dip2pxInt(60);
      } else {
        menuX = dip2pxInt(20);
        menuY = W() / 4;
      }
      isPositionInit = true;
    }
    super.init();
  }

  @Override
  protected int getX() {
    return menuX;
  }

  @Override
  protected int getY() {
    return menuY;
  }

  @Override
  protected void setX(int x) {
    menuX = x;
  }

  @Override
  protected void setY(int y) {
    menuY = y;
  }

  @Override
  protected String getTitle() {
    return "攻击";
  }

  @Override
  protected void onAddItems() {
    addStateItem("自瞄", aimBotButtonShown, new ItemCallback() {


      @Override
      public void onClick() {
        new Hint()
          .setMessage("你点击了状态按钮")
          .show();
      }

      @Override
      public boolean onLongClick() {
        Vibrator vibrator = (Vibrator) requireActivity().getSystemService(Context.VIBRATOR_SERVICE);
        vibrator.vibrate(50L);

        StringBuilder builder = new StringBuilder();
        int count = 10;
        for (int index = 0; index < count; index++) {
          builder.append("The message content: ").append(index);
          if (index + 1 < count) {
            builder.append("\n");
          }
        }

        new GUIBox()
          .setTitle("AimBot Settings")
          .setMessage(builder.toString())
          .setCancelable(true)
          .show();
        return false;
      }

      @Override
      public void onChecked(boolean isChecked) {
        if (aimBotButton == null) {
          aimBotButton = new MoveButton()
            .setText("瞄")
            .setStateful(false)
            .setPosition(SystemW() - dip2pxInt(200), SystemH() / 2);
        }
        if (isChecked) {
          aimBotButton.show();
          MIX.notification.make(
            "AimBot - Button",
            "Enabled",
            Notification.Type.SUCCESS
          );
        } else {
          aimBotButton.dismiss();
          MIX.notification.make(
            "AimBot - Button",
            "Disabled",
            Notification.Type.ERROR
          );
        }
        aimBotButtonShown = isChecked;
      }
    });
  }

  @Override
  public boolean isOpenMenu() {
    return isOpenMenu;
  }

  @Override
  protected void setOpenMenu(boolean openMenu) {
    isOpenMenu = openMenu;
  }

}
