/**
 * 条件表达式
 */
void main() {
  var v = 1;
  var x = v > 0 ? --v : ++v; // 三目运算
  assert(x == 0);
  var y = null ?? v--; // expr1 ?? expr2 左表达式非空则返回其值，反之执行右表达式并返回
  assert(y == 0 && v == -1);
}
