package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

import android.graphics.drawable.Drawable;
import android.view.View;

import com.mucheng.mucuteui.listener.OnPostListener;
import com.mucheng.mucuteui.listener.OnGlobalLayoutListener;
import com.mucheng.mucuteui.model.MutableValue;
import com.mucheng.mucuteui.model.Value;

public class ViewProps<CastProps extends ViewProps<?>> extends BaseProps<CastProps> {

  private MutableValue<Integer> fetchWidth;

  public MutableValue<Integer> fetchWidth() {
    return fetchWidth;
  }

  public CastProps fetchWidth(MutableValue<Integer> fetchWidth) {
    this.fetchWidth = fetchWidth;
    return (CastProps) this;
  }

  public MutableValue<Integer> fetchHeight() {
    return fetchHeight;
  }

  public CastProps fetchHeight(MutableValue<Integer> fetchHeight) {
    this.fetchHeight = fetchHeight;
    return (CastProps) this;
  }

  private MutableValue<Integer> fetchHeight;

  public Boolean debug() {
    return debug;
  }

  public CastProps debug(Boolean debug) {
    this.debug = debug;
    return (CastProps) this;
  }

  public Value<Drawable> background() {
    return background;
  }

  public CastProps background(Drawable background) {
    this.background = new Value<>(background);
    return (CastProps) this;
  }

  public Float alpha() {
    return alpha;
  }

  public CastProps alpha(Float alpha) {
    this.alpha = alpha;
    return (CastProps) this;
  }

  public int[] paddings() {
    return paddings;
  }

  public CastProps paddings(int... paddings) {
    this.paddings = paddings;
    return (CastProps) this;
  }

  public Value<LayoutParams> layoutParams() {
    return layoutParams;
  }

  public CastProps layoutParams(LayoutParams layoutParams) {
    this.layoutParams = new Value<>(layoutParams);
    return (CastProps) this;
  }

  public Value<View.OnClickListener> onClick() {
    return onClick;
  }

  public CastProps onClick(View.OnClickListener onClick) {
    this.onClick = new Value<>(onClick);
    return (CastProps) this;
  }

  public Boolean focusable() {
    return focusable;
  }

  public CastProps focusable(Boolean focusable) {
    this.focusable = focusable;
    return (CastProps) this;
  }

  public Boolean clickable() {
    return clickable;
  }

  public CastProps clickable(Boolean clickable) {
    this.clickable = clickable;
    return (CastProps) this;
  }

  public Integer visibility() {
    return visibility;
  }

  public CastProps visibility(Integer visibility) {
    this.visibility = visibility;
    return (CastProps) this;
  }

  public Integer minWidth() {
    return minWidth;
  }

  public CastProps minWidth(Integer minWidth) {
    this.minWidth = minWidth;
    return (CastProps) this;
  }

  public Integer minHeight() {
    return minHeight;
  }

  public CastProps minHeight(Integer minHeight) {
    this.minHeight = minHeight;
    return (CastProps) this;
  }

  public Float elevation() {
    return elevation;
  }

  public CastProps elevation(Float elevation) {
    this.elevation = elevation;
    return (CastProps) this;
  }

  private Boolean debug;

  private Value<Drawable> background;

  private Float alpha;

  private int[] paddings;

  private Value<LayoutParams> layoutParams;

  public Value<OnPostListener> post() {
    return post;
  }

  public CastProps post(OnPostListener post) {
    this.post = new Value<>(post);
    return (CastProps) this;
  }

  private Value<OnPostListener> post;

  public Value<OnPostListener> postOnce() {
    return postOnce;
  }

  public CastProps postOnce(OnPostListener postOnce) {
    this.postOnce = new Value<>(postOnce);
    return (CastProps) this;
  }

  private Value<OnPostListener> postOnce;

  public Value<OnGlobalLayoutListener> onGlobalLayout() {
    return onGlobalLayout;
  }

  public CastProps onGlobalLayout(OnGlobalLayoutListener onPreDraw) {
    this.onGlobalLayout = new Value<>(onPreDraw);
    return (CastProps) this;
  }

  public Value<OnGlobalLayoutListener> onGlobalLayoutOnce() {
    return onGlobalLayoutOnce;
  }

  public CastProps onGlobalLayoutOnce(OnGlobalLayoutListener onPreDrawOnce) {
    this.onGlobalLayoutOnce = new Value<>(onPreDrawOnce);
    return (CastProps) this;
  }

  private Value<OnGlobalLayoutListener> onGlobalLayout;

  private Value<OnGlobalLayoutListener> onGlobalLayoutOnce;

  private Value<View.OnClickListener> onClick;

  public Value<View.OnTouchListener> onTouch() {
    return onTouch;
  }

  public CastProps onTouch(View.OnTouchListener onTouch) {
    this.onTouch = new Value<>(onTouch);
    return (CastProps) this;
  }

  private Value<View.OnTouchListener> onTouch;

  public Value<View.OnLongClickListener> onLongClick() {
    return onLongClick;
  }

  public CastProps onLongClick(View.OnLongClickListener onLongClick) {
    this.onLongClick = new Value<>(onLongClick);
    return (CastProps) this;
  }

  private Value<View.OnLongClickListener> onLongClick;

  private Boolean focusable;

  private Boolean clickable;

  private Integer visibility;

  private Integer minWidth;

  private Integer minHeight;

  private Float elevation;

  public Value<BlurProps> blur() {
    return blur;
  }

  public CastProps blur(BlurProps blur) {
    this.blur = new Value<>(blur);
    return (CastProps) this;
  }

  private Value<BlurProps> blur;

  public Float x() {
    return x;
  }

  public CastProps x(Float x) {
    this.x = x;
    return (CastProps) this;
  }

  public Float y() {
    return y;
  }

  public CastProps y(Float y) {
    this.y = y;
    return (CastProps) this;
  }

  private Float x;

  private Float y;

  @Override
  protected void merge(CastProps thisObj, CastProps thatObj) {
    if (isNotNull(thatObj.postOnce())) {
      thisObj.postOnce(thatObj.postOnce().value());
    }
    if (isNotNull(thatObj.post())) {
      thisObj.post(thatObj.post().value());
    }
    if (isNotNull(thatObj.onGlobalLayoutOnce())) {
      thisObj.onGlobalLayoutOnce(thatObj.onGlobalLayoutOnce().value());
    }
    if (isNotNull(thatObj.onGlobalLayout())) {
      thisObj.onGlobalLayout(thatObj.onGlobalLayout().value());
    }
    thisObj.link(isNotNull(thatObj.link()) ? thatObj.link() : thisObj.link());
    if (isNotNull(thatObj.onClick())) {
      thisObj.onClick(thatObj.onClick().value());
    }
    if (isNotNull(thatObj.onLongClick())) {
      thisObj.onLongClick(thatObj.onLongClick().value());
    }
    if (isNotNull(thatObj.onTouch())) {
      thisObj.onTouch(thatObj.onTouch().value());
    }
    thisObj.alpha(isNotNull(thatObj.alpha()) ? thatObj.alpha() : thisObj.alpha());
    if (isNotNull(thatObj.background())) {
      thisObj.background(thatObj.background().value());
    }
    if (isNotNull(thatObj.blur())) {
      thisObj.blur(thatObj.blur().value());
    }
    thisObj.clickable(isNotNull(thatObj.clickable()) ? thatObj.clickable() : thisObj.clickable());
    thisObj.focusable(isNotNull(thatObj.focusable()) ? thatObj.focusable() : thisObj.focusable());
    thisObj.debug(isNotNull(thatObj.debug()) ? thatObj.debug() : thisObj.debug());
    thisObj.elevation(isNotNull(thatObj.elevation()) ? thatObj.elevation() : thisObj.elevation());
    thisObj.x(isNotNull(thatObj.x()) ? thatObj.x() : thisObj.x());
    thisObj.y(isNotNull(thatObj.y()) ? thatObj.y() : thisObj.y());
    if (isNotNull(thatObj.layoutParams())) {
      thisObj.layoutParams(thatObj.layoutParams().value());
    }
    thisObj.minWidth(isNotNull(thatObj.minWidth()) ? thatObj.minWidth() : thisObj.minWidth());
    thisObj.minHeight(isNotNull(thatObj.minHeight()) ? thatObj.minHeight() : thisObj.minHeight());
    thisObj.paddings(isNotNull(thatObj.paddings()) ? thatObj.paddings() : thisObj.paddings());
    thisObj.visibility(isNotNull(thatObj.visibility()) ? thatObj.visibility() : thisObj.visibility());
    thisObj.fetchWidth(isNotNull(thatObj.fetchWidth()) ? thatObj.fetchWidth() : thisObj.fetchWidth());
    thisObj.fetchHeight(isNotNull(thatObj.fetchHeight()) ? thatObj.fetchHeight() : thisObj.fetchHeight());
  }
}
