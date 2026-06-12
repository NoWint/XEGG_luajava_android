package com.mucheng.mucuteui.model;

public class Value<T> {

  protected T value;

  public Value(T value) {
    this.value = value;
  }

  public T value() {
    return value;
  }

}
