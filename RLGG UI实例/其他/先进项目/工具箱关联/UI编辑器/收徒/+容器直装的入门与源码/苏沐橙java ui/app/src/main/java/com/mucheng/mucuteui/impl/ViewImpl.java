package com.mucheng.mucuteui.impl;

import static com.mucheng.mucuteui.util.BlurUtil.Blur;
import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;
import static com.mucheng.mucuteui.util.MuCuteUtil.isNull;
import static com.mucheng.mucuteui.util.MuCuteUtil.post;
import static com.mucheng.mucuteui.util.ParseUtil.parseColor;
import static com.mucheng.mucuteui.util.SizeUtil.WrapContent;

import android.annotation.SuppressLint;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;

import com.mucheng.mucuteui.components.ViewComponents;
import com.mucheng.mucuteui.eventbus.EventBus;
import com.mucheng.mucuteui.model.MutableValue;
import com.mucheng.mucuteui.props.BlurProps;
import com.mucheng.mucuteui.props.LayoutParams;
import com.mucheng.mucuteui.props.ViewProps;
import com.mucheng.mucuteui.util.MuCuteUtil;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;

public class ViewImpl extends BaseImpl<View> {

  public ViewImpl(View view) {
    super(view);
  }

  private Class<? extends ViewGroup.LayoutParams> last;

  @SuppressLint("WrongConstant")
  @Override
  public void onAccepted(EventBus eventBus, Object value) {
    MuCuteUtil.checkNotNullForProps(value);
    ViewProps<?> props = (ViewProps<?>) value;
    if (isNotNull(props.link())) {
      if (props.link() != null) {
        MutableValue<EventBus> linkedValue = props.link();
        linkedValue.setValue(eventBus);
      }
    }
    if (isNotNull(props.background())) {
      component.setBackground(props.background().value());
    }
    if (isNotNull(props.alpha())) {
      component.setAlpha(props.alpha());
    }
    if (isNotNull(props.debug())) {
      component.setBackground(new ColorDrawable(parseColor("#FFE5E5E5")));
    }
    if (isNotNull(props.paddings())) {
      int[] paddings = props.paddings();
      component.setPadding(paddings[0], paddings[1], paddings[2], paddings[3]);
    }
    if (isNotNull(props.focusable())) {
      component.setFocusable(props.focusable());
    }
    if (isNotNull(props.clickable())) {
      component.setClickable(props.clickable());
    }
    if (isNotNull(props.onTouch())) {
      component.setOnTouchListener(props.onTouch().value());
    }
    if (isNotNull(props.post())) {
      final ViewProps<?> finalProps = props;
      final View finalComponent = component;
      component.post(new Runnable() {
        @Override
        public void run() {
          finalProps.post().value().post(component.getWidth(), component.getHeight());
        }
      });
    }
    if (isNotNull(props.postOnce())) {
      final ViewProps<?> finalProps = props;
      final View finalComponent = component;
      component.post(new Runnable() {
        @Override
        public void run() {
          finalProps.postOnce().value().post(component.getWidth(), component.getHeight());
          finalComponent.removeCallbacks(this);
        }
      });
    }
    if (isNotNull(props.onGlobalLayoutOnce())) {
      final ViewProps<?> finalProps = props;
      final View finalComponent = component;
      component.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
        @Override
        public void onGlobalLayout() {
          finalProps.onGlobalLayoutOnce().value().onGlobalLayout(finalComponent.getWidth(), finalComponent.getHeight());
          finalComponent.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
      });
    }
    if (isNotNull(props.onGlobalLayout())) {
      final ViewProps<?> finalProps = props;
      final View finalComponent = component;
      component.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
        @Override
        public void onGlobalLayout() {
          finalProps.onGlobalLayout().value().onGlobalLayout(finalComponent.getWidth(), finalComponent.getHeight());
        }
      });
    }
    if (isNotNull(props.fetchWidth()) && isNotNull(props.fetchHeight())) {
      final ViewProps<?> finalProps = props;
      final View finalComponent = component;
      component.post(new Runnable() {
        @Override
        public void run() {
          finalProps.fetchWidth().setValue(component.getWidth());
          finalProps.fetchHeight().setValue(component.getHeight());
        }
      });
    } else if (isNotNull(props.fetchWidth())) {
      final ViewProps<?> finalProps = props;
      final View finalComponent = component;
      component.post(new Runnable() {
        @Override
        public void run() {
          finalProps.fetchWidth().setValue(component.getWidth());
        }
      });
    } else if (isNotNull(props.fetchHeight())) {
      final ViewProps<?> finalProps = props;
      final View finalComponent = component;
      component.post(new Runnable() {
        @Override
        public void run() {
          finalProps.fetchHeight().setValue(component.getHeight());
        }
      });
    }
    if (isNotNull(props.onClick())) {
      component.setOnClickListener(props.onClick().value());
    }
    if (isNotNull(props.onLongClick())) {
      component.setOnLongClickListener(props.onLongClick().value());
    }
    if (isNotNull(props.visibility())) {
      component.setVisibility(props.visibility());
    }
    if (isNotNull(props.minWidth())) {
      component.setMinimumWidth(props.minWidth());
    }
    if (isNotNull(props.minHeight())) {
      component.setMinimumHeight(props.minHeight());
    }
    if (isNotNull(props.elevation())) {
      component.setElevation(props.elevation());
    }
    if (isNotNull(props.blur())) {
      final BlurProps blurProps = props.blur().value();
      if (isNull(blurProps)) {
        component.setBackground(null);
      } else {
        component.post(new Runnable() {
          @Override
          public void run() {
            component.setBackground(Blur(blurProps));
          }
        });
      }
    }
    if (isNotNull(props.x())) {
      component.setX(props.x());
    }
    if (isNotNull(props.y())) {
      component.setY(props.y());
    }
    if (isNotNull(props.layoutParams())) {
      final LayoutParams params = props.layoutParams().value();
      final ViewGroup.LayoutParams nativeLayoutParams;
      int width = params.width() != null ? params.width() : WrapContent;
      int height = params.height() != null ? params.height() : WrapContent;
      Class<? extends ViewGroup.LayoutParams> mapping;
      if (isNotNull(params.mapping())) {
        mapping = params.mapping();
      } else {
        mapping = LinearLayout.LayoutParams.class;
      }

      if (last != null &&
          mapping == last &&
          component.getLayoutParams() != null) {
        nativeLayoutParams = component.getLayoutParams();
        if (isNotNull(params.margins()) &&
            nativeLayoutParams instanceof ViewGroup.MarginLayoutParams) {
          int[] margins = params.margins();
          ((ViewGroup.MarginLayoutParams) nativeLayoutParams).setMargins(
              margins[0],
              margins[1],
              margins[2],
              margins[3]
          );
        }

        if (isNotNull(params.weight()) &&
            nativeLayoutParams instanceof LinearLayout.LayoutParams) {
          ((LinearLayout.LayoutParams) nativeLayoutParams).weight = params.weight();
        }

        if (isNotNull(params.gravity())) {
          try {
            Field gravityField = mapping.getField("gravity");
            gravityField.setAccessible(true);
            gravityField.set(nativeLayoutParams, params.gravity());
          } catch (Exception ignored) {
          }
        }
        component.setLayoutParams(nativeLayoutParams);
        return;
      }

      Constructor<? extends ViewGroup.LayoutParams> constructor;
      if (ViewComponents.cache.get(mapping) != null) {
        constructor = ViewComponents.cache.get(mapping);
      } else {
        try {
          constructor =
              mapping.getConstructor(int.class, int.class);
          constructor.setAccessible(true);
        } catch (NoSuchMethodException e) {
          throw new RuntimeException(e);
        }
      }

      if (constructor != null) {
        try {
          nativeLayoutParams = constructor.newInstance(width, height);
        } catch (Exception e) {
          throw new RuntimeException(e);
        }

        if (isNotNull(params.margins()) &&
            nativeLayoutParams instanceof ViewGroup.MarginLayoutParams) {
          int[] margins = params.margins();
          ((ViewGroup.MarginLayoutParams) nativeLayoutParams).setMargins(
              margins[0],
              margins[1],
              margins[2],
              margins[3]
          );
        }

        if (isNotNull(params.weight()) &&
            nativeLayoutParams instanceof LinearLayout.LayoutParams) {
          ((LinearLayout.LayoutParams) nativeLayoutParams).weight = params.weight();
        }

        if (isNotNull(params.gravity())) {
          try {
            Field gravityField = mapping.getField("gravity");
            gravityField.setAccessible(true);
            gravityField.set(nativeLayoutParams, params.gravity());
          } catch (Exception ignored) {
          }
        }

        last = mapping;
        post(new Runnable() {
          @Override
          public void run() {
            component.setLayoutParams(nativeLayoutParams);
          }
        });
      }
    }
  }

}
