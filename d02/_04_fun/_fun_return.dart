/**
 * 函数之返回值
 */

/**
 * 任何函数都有返回值，没有显示声明返回语句的函数最后一行默认执行代码return null。
 */
foo() {}

void main() {
  assert(null == foo());
}
