/**
 * 变量final和const
 */
class C {
  /**
   * 构造函数可以声明为const，这种类型的构造函数创建的对象是不可改变的。
   */
  const C(); // const构造函数
  /**
   * 构造函数为const时，成员变量只能为final或static const（顺序必须是static const）。
   */
  static const int x = 0;
  static const int y = 0;
  final int z = 0;
}

void main() {
  /**
   * 创建final变量
   */
  final name = 'Bob';
  final String nick = 'Bobby';
  /**
   * final变量只能被赋值一次。
   */
  //name = 'Alice';// Error: Can't assign to the final variable 'name'.
  /**
   * const变量是一个编译时常量（`const`变量同时也是final的）。
   */
  const foo = 9527;
  /**
   * const变量在声明时可以直接为其赋值，也可以使用其它的const变量为其赋值。
   */
  const double bar = 3.14 * foo;
  /**
   * const关键字创建常量值，该常量值可以赋予给任何变量。
   */
  var a = const [];
  final b = const [];
  const car = []; // 等价于 const[]
  /**
   * 变量使用const常量值初始化时可以省略const关键字。
   */
  var list1 = const [1, 2, 3];
  var list2 = [1, 2, 3]; // 等价于list1，const可省略
  /**
   * 由于构造函数为const是成员变量只能是final或static const其成员变量均不可通过getter和setter调用。
   */
  var c = new C();
  //c.x = 10;// Error: The setter 'x' isn't defined for the class 'C'
  //c.y = 10;// Error: The setter 'y' isn't defined for the class 'C'
  /**
   * const常量的值不可修改。
   */
  const arr = []; // 等价于 const[]
  //arr = [42];// Error: Can't assign to the const variable 'arr'.
  /**
   * const常量初始化时可以进行类型检查is、强制类型转换as、集合中的if和展开操作符（...和...?）。
   */
  const Object obj = 3;
  const list = [obj as int]; // 使用 as 进行强制类型转换
  const map = {if (obj is int) 'key': obj as int}; // 使用 is 进行类型检查
  const set = {if (list is List<int>) ...list}; // 展开操作符，将常量list展开赋值给常量set
  print('$list $map $set');// [3] {key: 3} {3}
}
