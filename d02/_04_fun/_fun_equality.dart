/**
 * 函数之相等性
 */
void foo() {} // 顶级函数

class C {
  // 静态函数
  static void fn() {}

  // 实例函数
  void bar() {}
}

void main() {
  Function x = foo;
  assert(x == foo);
  x = C.fn;
  assert(x == C.fn);
  var c1 = C(); // C类实例1
  var c2 = C(); // C类实例2
  var c3 = c2;
  x = c2.bar;
  assert(x == c3.bar); // 两个闭包变量指向的是同一个对象的函数两者相等
  assert(c1.bar != c2.bar); // 两个闭包变量指向的不是同一个对象的函数二者不相等
}
