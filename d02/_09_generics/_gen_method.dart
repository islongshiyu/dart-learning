/**
 * 泛型之泛型方法
 */

void printObj<T>(T obj) {
  //可在方法的参数中使用泛型T
  print(obj);
}

T returnObj<T>(T obj) {
  // 可在方法的返回值使用变量T
  T tmp = obj; // 可在方法的局部变量中使用泛型T
  return tmp;
}

void main(List<String> args) {
  int i = 1;
  printObj(i);
  returnObj(i);
}
