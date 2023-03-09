/**
 * 类型定义
 */
typedef IntList = List<int>;
typedef ListMapper<X> = Map<X, List<X>>; // 类型定义可以使用泛型
typedef Compare<T> = int Function(T a, T b);

int sort(int a, int b) => a - b;

void main() {
  IntList il = [1, 2, 3];
  Map<String, List<String>> m1 = {}; // Verbose.
  ListMapper<String> m2 = {}; // 使用类型定义简化

  //typedef IntList = List<int>;// Undefined name 'typedef'. typedef关键字不能在方法中使用

  assert(sort is Compare<int>); // 对于函数则推荐使用内联函数类型替代typedefs
}
