/**
 * 其他运算符
 */
void main() {
  List<num>? list = null;
  assert(list?[1] == null); // ?[] 左侧调用者不为空时，访问List中特定位置的元素，为空则直接返回null
  Map<String, String>? map = null;
  assert(map?.length == null); // ?. 左侧调用者不为空时，则访问其成员，否则返回null
  int? x = null;
  var y = x!
      .isEven; // !空断言操作符，若表达式为空将抛出运行时异常 Null check operator used on a null value
}
