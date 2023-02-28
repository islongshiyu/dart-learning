/**
 * 类之mixin
 */
mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('弹钢琴');
    } else if (canConduct) {
      print('会指挥');
    } else {
      print('会作曲');
    }
  }
}

class Musician with Musical {}

/**
 * 使用on来指定哪些类可以使用该mixin类。
 */
class Animal {
  bool canSpeak = false;
  String planet = 'earth';

  void speak() {
    if (canSpeak) {
      print('会说话');
      return;
    }
    print('不会说话');
  }
}

/**
 * mixin类不能定义构造函数。
 */
mixin Dog on Animal{
  // Dog(){
  // Error: Mixins can't declare constructors.
  // }
}

/**
 * 使用on指定哪些类可以使用该mixin类时必须继承或实现该mixin类。
 */
//class KejiDog with Dog{
  // Error: The non-abstract class 'KejiDog' is missing implementations for these members:
  // - Animal.canSpeak
  // - Animal.planet
  // - Animal.speak
  // Try to either
  // - provide an implementation,
  // - inherit an implementation from a superclass or mixin,
  // - mark the class as abstract, or
  // - provide a 'noSuchMethod' implementation.
//}

class ChaiDog extends Animal with Dog{// 必须实现或继承该mixin类

}


void main() {
  var v = Musician();
  v.entertainMe(); // 会作曲

  var d = ChaiDog();

  d.speak();// 不会说话
}
