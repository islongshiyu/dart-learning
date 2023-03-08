/**
 * 泛型之集合泛型固化
 */
void main(List<String> args) {
  /**
   * 泛型是固化的，运行时会保存泛的类型。
   */
  var names = <String>[];
  names.addAll(['张三', '李四']);
  print(names is List<String>); // true
  print(names is List); // true
  print(names is List<int>); // false
}
