package com.mucheng.mucuteui.impl;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

import android.graphics.Color;
import android.widget.TextView;

import com.mucheng.mucuteui.eventbus.EventBus;
import com.mucheng.mucuteui.props.ShadowLayerProps;
import com.mucheng.mucuteui.props.TextProps;
import com.mucheng.mucuteui.util.MuCuteUtil;

public class TextImpl extends BaseImpl<TextView> {

  public TextImpl(TextView textView) {
    super(textView);
  }

  @Override
  public void onAccepted(EventBus eventBus, Object value) {
    MuCuteUtil.checkNotNullForProps(value);
    TextProps props = (TextProps) value;
    if (isNotNull(props.text())) {
      component.setText(props.text().value());
    }
    if (isNotNull(props.textSize())) {
      component.setTextSize(props.textSize());
    }
    if (isNotNull(props.color())) {
      component.setTextColor(props.color());
    }
    if (isNotNull(props.shader())) {
      component.getPaint().setShader(props.shader().value());
      component.invalidate();
    }
    if (isNotNull(props.selectable())) {
      component.setTextIsSelectable(props.selectable());
    }
    if (isNotNull(props.singleLine())) {
      component.setSingleLine(props.singleLine());
    }
    if (isNotNull(props.gravity())) {
      component.setGravity(props.gravity());
    }
    if (isNotNull(props.shadowLayer())) {
      final ShadowLayerProps shadowLayer = props.shadowLayer().value();
      if (shadowLayer == null) {
        component.setShadowLayer(0f, 0f, 0f, Color.TRANSPARENT);
      } else {
        float radius = shadowLayer.radius() != null ? shadowLayer.radius() : 0f;
        float x = shadowLayer.x() != null ? shadowLayer.x() : 0f;
        float y = shadowLayer.y() != null ? shadowLayer.y() : 0f;
        int color = shadowLayer.color() != null ? shadowLayer.color() : Color.TRANSPARENT;
        component.setShadowLayer(radius, x, y, color);
      }
    }
  }

}
