/**
 * 库和可见性之使用库
 */

/**
 * 使用import引用指定库。
 */
import 'dart:math'; // dart内置库使用dart:xxxx形式导入
import 'package:characters/characters.dart'; // 第三方库使用package:xxxx形式导入
import './_lib_util.dart'; // 本地库使用文件系统路径形式导入
import '_lib_util.dart' as util; // 使用as关键字指定库前缀来避免不同库的标识符冲突（导入的两个库有同名方法）
import '_lib_util1.dart' show foo1; // 使用show导入库的部分代码
import '_lib_util2.dart' hide foo2; // 使用hide隐藏库的部分代码
import '_lib_util4.dart' deferred as u; // 使用 deferred as 关键字来标识需要延时加载的代码库

void main(List<String> args) {
  displayStr('str'); // 调用本地库
  util.displayStr('str'); // 使用库前缀调用本地库
  bar4();
}

void bar4() async {
  await u.loadLibrary(); // 调用延迟加载的库是需要先调用loadLibrary加载库且只能在异步方法中使用
  u.bar4();
}
