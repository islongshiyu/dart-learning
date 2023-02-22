/**
 * 内置类型Lists
 */
void main() {
  /**
   * 列表字面量是由逗号分隔的一串表达式或值并以方括号[]包裹而组成的。
   */
  var list1 = [1, 2, 3]; // list的类型自动推断为List<int>，往list添加非int类型的对象将会报错
  /**
   * 列表末位元素后跟逗号不会产生错误并能有效避免复制粘贴带来的错误。
   */
  var list2 = [
    1,
    2,
    3,
    4, //末位元素后跟逗号
  ];
  /**
   * 列表的下标索引从0开始，第一个元素的下标为0，最后一个元素的下标为list.length - 1。
   */
  var list3 = [
    1,
    2,
    3,
  ];
  assert(list3.length == 3);
  assert(list3[1] == 2);
  list3[1] = 5;
  assert(list3[1] == 5);
  /**
   * 在列表字面量前使用const关键字会创建编译时常量列表（2.3版本引入）。
   */
  var la = const [1, 2, 3]; // 使用const创建列表常量
  //la[2] = 1; // Unsupported operation: Cannot modify an unmodifiable list
  /**
   * 列表可以使用展开操作符...和空感知扩展操作符...?进行展开操作。
   */
  var v1 = [1, 2, 3];
  var v2 = [0, ...v1]; // 将v1所有元素插入v2 [0, 1, 2, 3]
  assert(v2.length == 4);
  var l1; // null
  var l2 = [0, ...?l1]; // 当list1可能为空时使用空感知操作符将list1插入list2 [0]
  assert(l2.length == 1);
  /**
   * 列表支持if和for操作。
   */
  var lx = 1;
  var ly = ['家', '家具', '植物', if (lx == 0) '出口'];
  assert(ly.length == 3);
  var listOfInts = [1, 2, 3];
  var listOfStrs = [
    '#0',
    for (int i in listOfInts) '#$i'
  ]; // ['#0', '#1', '#2', '#3']
  assert(listOfStrs[1] == '#1');
  assert(listOfStrs.length == 4);
}
