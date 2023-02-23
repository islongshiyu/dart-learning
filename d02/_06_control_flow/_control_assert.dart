/**
 * 流程控制语句之assert
 */
void main() {
  assert('a' != null);
  assert('a' is String);
  var str = 'abc';
  /**
   * assert的第一个参数必须为bool。
   */
  assert(
      str.length > 10,
      /**
   * assert的第二个参数是可选的，用于添加错误提示信息。
   */
      'str length must greater than 10!'); // Failed assertion: line 8 pos 10: 'str.length > 10': str length must greater than 10!
  // 在生产环境代码中，断言会被忽略。
  // 断言失败时抛出AssertionError异常。
}
