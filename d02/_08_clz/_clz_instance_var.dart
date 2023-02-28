/**
 * 类之实例变量
 */
class Info {
  /**
   * 所有未初始化的实例变量的值均为null。
   */
  String? name; // 定义实例变量name，初始值为null
  String? phone; // 定义实例变量phone，初始值为null
  String timeZone = 'GMT+8'; // 定义实例变量name，初始值为GMT+8
  /**
   * 实例变量可以为final且只能设置值一次，可以在声明时初始化或通过构造函数初始化。
   */
  final String code = '86';
  final String country;

  Info(this.country); // 通过构造函数给final变量赋值

  /**
   * 如果需要在构造函数调用后才给某个实例变量赋值可以使用late final修饰，但需要注意未初始化的late final变量会有隐式的Setter。
   */
  late final String street;
  late final String city = '北京';
}

void main() {
  /**
   * 所有实例变量均会隐式声明Getter方法，非fina和late final修饰的未初始化的实例变量也会隐式声明一个Setter方法。
   */
  var info = Info('America');
  info.name = 'ppx'; // 调用name的Setter
  assert(info.name == 'ppx'); // 调用name的Getter
  assert(info.phone == null); // 未初始化的实例变量默认值为null
  info.street = '梁家巷';// late final修饰的未初始化的变量有Setter（坑）。
  //info.city = '上海'; // 'city' can't be used as a setter because it's final.// late final修饰的已初始化的变量无Setter（坑）。
}
