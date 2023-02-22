/**
 * 内置类型Numbers
 */
void main() {
  /**
   * 整数是不带小数点的数字。
   */
  int x = 0;
  int hex = 0xDEADBEEF; // 3735928559
  /**
   * 包含小数点的就是浮点数。
   */
  double y = 0.1;
  double exponents = 1.42e5; // 指数
  /**
   * 使用num来定义一个即可能是int又可能是double的变量。
   */
  num z = 1;
  z = z + 0.5;
  /**
   * 整型字面量在必要情况下会进行自动类型转换。
   */
  double a = 1; // 等价于 double a = 1.0;
  print(a); // 1.0
  /**
   * String与num可以通过SDK进行相互转换。
   */
  int one = int.parse('1'); // String -> int
  assert(one == 1);
  var onePointOne = double.parse('1.1'); // String -> double
  assert(onePointOne == 1.1);
  String oneAsString = 1.toString(); // int -> String
  assert(oneAsString == '1');
  String piAsString = 3.1415926.toStringAsFixed(2); // double -> String
  assert(piAsString == '3.14');
  /**
   * 整型支持传统的位移操作，比如移位（<<、>>和>>>）、补码（~）、按位与（&）、按位或（|）以及按位异或（^）。
   */
  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
  assert((3 & 4) == 0); // 0011 & 0100 == 0000
  /**
   * 数字字面量为编译时常量；算术表达式只要操作数是常量，则表达式结果也是编译时常量。
   */
  int w = 10, h = 20;
  int s = w * h; // 该算术表达式的操作数均为编译时常量，该表达式的结果s也为编译时常量。
}
