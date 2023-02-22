/**
 * 算数运算符
 */
void main() {
  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // 结果为 double
  assert(5 ~/ 2 == 2); // 结果为int，除法取整
  assert(5 % 2 == 1); // 求余
  int a, b, c;
  a = 0;
  b = a++; // 将a的值0赋值给b，a再+1
  assert(a != b); // 1 != 0
  c = a++; // 将a的值1赋值给c,a再加1
  assert(++b == c); //  1 == 1
}