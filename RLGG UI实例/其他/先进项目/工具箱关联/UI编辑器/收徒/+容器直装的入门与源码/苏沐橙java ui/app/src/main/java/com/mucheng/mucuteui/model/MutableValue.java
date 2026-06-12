package com.mucheng.mucuteui.model;

public class MutableValue<T> extends Value<T> {

  public MutableValue(T value) {
    super(value);
  }

  public MutableValue() {
    this(null);
  }

  public void setValue(T value) {
    this.value = value;
  }

}
