/**
 * 内置类型Booleans
 */
void main() {
  String fullName = '';
  assert(fullName.isEmpty); // 空字符串检查

  int n1 = 0;
  assert(n1 <= 0);

  var unicorn;
  assert(null == unicorn);

  var nan = 0 / 0;
  assert(nan.isNaN);
}
