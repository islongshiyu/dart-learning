import 'package:characters/characters.dart';

/**
 * 内置类型Runes
 */
void main() {
  var hi = 'Hi 🇩🇰';

  print(hi); // Hi 🇩🇰

  print(hi.length); // 7

  print(hi.runes); // (72, 105, 32, 127465, 127472) 十进制的
  print(hi.runes.length); // 5
  print(hi.runes.toList()); // [72, 105, 32, 127465, 127472]

  print(hi.codeUnits); // [72, 105, 32, 55356, 56809, 55356, 56816]
  print(hi.codeUnits.length); // 7
  print(hi.codeUnits.toList()); // [72, 105, 32, 55356, 56809, 55356, 56816]

  for (final i in hi.codeUnits) {
    print(i.toRadixString(16)); // 48 69 20 d83c dde9 d83c ddf0
  }

  var last = hi.substring(hi.length - 1); // 截取最后一位

  print(last);// 乱码，无法正常输出

  assert(last.codeUnitAt(0) == 56816);

  print(hi.characters.toList());// [H, i,  , 🇩🇰]

  print('\u2665');// ♥
  print('\u{1f600}');// 😀
}
