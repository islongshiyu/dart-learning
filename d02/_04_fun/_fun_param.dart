/**
 * 函数之参数
 */

/**
 * 命名参数若不使用required修饰，则必须为可空类型。
 */
void f1({bool? a, bool? b}) {
  print('$a $b');
}

/**
 * 必须传递的命名参数使用required修饰。
 */
void f2({int? x, required int y}) {
  print('$x $y');
}

/**
 * required命名参数也可以是可空类型。
 */
void f3({int? x, required int? y}) {
  print('$x $y');
}

/**
 * 命名参数使用=号设置默认值，非可空类型的命名参数默认值不能为null，required参数不能有默认值。
 */
void f4({int? x = null, int y = 0, required int z}) {
  print('$x $y $z');
}

/**
 * 位置参数未指定默认值时类型必须为可空类型?
 */
void ff1(int x, int y, [int? z, var v]) {
  print('$x $y $z $v');
}

/**
 * 位置参数使用=号指定默认值
 */
void ff2(int x, int y, [int? z = 1]) {
  print('$x $y $z');
}

/**
 * 位置参数指定默认值时类型可以去掉可空类型?但此时默认值不能设置为null
 */
void ff3(int x, int y, [int z = 0]) {
  print('$x $y $z');
}

void main() {
  f1(); // 命名参数是可选的; null null
  f2(y: 0); // required参数在调用时必须传递; null 0
  f3(y: null); // required参数可以是可空类型; null null
  f4(z: 0); // null 0 0

  ff1(0, 0); // 必要参数必须传递；0 0 null null
  ff2(0, 0); // 0 0 1
  ff3(0, 0); // 0 0 1
}
