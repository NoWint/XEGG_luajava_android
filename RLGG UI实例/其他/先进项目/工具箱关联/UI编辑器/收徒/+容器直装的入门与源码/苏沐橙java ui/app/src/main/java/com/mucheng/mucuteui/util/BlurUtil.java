package com.mucheng.mucuteui.util;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;
import static com.mucheng.mucuteui.util.MuCuteUtil.requireActivity;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.view.View;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.props.BlurProps;

public final class BlurUtil {

  private BlurUtil() {
  }

  public static BitmapDrawable Blur(BlurProps pProps) {
    final BlurProps props = pProps != null ? pProps : new BlurProps();
    if (isNotNull(props.eventBus())) {
      final ComponentEventBus<?> eventBus = props.eventBus();
      final View view = (View) eventBus.component();
      final RenderScript renderScript = RenderScript.create(requireActivity());
      view.buildDrawingCache();
      final Bitmap origin = view.getDrawingCache();
      Allocation input = Allocation.createFromBitmap(renderScript, origin);
      Allocation output = Allocation.createTyped(renderScript, input.getType());
      ScriptIntrinsicBlur blur = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript));
      if (isNotNull(props.radius())) {
        blur.setRadius(props.radius());
      }
      blur.setInput(input);
      blur.forEach(output);
      output.copyTo(origin);
      Bitmap bitmap = Bitmap.createBitmap(origin);
      return new BitmapDrawable(requireActivity().getResources(), bitmap);
    }
    return null;
  }

  public static BitmapDrawable Blur() {
    return Blur(null);
  }

}
