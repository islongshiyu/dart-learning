/**
 * 泛型之为何使用它
 */
abstract class Cache<T> {
  /**
   * 使用泛型可以减少重复代码。
   */
  T get(String key);
  void set(String key, T val);
}

void main(List<String> args) {
  /**
   * 使用泛型可以进行类型约束。
   */
  var names = <String>[];
  //names.addAll('张三', '李四', '王五');// The argument type 'String' can't be assigned to the parameter type 'Iterable<String>'.
}
