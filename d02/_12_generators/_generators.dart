/**
 * 生成器
 */
void main(List<String> args) {
  print(naturalsTo(6)); // (0, 1, 2, 3, 4, 5)
  var i = asynchronousNaturalsTo(6);
  print(i); // Instance of '_ControllerStream<int>'
  i.forEach((element) {
    print(element);
  }); // 0 1 2 3 4 5
}

/**
 * 使用sync*定义同步生成器，返回的是Iterable对象。
 */
Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

/**
 * 使用async*定义异步生成器，返回的是Stream对象。
 */
Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n; // yield返回生成的值但不会退出函数
    yield* naturalsDownFrom(n - 1); // 生成器递归时使用yield*提升性能
  }
}
