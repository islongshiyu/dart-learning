/**
 * 类之获取对象类型
 */
void main() {
  var a = 1;
  /**
   * 使用Object类的runtimeType来获取对象的运行时类型，返回的是Type类的实例。
   */
  print('变量a的类型是${a.runtimeType}'); // 变量a的类型是int
  /**
   * 使用is进行对象的类型判断在生产环境中比使用比较运行时类型更稳定安全。
   */
  assert(a is int); // 更加稳定
  assert(a.runtimeType == int); // 不推荐
}
