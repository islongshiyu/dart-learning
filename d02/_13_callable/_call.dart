/**
 * 可调用类
 */
class AnimalAction {
  String action;
  AnimalAction(this.action);
  String call(String name) => '$name ' + this.action;
}

void main(List<String> args) {
  AnimalAction c = AnimalAction('drink water');
  print(c.call('dog')); // dog drink water
  print(c.call('cat')); // cat drink water
  print(c('dog')); // dog drink water
  print(c('cat')); // cat drink water
}
