/**
 * 函数是一级对象
 */
void sayHello(String str) {
  print('say: $str');
}

void main() {
  List<String> strings = ['Ann', 'Joe', 'Due'];
  /**
   * 函数可以作为参数传递给另一个函数
   */
  strings.forEach(sayHello);
  // say: Ann
  // say: Joe
  // say: Due
}
