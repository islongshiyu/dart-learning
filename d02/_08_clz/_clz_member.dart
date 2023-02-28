import 'dart:math';

/**
 * 类之成员
 */
void main() {
  var p = new Point(2, 2);
  /**
   * 使用.访问类成员变量或方法。
   */
  assert(2 == p.x);
  double distance = p.distanceTo(new Point(4, 4));
  /**
   * 使用?.访问类成员变量或方法避免null问题。
   */
  Point? point = null;
  var y = point?.y; // 如果point不为空则赋值给y
  print(y); // null
}
