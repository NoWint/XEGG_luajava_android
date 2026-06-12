package com.mucheng.mucuteui.eventbus;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EventBus {

  public interface Listener {
    void onAccepted(EventBus eventBus, Object value);
  }

  private final Map<String, List<Listener>> map = new HashMap<>();

  public static final EventBus GlobalEventBus = new EventBus();

  public EventBus send(String key, Object value) {
    List<Listener> listeners = map.get(key);
    if (listeners != null) {
      for (Listener listener : listeners) {
        listener.onAccepted(this, value);
      }
    }
    return this;
  }

  public EventBus send(String key) {
    return send(key, null);
  }

  public EventBus register(String key, Listener listener) {
    List<Listener> listeners = map.get(key);
    if (listeners == null) {
      listeners = new ArrayList<>();
      map.put(key, listeners);
    }
    listeners.add(listener);
    return this;
  }

  public EventBus unregister(String key, Listener listener) {
    List<Listener> listeners = map.get(key);
    if (listeners != null) {
      listeners.remove(listener);
    }
    return this;
  }

  public EventBus registerAll(String key, List<Listener> pListeners) {
    List<Listener> listeners = map.get(key);
    if (listeners == null) {
      listeners = new ArrayList<>();
      map.put(key, listeners);
    }
    listeners.addAll(pListeners);
    return this;
  }

  public EventBus unregisterAll(String key) {
    List<Listener> listeners = map.get(key);
    if (listeners != null) {
      listeners.clear();
      map.remove(key);
    }
    return this;
  }

}
