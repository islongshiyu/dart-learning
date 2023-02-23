/**
 * 异常之throw
 */
void main() {
  /**
   * 抛异常是一个表达式可以使用箭头简写。
   */
  void say(var str) => throw UnimplementedError();
  /**
   * 可以抛出任何不为null的对象不局限于Exception和Error。
   */
  int x = 0;
  if (x == 0) {
    throw 0; // 抛出0
  }
}
