/**
 * 按位和位移运算符
 */
void main() {
  final value = 0x22; // 100010
  final bitmask = 0x0f; // 1111
  assert((value & bitmask) == 0x02); // 按位与
  assert((value & ~bitmask) == 0x20); // 先对bitmask取反再按位与
  assert((value | bitmask) == 0x2f); // 按位或
  assert((value ^ bitmask) == 0x2d); // 按位异或
  assert((value << 4) == 0x220); // 左移4位
  assert((value >> 4) == 0x02); // 右移4位
  assert((value >>> 4) == 0x02); // 无符号右移4位
  assert((-value >> 4) == -0x03); // 有移4位
  assert((-value >>> 4) > 0); // 无符号右移4位（Dart 2.14）
}
