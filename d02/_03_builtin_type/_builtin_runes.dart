import 'package:characters/characters.dart';

/**
 * åç½®ç±»åRunes
 */
void main() {
  var hi = 'Hi ð©ð°';

  print(hi); // Hi ð©ð°

  print(hi.length); // 7

  print(hi.runes); // (72, 105, 32, 127465, 127472) åè¿å¶ç
  print(hi.runes.length); // 5
  print(hi.runes.toList()); // [72, 105, 32, 127465, 127472]

  print(hi.codeUnits); // [72, 105, 32, 55356, 56809, 55356, 56816]
  print(hi.codeUnits.length); // 7
  print(hi.codeUnits.toList()); // [72, 105, 32, 55356, 56809, 55356, 56816]

  for (final i in hi.codeUnits) {
    print(i.toRadixString(16)); // 48 69 20 d83c dde9 d83c ddf0
  }

  var last = hi.substring(hi.length - 1); // æªåæåä¸ä½

  print(last);// ä¹±ç ï¼æ æ³æ­£å¸¸è¾åº

  assert(last.codeUnitAt(0) == 56816);

  print(hi.characters.toList());// [H, i,  , ð©ð°]

  print('\u2665');// â¥
  print('\u{1f600}');// ð
}
