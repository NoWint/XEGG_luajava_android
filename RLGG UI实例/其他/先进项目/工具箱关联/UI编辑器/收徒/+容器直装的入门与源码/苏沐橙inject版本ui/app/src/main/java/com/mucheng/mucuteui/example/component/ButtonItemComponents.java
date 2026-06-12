package com.mucheng.mucuteui.example.component;

import static com.mucheng.mucuteui.components.LinearComponents.Column;
import static com.mucheng.mucuteui.components.LinearComponents.ColumnProps;
import static com.mucheng.mucuteui.components.LinearComponents.LinearParams;
import static com.mucheng.mucuteui.components.LinearComponents.LinearProps;
import static com.mucheng.mucuteui.components.LinearComponents.Row;
import static com.mucheng.mucuteui.components.LinearComponents.RowProps;
import static com.mucheng.mucuteui.components.TextComponents.Text;
import static com.mucheng.mucuteui.components.TextComponents.TextProps;
import static com.mucheng.mucuteui.example.component.GroupComponents.Group;
import static com.mucheng.mucuteui.example.component.GroupComponents.GroupKey;
import static com.mucheng.mucuteui.example.component.GroupComponents.GroupProps;
import static com.mucheng.mucuteui.util.GravityUtil.Center;
import static com.mucheng.mucuteui.util.GravityUtil.Right;
import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;
import static com.mucheng.mucuteui.util.ParseUtil.parseColor;
import static com.mucheng.mucuteui.util.SizeUtil.MatchParent;
import static com.mucheng.mucuteui.util.SizeUtil.WrapContent;
import static com.mucheng.mucuteui.util.SizeUtil.intDip2px;

import android.view.View;
import android.widget.LinearLayout;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.example.listener.OnCheckedListener;
import com.mucheng.mucuteui.example.props.ButtonItemProps;
import com.mucheng.mucuteui.model.Container;
import com.mucheng.mucuteui.util.MuCuteUtil;

public final class ButtonItemComponents {

  private ButtonItemComponents() {
  }

  public static ComponentEventBus<LinearLayout> ButtonItem(final ButtonItemProps props) {
    MuCuteUtil.checkNotNullForProps(props);

    final boolean stateful = props.stateful();
    final View.OnClickListener onClick = props.onClick();
    final OnCheckedListener onChecked = props.onChecked();
    final boolean[] isChecked = {props.checked()};
    final Container button = new Container();

    return Row(RowProps()
        .layoutParams(LinearParams()
            .width(MatchParent)
            .height(WrapContent)
            .margins(0, 0, 0, intDip2px(15)))
        .children(Column(ColumnProps()
                .layoutParams(LinearParams()
                    .width(MatchParent)
                    .height(WrapContent)
                    .weight(1f))
                .children(Text(TextProps()
                        .text(props.title())
                        .textSize(12f)
                        .singleLine(true)
                        .color(parseColor("#FF6E6E6E"))),
                    Text(TextProps()
                        .layoutParams(LinearParams()
                            .width(WrapContent)
                            .height(WrapContent)
                            .margins(0, intDip2px(3), 0, 0))
                        .text(props.description())
                        .textSize(10f)
                        .singleLine(true)
                        .color(parseColor("#FF828282"))))),
            Column(ColumnProps()
                .layoutParams(LinearParams()
                    .width(MatchParent)
                    .height(WrapContent)
                    .weight(2.6f)
                    .margins(intDip2px(15), 0, 0, 0)
                    .gravity(Center))
                .children(Group(GroupProps()
                    .animatedText(true)
                    .textProps(TextProps()
                        .text(stateful ? (isChecked[0] ? "On" : "Off") : props.buttonText())
                        .color(isChecked[0] ? parseColor("#FF7F7FD5") : parseColor("#FF828282"))
                        .singleLine(true))
                    .buttonProps(LinearProps()
                        .link(button)
                        .layoutParams(LinearParams()
                            .width(intDip2px(60))
                            .height(intDip2px(30))
                            .gravity(Center | Right))
                        .focusable(true)
                        .clickable(true)
                        .onClick(new View.OnClickListener() {
                          @Override
                          public void onClick(View v) {
                            if (stateful) {
                              isChecked[0] = !isChecked[0];
                              button.send(GroupKey, GroupProps()
                                  .textProps(TextProps()
                                      .text(isChecked[0] ? "On" : "Off")
                                      .color(isChecked[0] ? parseColor("#FF7F7FD5") : parseColor("#FF828282"))));

                              if (isNotNull(props.onChecked())) {
                                props.onChecked().onChecked(isChecked[0]);
                              }

                            }
                            if (isNotNull(props.onClick())) {
                              props.onClick().onClick(v);
                            }
                          }
                        })))))));
  }

  public static ButtonItemProps ButtonItemProps() {
    return new ButtonItemProps();
  }

}
