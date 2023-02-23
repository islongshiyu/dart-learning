/**
 * 内置类型Sets
 */
void main() {
  var halogens = {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine'
  }; // 可以通过Set字面量创建Set集合
  Set<num> set = {1, 2.5, 3, 4};
  /**
   * 通过在{}前加上类型<Set>或将{}赋值给Set类型变量来创建空Set，直接将{}赋值给变量创建的是Map而不是Set。
   */
  var names = <Set>{}; // 在{}前加上类型<Set>创建空Set
  Set<String> addresses = {}; // 将{}赋值给Set类型变量创建空Set
  var points = {}; // 创建的是Map不是Set
  assert(names is Set); // true
  assert(addresses is Set); // true
  assert(points is Map); // true
  const set1 = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  }; // 在Set变量前使用const关键字将创建一个不可更改的Set编译时常量
  //fset.add('helium');// Unsupported operation: Cannot change an unmodifiable set
  var letters = {'a', 'b', 'c', 'd', 'e'};
  var elements = <String>{};
  elements.add('e');
  elements.addAll(letters);
  /**
   * Set中的元素唯一无重复项。
   */
  assert(elements.length == 5); // 无重复项
  /**
   * Set支持...展开操作符...?空感知操作符for in等操作（Dart 2.3）。
   */
  var v = {'chars', ...letters}; // 展开操作
  assert(v.length == 6); // true
  var w = {for (String str in v) '$str'}; // 展开操作
  Set<String>? x = null;
  var y = {...?x}; // 空感知展开操作
  assert(y is Set); // true
  assert(y.length == 0); // true
  print(w); // {chars, a, b, c, d, e} for in 操作
}
