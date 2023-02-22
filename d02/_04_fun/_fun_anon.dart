/**
 * 匿名之匿名函数
 */
void main() {
  const letters = ['a', 'b', 'c'];
  Iterable<String> upperLetters =
      letters.map((e) => e.toUpperCase()); // 定义一个匿名函数并使用箭头简写
  /**
   * 匿名函数可以赋值给变量。
   */
  var format = (String str) {
    print('_$str');
  };
  upperLetters.forEach(format);
  var suffix = (String str, {String suffix = '_'}) {
    print('$str$suffix');
  }; // 匿名函数使用可选命名参数
  upperLetters.forEach(suffix);
  // A_
  // B_
  // C_
  /**
   * 匿名函数可以省略参数类型，未声明类型的参数均为可空类型?，默认值为null。
   */
  var prefix = (str, {prefix}) {
    print('$str$prefix');
  };
  prefix(1); // 1null
  prefix; // 无效语句
  upperLetters.forEach(prefix);
  // Anull
  // Bnull
  // Cnull
  var n1 = (String str, {int? no}) {
    print('$str$no');
  }; // 效果等价于prefix
  upperLetters.forEach(n1);
  // Anull
  // Bnull
  // Cnull
  var n2 = (String str, [int? x = 1]) {
    print('$str$x');
  }; // 匿名函数使用位置参数
  upperLetters.forEach(n2);
  // A1
  // B1
  // C1
}
