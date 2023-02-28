import 'dart:math';

/**
 * 类之变量和方法
 */
class Point {
  /**
   * 类变量（即静态变量）常用于声明类范围内所属的状态变量和常量。
   */
  static const zero = 0; // 静态变量在其首次被使用的时候才被初始化

  double x, y;

  Point.xy(this.x, this.y);

  /**
   * 类方法（即静态方法）不能对实例进行操作不能使用this，只能访问静态变量。
   */
  static double distance(Point p1, Point p2) {
    var dx = p1.x - p1.x;
    var dy = p2.y - p2.y;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {
  var p1 = Point.xy(1,1);
  var p2 = Point.xy(2,2);
  print(Point.distance(p1,p2));// 0.0
}
