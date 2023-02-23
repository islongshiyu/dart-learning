/**
 * 流程控制语句之break和continue
 */
void main() {
  int i = 10;
  while (true) {
    print(i--);
    if (i < 8) {
      break; // 使用break中断循环
    }
  }
  for (int i = 0; i <= 20;) {
    i++;
    if (i % 2 != 0) {
      continue; // 跳过本次循环进入下一次循环
    }
    print(i);
  }
}
