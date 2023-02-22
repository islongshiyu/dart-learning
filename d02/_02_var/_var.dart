/**
 * 变量声明
 */
void main() {
  var name1 =
      'Bob'; // 创建变量name1并初始化其值为Bob，变量只仅存储对象的引用，name1变量存储了一个String类型的引用，Bob是该对象的值，name1变量的类型将被推断为String
  Object name2 = 'Bob'; // 如果一个对象的引用不局限于单一的类型，可以将其指定为 Object（或 dynamic）类型。
  String name3 = 'Bob'; // 声明变量时指定其类型
  print('$name1 $name2 $name3');
}
