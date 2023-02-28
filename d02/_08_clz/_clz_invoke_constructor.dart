import 'dart:math';

/**
 * 类之调用构造函数
 */
void main() {
  /**
   * 使用类名()或类名.标识符()来调用构造函数。
   */
  var p1 = new Point(2, 2);
  /**
   * 调用构造函数时可以省略new。
   */
  var p2 = Point(3, 3);
  /**
   * 如果类的构造函数是const的则可以在构造函数前加const关键字创建编译时常量。
   */
  var p3 = const Point(4, 4);
  /**
   * 使用相同参数相同构造函数创建的编译时常量是同一个对象。
   */
  var p4 = const Point(4, 4);
  assert(p3 == p4);
  /**
   * 在常量上下文中可以省略掉构造函数或字面量前的const关键字。
   */
  const data1 = const {
    'points': const [const Point(1, 1), const Point(2, 2)],
    'lines': const [const Point(1, 10), const Point(20, 30)]
  };
  const data2 = {
    'points': [const Point(1, 1), Point(2, 2)],
    'lines': [const Point(1, 10), Point(20, 30)]
  }; // 只保留第一个const，其余的全部省略
  assert(identical(data1, data2));
  var a = const Point(1, 1); // 创建的是一个常量
  var b = Point(1, 1); // 创建的不是一个常量
  assert(!identical(a, b)); // 不是同一个对象
}
