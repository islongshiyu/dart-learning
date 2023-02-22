import 'dart:math';
import 'dart:math' as lib;

/**
 * 类型判断运算符
 */
void main() {
  assert(0 is num); // 如果对象是指定类型则返回 true
  assert(!(0 is! num)); // 如果对象是指定类型则返回 false
  var d = null;
  if (d is double) {
    print(d as double); // 当不确定某个对象的类型时先使用is进行类型检查后在进行类型转换
  }
  var point1 = Point(0, 0);
  var point2 = lib.Point(0, 0); // as指定库前缀，当多个库中出现同名类时可以使用这种方式进行区分
  var e;
  print(e
      as num); // 若不进行检查直接进行类型转换，当对象为null或类型不匹配时将抛出异常 type 'Null' is not a subtype of type 'num' in type cast
}
