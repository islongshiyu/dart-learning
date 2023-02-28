/**
 * 类之重写
 */
class Lamp {
  void turnOn() {
    print('按下开关');
  }
}

class Chandelier extends Lamp {
  /**
   * 子类可以重写父类的实例方法，Getter，Setter。
   */
  @override
  void turnOn() {
    print('拉开开关');
  }

  /**
   * 可以重写noSuchMethod自定义该方法的输出。
   *  当接收方的静态类型为dynamic时可以调用noSuchMethod。
   *  当接收方的实际类型定义
   *
   */
  @override
  void noSuchMethod(Invocation invocation) {
    //
    print('尝试调用不存在的灯属性或方法${invocation.memberName}');
  }
}

class Candle extends Lamp {
  /**
   * 子类可以重写父类的实例方法，Getter，Setter。
   */
  @override
  void turnOn() {
    print('点燃蜡烛');
  }

  /**
   * 可以重写noSuchMethod自定义该方法的输出。
   *  当接收方的静态类型为dynamic时可以调用自定义noSuchMethod。
   *  当接收方的实际类型实现的noSuchMethod和Object类中的noSuchMethod不同时可以调用自定义noSuchMethod。
   */
  @override
  external dynamic noSuchMethod(
      Invocation invocation); // 和Object类中的noSuchMethod时将无法调用noSuchMethod
}

void main() {
  dynamic lamp = Chandelier();
  lamp.say; // 尝试调用不存在的灯属性或方法Symbol("say")
  dynamic v = 1;
  v.say; // NoSuchMethodError: Class 'int' has no instance getter 'say'.
  dynamic candle = Candle();
  candle.say; // 无法调用自定义的noSuchMethod Receiver: 1 Tried calling: say
}
