/**
 * 类之隐式接口
 */
class Animal {
  final String _name; // 只能在本类中使用外部无法调用

  Animal(this._name);

  void say(String words) => print('${this._name}正在说$words');
}

class Creature {}

/**
 * 可以使用implements实现多个接口。
 */
class Cat implements Animal, Creature {
  @override
  String get _name => '橘猫';

  @override
  void say(String words) => print('$_name说$words');
}

void main() {
  var animal = Animal('象');
  animal.say('哞哞'); // 象正在说哞哞
  var cat = Cat();
  cat.say('喵'); // 橘猫说喵
  Animal a = new Cat();
  a.say('汪汪汪'); // 橘猫说汪汪汪
}
