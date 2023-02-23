/**
 * 流程控制语句之if-else
 */
void main() {
  var v = 1;
  if (v > 1) {
    print('$v > 1');
  } else if (v < 1) {
    print('$v < 1');
  } else {
    print('$v = 1'); // 1 = 1
  }
  var x = 0;
  if (x == 0) {
    print('$x = 0');
  } // else是可选的
}
