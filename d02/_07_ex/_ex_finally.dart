/**
 * 异常之finally
 */
void main() {
  /**
   * finally语句会在任何匹配的catch语句后执行。
   */
  try {
    double d = 1 as double;
  } catch (e, s) {
    print('$e $s');
  } finally {
    print('清理操作1！');
  }
  /**
   * 无论是否抛出异常最后都会执行finally，如果没有指定catch捕获异常，将会在finally执行完毕后抛出异常。
   */
  try {
    int i = 1.0 as int;
  } finally {
    print('清理操作2！');
  }

  // 完整输出如下：
  // type 'int' is not a subtype of type 'double' in type cast #0      main (file:///C:/Users/islon/Projects/1/dart-learning/d02/_07_ex/_ex_finally.dart:9:18)
  // #1      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:297:19)
  // #2      _RawReceivePort._handleMessage (dart:isolate-patch/isolate_patch.dart:192:26)
  //
  // 清理操作1！
  // 清理操作2！
  // Unhandled exception:
  // type 'double' is not a subtype of type 'int' in type cast
}
