public class Codebeautify {
 Resources ResourcesObject;


 // Getter Methods 

 public Resources getResources() {
  return ResourcesObject;
 }

 // Setter Methods 

 public void setResources(Resources resourcesObject) {
  this.ResourcesObject = resourcesObject;
 }
}
public class Resources {
 Style StyleObject;


 // Getter Methods 

 public Style getStyle() {
  return StyleObject;
 }

 // Setter Methods 

 public void setStyle(Style styleObject) {
  this.StyleObject = styleObject;
 }
}
public class Style {
 Item ItemObject;
 private String _name;
 private String _parent;


 // Getter Methods 

 public Item getItem() {
  return ItemObject;
 }

 public String get_name() {
  return _name;
 }

 public String get_parent() {
  return _parent;
 }

 // Setter Methods 

 public void setItem(Item itemObject) {
  this.ItemObject = itemObject;
 }

 public void set_name(String _name) {
  this._name = _name;
 }

 public void set_parent(String _parent) {
  this._parent = _parent;
 }
}
public class Item {
 private String _name;
 private String __text;


 // Getter Methods 

 public String get_name() {
  return _name;
 }

 public String get__text() {
  return __text;
 }

 // Setter Methods 

 public void set_name(String _name) {
  this._name = _name;
 }

 public void set__text(String __text) {
  this.__text = __text;
 }
}