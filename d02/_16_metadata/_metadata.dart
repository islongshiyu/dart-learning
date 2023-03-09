/**
 * 元注解
 */
class TV {
  @deprecated
  void activate() {
    turnOn();
  }

  void turnOn() {}
}

/**
 * 自定义元注解
 */
const Todo todo = Todo('todo');// 作为@Todo('todo')的别名

class Todo {
  final String what;

  const Todo(this.what);
}

void main(){
  @todo
  @Todo('先声明在这后面用')
  int i = 0;
}
