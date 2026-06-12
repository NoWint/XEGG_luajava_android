package com.mucheng.mucuteuix.example.ui;

public class PlayerGUI extends MoveMenu {

  private static boolean isOpenMenu = true;

  private static boolean isPositionInit = false;

  private static int menuX;

  private static int menuY;

  @Override
  protected void init() {
    if (!isPositionInit) {
      if (isLandscape()) {
        menuX = dip2pxInt(20);
        menuY = dip2pxInt(60);
      } else {
        menuX = dip2pxInt(20);
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
    return "玩家";
  }

  @Override
  protected void onAddItems() {
    addItem("传送");
    addItem("物品给予");
    addItem("玩家碰撞箱");
  }

  @Override
  public boolean isOpenMenu() {
    return isOpenMenu;
  }

  @Override
  public void setOpenMenu(boolean openMenu) {
    isOpenMenu = openMenu;
  }

}
