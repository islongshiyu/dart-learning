/**
 * 赋值运算符
 */
void main() {
  var a = 0; // 将0赋值给变量a
  var b;
  b ??= a; //如果b为null则将a的值赋值给b，否则保留原值
  assert(b == 0);
  b ??= 1;
  assert(b != 1);
  a *= 3; // a = a * 3
  assert(a == 0); // 0 == 0
  a ~/= 2; // a = a ~/2
  assert(a == 0); // 0 == 0
  a += 1; // a = a + 1
  assert(a == 1); // 1 == 1
}
