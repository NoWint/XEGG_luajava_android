package com.mucheng.mucuteui.example.component;

import static com.mucheng.mucuteui.components.LinearComponents.Column;
import static com.mucheng.mucuteui.components.LinearComponents.ColumnProps;
import static com.mucheng.mucuteui.components.LinearComponents.LinearParams;
import static com.mucheng.mucuteui.components.LinearComponents.Row;
import static com.mucheng.mucuteui.components.LinearComponents.RowProps;
import static com.mucheng.mucuteui.components.SwitchComponents.Switch;
import static com.mucheng.mucuteui.components.SwitchComponents.SwitchProps;
import static com.mucheng.mucuteui.components.TextComponents.Text;
import static com.mucheng.mucuteui.components.TextComponents.TextProps;
import static com.mucheng.mucuteui.util.GravityUtil.Center;
import static com.mucheng.mucuteui.util.GravityUtil.Right;
import static com.mucheng.mucuteui.util.ParseUtil.parseColor;
import static com.mucheng.mucuteui.util.SizeUtil.MatchParent;
import static com.mucheng.mucuteui.util.SizeUtil.WrapContent;
import static com.mucheng.mucuteui.util.SizeUtil.intDip2px;

import android.widget.LinearLayout;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.example.props.SwitchItemProps;
import com.mucheng.mucuteui.util.MuCuteUtil;

public final class SwitchItemComponents {

  private SwitchItemComponents() {
  }

  public static ComponentEventBus<LinearLayout> SwitchItem(SwitchItemProps props) {
    MuCuteUtil.checkNotNullForProps(props);

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
                .children(Switch(SwitchProps()
                    .buttonProps(RowProps()
                        .layoutParams(LinearParams()
                            .width(intDip2px(60))
                            .height(intDip2px(30))
                            .gravity(Center | Right))
                        .focusable(true)
                        .clickable(true)
                    )
                    .checked(props.checked())
                    .onChecked(props.onChecked()))))));
  }

  public static SwitchItemProps SwitchItemProps() {
    return new SwitchItemProps();
  }

}
