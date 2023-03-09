/**
 * 异步支持之处理Future
 */
void main(List<String> args) async {
  /**
   * 你可以在异步函数中多次使用 await 关键字
   */
   await checkVersion();
  print('In main: version is ${await lookUpVersion()}');
}

Future<String> lookUpVersion() async => '1.0.0';

/**
 * 必须在带有async关键字的异步函数中使用await
 */
Future<void> checkVersion() async {
  /**
   * 使用 try、catch 以及 finally 来处理使用 await 导致的异常
   */
  try {
    var version = await lookUpVersion();
    if (version == '1.0.0') {
      print('base version');
    }
  } catch (e) {
    print(e);
  }
}
