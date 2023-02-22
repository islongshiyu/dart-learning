/**
 * 级联运算符
 */
class Point {
  int _x = 0;
  int _y = 0;

  int get x => _x;

  set x(int value) {
    _x = value;
  }

  int get y => _y;

  set y(int value) {
    _y = value;
  }

  @override
  String toString() {
    return 'Point{_x: $_x, _y: $_y}';
  }
}

void main() {
  var point = Point() // 构造器返回Point对象
    ..x = 50
    ..y = 50; // 级联运算符将忽略返回值
  assert(point != 50);
  var p = new Point(); // 等价于上一个变量的级联赋值
  p.x = 50;
  p.y = 50;
  print(p); // Point{_x: 50, _y: 50}
  var i = 0;
  var np = null;
  np // 空对象级联，np为null后续所有级联操作将不会执行
    ?..x((i) => i > 0 ? --i : ++i)
    ..y(50);
  assert(i == 0);
  assert(np == null);
}
