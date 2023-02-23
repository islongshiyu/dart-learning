/**
 * 流程控制语句之switch和case
 */
void main() {
  /**
   * case后跟了语句必须以break，continue label，return，throw
   */
  var cmd = 'OPEN';
  switch (cmd) {
    case 'CLOSED':
      print('CLOSED');
      return;
    case 'PENDING':
      print('PENDING');
      break;
    case 'APPROVED':
      print('APPROVED');
      break;
    case 'DENIED':
      throw Error;
    /**
   * case后为空不跟语句时将执行下一行语句
   */
    case 'OPEN': // 允许空case
    default: // 不匹配任何case时执行default
      print('NONE');
      break;
  } // NONE
  var letter = 'a';
  switch (letter) {
    case 'a':
      print('a');
      continue b_label; // 使用continue和label来实现空case的效果
    b_label:
    case 'b':
      print('b');
      break;
    default:
      int i = 0; // 每个case可以有局部变量
    // default可省略break
  } // a b
}
