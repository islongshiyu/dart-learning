/**
 * 函数之作用域
 */
bool lv1 = true;

void main() {
  /**
   * 大括号定义的变量只能在大括号内访问。
   */
  var lv2 = true;
  /**
   * 函数中可以嵌套函数。
   */
  void fn1() {
    var lv3 = true;
    void nestedFunction() {
      /**
       * 最内层的嵌套函数可以访问包括顶层变量内的所有变量。
       */
      var lv4 = true;
      assert(lv1);
      assert(lv2);
      assert(lv3);
      assert(lv4);
    }
  }
}
