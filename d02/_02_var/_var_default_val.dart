/**
 * 变量默认值
 */
void main() {
  /**
   * 声明变量时在类型后面加上?代表是可空类型的变量。
   * 可空类型变量未初始化时的默认值为null。
   */
  int? var1;
  print(var1); // null
  /**
   * 变量不需要在声明式就立即初始化，只需要在第一次使用前初始化即可。
   */
  int var2;
  if (var1 != null) {
    var2 = 4;
    print(var2); // 4
  }
  /**
   * 变量未初始化且不为可空类型时代码将无法正常运行。
   */
  int var3;
  //print(var3);// Error: Non-nullable variable 'var3' must be assigned before it can be used.
}
