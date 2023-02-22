/**
 * 函数之闭包
 */
Function adder(int number) {
  return (int i) =>
      i +
      number; // 返回一个加法匿名函数，其变量number作用域在函数adder的大括号内；匿名函数捕获了变量number，无论函数在什么时候返回，都会使用到捕获到的number变量
}

void main() {
  Function adder2 = adder(2); // 创建一个加2的函数，此时number的值为2
  Function adder4 = adder(4); // 创建一个加4的函数，此时number的值为4
  assert(adder2(2) == 4); // 此时i的值为2
  assert(adder4(3) == 7); // 此时i的值为3
}
