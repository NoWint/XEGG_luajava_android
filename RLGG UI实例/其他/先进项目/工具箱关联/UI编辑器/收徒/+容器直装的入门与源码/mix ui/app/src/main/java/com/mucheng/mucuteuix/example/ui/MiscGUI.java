package com.mucheng.mucuteuix.example.ui;

import com.mucheng.mucuteuix.effect.Hint;
import com.mucheng.mucuteuix.example.callback.ItemCallbackAdapter;

public class MiscGUI extends MoveMenu {

  private static boolean isOpenMenu = true;

  private static boolean isPositionInit = false;

  private static boolean modScript = true;

  private static boolean hud = false;

  private static boolean seeDI = false;

  private static int menuX;

  private static int menuY;

  @Override
  protected void init() {
    if (!isPositionInit) {
      if (isLandscape()) {
        menuX = (int) (W() * 0.72) + dip2pxInt(70);
        menuY = dip2pxInt(60);
      } else {
        menuX = dip2pxInt(20);
        menuY = (int) (W() / 2.5f);
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
    return "杂项";
  }

  @Override
  protected void onAddItems() {
    addStateItem("ModScript", modScript, new ItemCallbackAdapter() {
      @Override
      public void onChecked(boolean isChecked) {
        super.onChecked(isChecked);
        if (isChecked) {
          MIX.modScript.showModScript();
        } else {
          MIX.modScript.hideModScript();
        }
        modScript = isChecked;
      }
    });

    addStateItem("HUD", hud, new ItemCallbackAdapter() {
      @Override
      public void onChecked(boolean isChecked) {
        super.onChecked(isChecked);
        if (isChecked) {
          MIX.modScript.addModScript("HUD", "hud");
        } else {
          MIX.modScript.removeModScript("hud");
        }
        hud = isChecked;
      }
    });

    addStateItem("SeeDI", seeDI, new ItemCallbackAdapter() {

      @Override
      public void onChecked(boolean isChecked) {
        super.onChecked(isChecked);
        if (isChecked) {
          MIX.seeDI.showSeeDI();
        } else {
          MIX.seeDI.hideSeeDI();
        }
        seeDI = isChecked;
      }
    });

    addItem("UI Crash", new ItemCallbackAdapter() {

      @Override
      public void onClick() {
        throw new RuntimeException("Stub!");
      }
    });

    addItem("Thread Crash", new ItemCallbackAdapter() {

      @Override
      public void onClick() {
        new Thread(new Runnable() {
          @Override
          public void run() {
            throw new RuntimeException("Stub!");
          }
        }).start();
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
