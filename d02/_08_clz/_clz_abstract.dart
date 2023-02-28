/**
 * 类之抽象类
 */
abstract class Shape {
  void show() {
    print('展示图形信息：${this.area()}'); // 钩子
  }

  /**
   * 抽象方法只能存在于抽象类中。
   */
  double area(); // 抽象方法无方法体
}

class Rectangle extends Shape {


  @override
  double area() {
    // 抽象方法必须实现
    return 3 * 4;
  }
}

void main() {
  var v = new Rectangle();
  v.show(); // 展示图形信息：12.0

  /**
   * 抽象类无法实例化。
   */
  // var a = new Shape();// Error: The class 'Shape' is abstract and can't be instantiated.
}
