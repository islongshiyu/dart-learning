/**
 * 逻辑运算符
 */
void main() {
  bool b = false;
  assert(!b); // !expr 取反
  int a = 0;
  b = b || (a++ > 0); // 逻辑或||左表达式为假右表达式将执行
  assert(a == 1);
  assert(b == false); // 此处b的值为||右表达式a++>0的值
  b = !b || (a++ < 0); // 逻辑或||左表达式为真右表达式不执行
  assert(a == 1);
  assert(b == true); // 此处b的值为||左表达式的值
  b = false;
  int c = 0;
  b = b && (c++ > 0); // 逻辑与&&左表达式为假右表达式不执行
  assert(c != 1);
  assert(b == false); // 此处b的值为&&左表达式b的值
  b = !b && (c++ < 0); // 逻辑与&&左表达式为真右表达式将执行
  assert(c == 1);
  assert(b == false); // 此处b的值为&&右表达式(1<0)的值
}
