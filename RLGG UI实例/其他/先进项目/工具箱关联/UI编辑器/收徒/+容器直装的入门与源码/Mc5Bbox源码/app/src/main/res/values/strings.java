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
 String StringObject;


 // Getter Methods 

 public String getString() {
  return StringObject;
 }

 // Setter Methods 

 public void setString(String stringObject) {
  this.StringObject = stringObject;
 }
}
public class String {
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