package com.mucheng.mucuteuix.example.ui;

import android.graphics.PorterDuff;
import android.view.View;
import android.widget.SeekBar;

import com.mucheng.mucuteuix.base.ViewHelper;

public class Slider extends ViewHelper<Slider> {

  private SeekBar seekBar;

  @Override
  protected void init() {
    seekBar = new SeekBar(requireActivity());
    seekBar.getThumb().setColorFilter(hexColor("#FF9198E5"), PorterDuff.Mode.SRC_IN);
    seekBar.getProgressDrawable().setColorFilter(hexColor("#FF9198E5"), PorterDuff.Mode.SRC_IN);

  }

  public Slider setMax(int max) {
    seekBar.setMax(max);
    return this;
  }

  public Slider setProgress(int progress) {
    seekBar.setProgress(progress);
    return this;
  }

  public Slider setOnSeekBarChangedListener(SeekBar.OnSeekBarChangeListener onSeekBarChangedListener) {
    seekBar.setOnSeekBarChangeListener(onSeekBarChangedListener);
    return this;
  }

  @Override
  public SeekBar build() {
    return seekBar;
  }

}
