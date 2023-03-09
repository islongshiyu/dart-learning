/**
 * 异步支持之声明异步函数
 */
Future<String> getVersion() async => '1.0.0';// 添加async关键字并让其返回一个Future对象
// 函数体不需要使用 Future API Dart会自动创建Future
// 函数没有返回有效值时需要设置其返回类型为Future<void>