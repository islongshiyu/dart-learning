/**
 * 内置类型Strings
 */
void main() {
  var s1 = '使用单引号创建字符串字面量。';
  var s2 = "双引号也可以用于创建字符串字面量。";
  var s3 = '使用单引号创建字符串时可以使用斜杠来转义那些与单引号冲突的字符串：\'。';
  var s4 = "而在双引号中则不需要使用转义与单引号冲突的字符串：'";
  /**
   * 使用${expression}将值插入到字符串中，即字符串插值。
   */
  var s = '字符串插值';
  assert('Dart 有$s，使用起来非常方便。' ==
      'Dart 有字符串插值，使用起来非常方便。'); // ==运算符用于测试两个表达式是否相等；如果两个字符串包含一样的字符编码序列，则表示他们是等同的。
  assert('使用${s.substring(3, 5)}表达式也非常方便。' == '使用插值表达式也非常方便。');
  /**
   * 使用+运算符来拼或并列放置多个字符串来拼接字符串。
   */
  var str1 = '使用加号 + 运算符' + '也可以达到相同的效果。';
  var str2 = '可以拼接'
      '字符串'
      "即便它们不在同一行。";
  assert(str1 == '使用加号 + 运算符也可以达到相同的效果。');
  assert(str2 == '可以拼接字符串即便它们不在同一行。');
  /**
   * 使用三个单引号'或三个双引号"前后包括字符串来创建多行字符串。
   */
  String ms1 = '''
你可以像这样创
建多行字符串。
  ''';
  print(ms1);
  String ms2 = """这也是一个多行字符串。""";
  /**
   * 使用前缀r创建“raw”字符串（即不会被做任何处理的字符串，比如：转义字符）。
   */
  var raw = r'在 raw 字符串中，转义字符串 \n 会直接输出 “\n” 而不是转义为换行。';
  print(raw); // 在 raw 字符串中，转义字符串 \n 会直接输出 “\n” 而不是转义为换行。
  /**
   * const字符串插值只能使用编译时常量，比如：null、num、String、bool。
   */
  const c1 = 0;
  const c2 = true;
  const c3 = '一个字符串常量';
  const str = '$c1 $c2 $c3';
  print(str);
  var v1 = 0; // var类型不是编译时常量不能作为const字符串插值
  var v2 = true; // var类型不是编译时常量不能作为const字符串插值
  var v3 = '一个字符串'; // var类型不是编译时常量不能作为const字符串插值
  const list = [1, 2, 3]; // list类型不是编译时常量不能作为const字符串插值
  //const err = '$v1 $v2 $v3 $list'; // Error: Not a constant expression.
  String correct = '$v1 $v2 $v3 $list';
  print(correct); // 0 true 一个字符串常量
}
