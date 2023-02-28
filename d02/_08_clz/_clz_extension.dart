/**
 * 类之扩展方法
 */
extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}

void main() {
  print('42'.padLeft(5)); // 调用String类自带的方法
  print('42'.parseInt()); // 调用String类的拓展方法
}
