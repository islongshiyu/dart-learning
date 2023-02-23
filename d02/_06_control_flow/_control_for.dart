/**
 * 流程控制语句之for
 */

void main() {
  List<int> arr = [1, 2, 3];
  for (int i = 0; i < arr.length; i++) {
    print(arr[i]);
  } // 标准for循环
  for (var val in arr) {
    print(val);
  } // for in
  List<Function> callbacks = [];
  for (int i = 0; i < 2; i++) {
    callbacks.add(({int no = 5}) => no + i);
  }
  for (int i = 0; i < callbacks.length; i++) {
    Function fun = callbacks[i];
    int no = fun();
    print(no);
  }
  callbacks.forEach((c) {
    int no = c();
    print(no);
  }); // 可迭代对象可以使用forEach
}
