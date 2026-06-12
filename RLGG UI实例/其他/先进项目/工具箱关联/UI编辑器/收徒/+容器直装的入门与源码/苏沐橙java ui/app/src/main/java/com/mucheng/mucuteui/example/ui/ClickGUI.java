package com.mucheng.mucuteui.example.ui;

import static com.mucheng.mucuteui.components.LinearComponents.Column;
import static com.mucheng.mucuteui.components.LinearComponents.ColumnProps;
import static com.mucheng.mucuteui.components.LinearComponents.LinearParams;
import static com.mucheng.mucuteui.components.LinearComponents.Row;
import static com.mucheng.mucuteui.components.LinearComponents.RowProps;
import static com.mucheng.mucuteui.components.PopupComponents.Popup;
import static com.mucheng.mucuteui.components.PopupComponents.PopupKey;
import static com.mucheng.mucuteui.components.PopupComponents.PopupProps;
import static com.mucheng.mucuteui.components.PopupComponents.Toast;
import static com.mucheng.mucuteui.components.ScrollComponents.ColumnScroll;
import static com.mucheng.mucuteui.components.ScrollComponents.ColumnScrollProps;
import static com.mucheng.mucuteui.components.ScrollComponents.ScrollParams;
import static com.mucheng.mucuteui.components.ScrollComponents.Vertical;
import static com.mucheng.mucuteui.components.TextComponents.ShadowLayerProps;
import static com.mucheng.mucuteui.components.TextComponents.Text;
import static com.mucheng.mucuteui.components.TextComponents.TextKey;
import static com.mucheng.mucuteui.components.TextComponents.TextProps;
import static com.mucheng.mucuteui.components.ViewComponents.View;
import static com.mucheng.mucuteui.components.ViewComponents.ViewProps;
import static com.mucheng.mucuteui.eventbus.EventBus.GlobalEventBus;
import static com.mucheng.mucuteui.example.component.GroupComponents.ButtonProps;
import static com.mucheng.mucuteui.example.component.GroupComponents.Group;
import static com.mucheng.mucuteui.example.component.GroupComponents.GroupProps;
import static com.mucheng.mucuteui.example.ui.GUIGroupPlayer.GUIGroupPlayerKey;
import static com.mucheng.mucuteui.util.AnimationUtil.ObjectAnimator;
import static com.mucheng.mucuteui.util.AnimationUtil.ObjectAnimatorProps;
import static com.mucheng.mucuteui.util.AnimationUtil.OfFloat;
import static com.mucheng.mucuteui.util.GradientDrawableUtil.GradientDrawable;
import static com.mucheng.mucuteui.util.GradientDrawableUtil.GradientDrawableProps;
import static com.mucheng.mucuteui.util.GravityUtil.Center;
import static com.mucheng.mucuteui.util.GravityUtil.Top;
import static com.mucheng.mucuteui.util.ParseUtil.parseColor;
import static com.mucheng.mucuteui.util.SizeUtil.H;
import static com.mucheng.mucuteui.util.SizeUtil.MatchParent;
import static com.mucheng.mucuteui.util.SizeUtil.W;
import static com.mucheng.mucuteui.util.SizeUtil.WrapContent;
import static com.mucheng.mucuteui.util.SizeUtil.dip2px;
import static com.mucheng.mucuteui.util.SizeUtil.intDip2px;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.LinearLayout;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.eventbus.EventBus;
import com.mucheng.mucuteui.listener.OnPostListener;
import com.mucheng.mucuteui.model.Container;

import java.util.ArrayList;
import java.util.List;

public final class ClickGUI implements EventBus.Listener {

  private static volatile ClickGUI instance;

  private ClickGUI() {
  }

  public static final String ClickGUIKey = "ClickGUIKey";

  private static boolean initialized = false;

  private final Container title = new Container();

  private final Container content = new Container();

  private final Container page = new Container();

  public static void init() {
    if (initialized) {
      return;
    }
    if (instance == null) {
      synchronized (ClickGUI.class) {
        if (instance == null) {
          instance = new ClickGUI();
          initialized = true;
          GlobalEventBus.register(ClickGUIKey, instance);
          GUIGroupPlayer.init();
          GUIGroupPVP.init();
          GUIGroupWorld.init();
          GUIGroupCommon.init();
          GUIGroupSetting.init();
        }
      }
    }
  }

  private void updateClickGUIGroup(final String type) {
    ObjectAnimator(ObjectAnimatorProps()
        .ofProp(OfFloat)
        .prop("alpha")
        .params(1f, 0f)
        .target(content)
        .duration(80L)
        .listener(new AnimatorListenerAdapter() {
          @Override
          public void onAnimationEnd(Animator animation) {
            super.onAnimationEnd(animation);
            title.send(TextKey, TextProps().text(type));
            GlobalEventBus.send("GUIGroup" + type + "Key", page);
            ObjectAnimator(ObjectAnimatorProps()
                .ofProp(OfFloat)
                .prop("alpha")
                .params(0f, 1f)
                .target(content)
                .duration(80L));
          }
        }));
  }

  @Override
  public void onAccepted(EventBus eventBus, Object value) {
    final Container floatButtonPopup = (Container) value;
    final Container root = new Container();
    final Container popup = new Container();
    final List<ComponentEventBus<? extends android.view.View>> groupList = new ArrayList<>();

    groupList.add(createGroup("Player"));
    groupList.add(createGroup("PVP"));
    groupList.add(createGroup("World"));
    groupList.add(createGroup("Common"));
    groupList.add(createGroup("Setting"));

    Popup(PopupProps()
        .link(popup)
        .width(MatchParent)
        .height(MatchParent)
        .animation(Toast)
        .focusable(true)
        .gravity(Center)
        .background(null)
        .contentView(Column(ColumnProps()
            .link(root)
            .alpha(0f)
            .background(GradientDrawable(GradientDrawableProps()
                .color(parseColor("#22000000"))))
            .gravity(Center)
            .children(Row(RowProps()
                .layoutParams(LinearParams()
                    .width((int) (W() * 0.7f))
                    .height((int) (H() * 0.75f))
                    .gravity(Center))
                .postOnce(new OnPostListener() {
                  @Override
                  public void post(int width, int height) {
                    ObjectAnimator(ObjectAnimatorProps()
                        .ofProp(OfFloat)
                        .prop("alpha")
                        .params(0f, 1f)
                        .duration(200L)
                        .target(root));
                  }
                })
                .background(GradientDrawable(GradientDrawableProps()
                    .color(parseColor("#FFF5F5F7"))
                    .radius(dip2px(8f))))
                .elevation(dip2px(4f))
                .children(
                    Column(ColumnProps()
                        .layoutParams(LinearParams()
                            .width((int) (W() * 0.175f))
                            .height(MatchParent)
                            .margins(intDip2px(10), intDip2px(15), intDip2px(10), intDip2px(15)))
                        .children(
                            Text(TextProps()
                                .text("ClickGUI")
                                .textSize(16f)
                                .color(parseColor("#FF7F7FD5"))
                                .focusable(true)
                                .clickable(true)
                                .singleLine(true)
                                .layoutParams(LinearParams()
                                    .width(WrapContent)
                                    .height(WrapContent)
                                    .gravity(Center | Top))
                                .paddings(intDip2px(5), 0, intDip2px(5), 0)
                                .shadowLayer(ShadowLayerProps()
                                    .x(0f)
                                    .y(0f)
                                    .color(parseColor("#FF7F7FD5"))
                                    .radius(3f))
                                .onClick(new android.view.View.OnClickListener() {
                                  @Override
                                  public void onClick(android.view.View v) {
                                    floatButtonPopup.send(PopupKey, PopupProps().dismiss(false));
                                    ObjectAnimator(ObjectAnimatorProps()
                                        .ofProp(OfFloat)
                                        .prop("alpha")
                                        .params(1f, 0f)
                                        .duration(200L)
                                        .target(root)
                                        .listener(new AnimatorListenerAdapter() {
                                          @Override
                                          public void onAnimationEnd(Animator animation) {
                                            super.onAnimationEnd(animation);
                                            popup.send(PopupKey, PopupProps().dismiss(true));
                                            FloatButton.openGUI = false;
                                          }
                                        }));
                                  }
                                })),
                            ColumnScroll(ColumnScrollProps()
                                .layoutParams(LinearParams()
                                    .width(MatchParent)
                                    .height(MatchParent)
                                    .margins(0, intDip2px(15), 0, 0))
                                .fadingEdgeOrientation(Vertical)
                                .fadingEdgeLength(intDip2px(15))
                                .children(Column(ColumnProps()
                                    .children(groupList))))
                        )),
                    View(ViewProps()
                        .layoutParams(LinearParams()
                            .width(intDip2px(2))
                            .height(MatchParent)
                            .margins(intDip2px(10), intDip2px(10), 0, intDip2px(10)))
                        .background(GradientDrawable(GradientDrawableProps()
                            .color(parseColor("#FFE5E5E5"))))),
                    Column(ColumnProps()
                        .link(content)
                        .layoutParams(LinearParams()
                            .width(MatchParent)
                            .height(MatchParent)
                            .margins(intDip2px(10), intDip2px(15), intDip2px(10), intDip2px(15)))
                        .children(
                            Text(TextProps()
                                .link(title)
                                .text("Player")
                                .textSize(16f)
                                .color(parseColor("#FF9696D5"))
                                .singleLine(true)),
                            ColumnScroll(ColumnScrollProps()
                                .layoutParams(LinearParams()
                                    .width(MatchParent)
                                    .height(MatchParent)
                                    .margins(0, intDip2px(15), 0, 0))
                                .fadingEdgeOrientation(Vertical)
                                .fadingEdgeLength(intDip2px(15))
                                .children(Column(ColumnProps()
                                    .link(page)
                                    .postOnce(new OnPostListener() {
                                      @Override
                                      public void post(int width, int height) {
                                        GlobalEventBus.send(GUIGroupPlayerKey, page);
                                      }
                                    })
                                    .layoutParams(ScrollParams()
                                        .width(MatchParent)
                                        .height(MatchParent)))))
                        ))
                )
            )))));
  }

  private ComponentEventBus<LinearLayout> createGroup(final String type) {
    return Group(GroupProps()
        .textProps(TextProps()
            .text(type)
            .singleLine(true))
        .buttonProps(ButtonProps()
            .onClick(new android.view.View.OnClickListener() {
              @Override
              public void onClick(android.view.View v) {
                updateClickGUIGroup(type);
              }
            })));
  }

}
