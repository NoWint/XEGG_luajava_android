package com.mucheng.mucuteuix.example.ui;

public class WorldGUI extends MoveMenu {

  private static boolean isOpenMenu = true;

  private static boolean isPositionInit = false;

  private static int menuX;

  private static int menuY;

  @Override
  protected void init() {
    if (!isPositionInit) {
      if (isLandscape()) {
        menuX = (int) (W() * 0.18) + dip2pxInt(35);
        menuY = dip2pxInt(60);
      } else {
        menuX = (int) (W() * 0.18) + dip2pxInt(40);
        menuY = dip2pxInt(40);
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
    return "世界";
  }

  @Override
  protected void onAddItems() {
    addItem("白天无雨");
    addItem("变速");
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
