import 'dart:mirrors';

/**
 * 内置类型Symbols
 */
void main() {
  /**
   * Symbol 字面量是编译时常量。
   */
  const s = #dart.mirrors; // 在标识符前加`#`前缀来获取 Symbol
  var name = MirrorSystem.getName(s);
  print('$s $name'); // Symbol("dart.mirrors") dart.mirrors
}
