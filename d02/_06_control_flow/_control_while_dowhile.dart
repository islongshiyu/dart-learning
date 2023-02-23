/**
 * 流程控制语句之while和do-while
 */
void main() {
  int i = 10;
  while (i-- > 5) {
    print(i);
  } // while先判断条件再执行循环体 9 8 7 6 5
  print('-----------------');
  int x = 10;
  do {
    print(x);
  } while (x-- > 5); // do-while先执行循环体再判断条件 10 9 8 7 6 5
}
