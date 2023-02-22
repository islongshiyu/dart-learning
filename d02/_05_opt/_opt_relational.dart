/**
 * 关系运算符
 */
void main() {
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);
  var x, y;
  assert((x == y) == true); // x和y同时为空时返回true
  x = 1;
  assert((x == y) == false); // x和y只有一个为空时返回false
}
