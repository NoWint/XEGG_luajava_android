package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

import android.animation.Animator;

import java.util.Arrays;
import java.util.List;

public class AnimatorSetProps extends UnsupportedLinkedProps<AnimatorSetProps> {

  private List<Animator> queue;

  public List<Animator> queue() {
    return queue;
  }

  public AnimatorSetProps queue(List<Animator> queue) {
    this.queue = queue;
    return this;
  }

  public AnimatorSetProps queue(Animator... queue) {
    this.queue = Arrays.asList(queue);
    return this;
  }

  public List<Animator> together() {
    return together;
  }

  public AnimatorSetProps together(List<Animator> together) {
    this.together = together;
    return this;
  }

  public AnimatorSetProps together(Animator... together) {
    this.together = Arrays.asList(together);
    return this;
  }

  public Long startDelay() {
    return startDelay;
  }

  public AnimatorSetProps startDelay(Long startDelay) {
    this.startDelay = startDelay;
    return this;
  }

  public Boolean start() {
    return start;
  }

  public AnimatorSetProps start(Boolean start) {
    this.start = start;
    return this;
  }

  private List<Animator> together;

  private Long startDelay;

  private Boolean start;

  public Long duration() {
    return duration;
  }

  public AnimatorSetProps duration(Long duration) {
    this.duration = duration;
    return this;
  }

  private Long duration;

  public Animator.AnimatorListener listener() {
    return listener;
  }

  public AnimatorSetProps listener(Animator.AnimatorListener listener) {
    this.listener = listener;
    return this;
  }

  private Animator.AnimatorListener listener;

  @Override
  protected void merge(AnimatorSetProps thisObj, AnimatorSetProps thatObj) {
    thisObj.together = isNotNull(thatObj.together) ? thatObj.together : thisObj.together;
    thisObj.queue = isNotNull(thatObj.queue) ? thatObj.queue : thisObj.queue;
    thisObj.duration = isNotNull(thatObj.duration) ? thatObj.duration : thisObj.duration;
    thisObj.listener = isNotNull(thatObj.listener) ? thatObj.listener : thisObj.listener;
    thisObj.start = isNotNull(thatObj.start) ? thatObj.start : thisObj.start;
    thisObj.startDelay = isNotNull(thatObj.startDelay) ? thatObj.startDelay : thisObj.startDelay;
  }
}
