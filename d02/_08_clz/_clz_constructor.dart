/**
 * 类之构造函数
 */
class Address {
  String? country;
  String? province;
  String? city;
  String? street;

  /**
   * 可以给构造函数命名来创建命名式构造函数。
   */
  Address.create(
      {String? country, String? province, String? city, String? street}) {
    /**
     * 使用this关键字引用当前对象实例来避免命名冲突，无命名冲突时Dart会忽略this。
     */
    this.country = country == null ? '中国' : country;
    this.province = province == null ? '四川' : province;
    this.city = city == null ? '成都' : city;
    this.street = street == null ? '天府大道' : street;
  }

  /**
   * 可以采用声明的方式创建未命名构造函数。
   */
  Address(this.country, this.province, this.city,
      this.street); // Dart特有的简化构造函数声明语法糖

  @override
  String toString() {
    return 'Address{country: $country, province: $province, city: $city, street: $street}';
  }
}

/**
 * 如果没有声明构造函数将默认自动生成一个无参构造函数。
 */
class None {}

class Coordinate {
  final double lon;
  final double lat;

  /**
   * 通过构造函数传递的参数默认是final，只能在初始化时使用。
   */
  Coordinate(this.lon, this.lat);
}

class Person {
  String? name;

  Person() {
    print('人');
  }

  /**
   * 命名构造函数无法被继承。
   */
  Person.fromName(this.name);
}

class Student extends Person {
  Student(int id) {
    print('$id');
    print('学生');
  }
}

class Animal {
  String? name;

  Animal.fromName(this.name);
}

class Dog extends Animal {
  /**
   * 当父类没有匿名无参构造函数时，子类必须指定调用父类的一个构造函数。
   */
  Dog.fromName(super.name) : super.fromName();
}

class Vector2d {
  final double x;
  final double y;

  Vector2d(this.x, this.y);

  Vector2d.named({required this.x, required this.y});
}

class Vector3d extends Vector2d {
  final double z;

  /**
   * 当父类的构造函数参数为可选参数式，子类继承时不能再使用可选参数的写法，而是通过指定参数名来传参。
   */
  Vector3d.name({required double y, required this.z}) : super.named(x: 0, y: y);

  /**
   * 可以直接在子类的构造函数中使用父类的构造函数参数。
   */
  Vector3d(super.x, super.y, this.z);
//Vector3d(final double x, final double y, this.z) : super(x, y);// 上面一行的简写
}

class Planet {
  Planet() {
    print('星球');
  }
}

class Earth extends Planet {
  int r;
  int d;
  int? age;

  static int st(int number) {
    print('传递的整型参数值为$number');
    return number;
  }

  /**
   * 构造函数可以指定初始化列表，执行顺序邮优先级为初始化参数列>父类的无参构造函数>当前构造函数。
   */
  Earth.unnamed(this.age, this.d)
      : r = Earth.st(1),
        // 参数不能同时出现在构造参数和初始化列表中
        assert(d == 2) // 可以在构造函数中使用assert来验证数据
  {
    print('地球');
  }

  Earth(this.r, this.d);

  /**
   * 构造函数可以重定向至类中的其他构造函数。
   */
  Earth.fromR(int r) : this(r, 0);

  static final Map<int, Earth> _cache = {};

  /**
   * 使用factory关键字将构造函数定义为工厂构造函数，工厂构造函数每次并非返回相同的实例（自行实现）。
   */
  factory Earth.fact0() {
    return _cache.putIfAbsent(0, () => Earth(0, 0));
  }

  factory Earth.fact1() {
    //this.d;// Invalid reference to 'this' expression. 工厂构造函数中无法使用this
    return _cache.putIfAbsent(1, () => Earth(1, 1));
  }
}

class Immutable {
  final double x, y;
  static const Immutable origin = Immutable(0, 0);

  /**
   * 如果生成的对象时不变的，可以使用常量构造函数。
   */
  const Immutable(this.x, this.y);
}

void main() {
  var address = Address.create(
      country: '河北', city: '石家庄', province: '李家屯', street: '家里蹲');
  print(address); // Address{country: 河北, province: 李家屯, city: 石家庄, street: 家里蹲}
  address = new Address(null, null, null, null);
  print(
      address); // Address{country: null, province: null, city: null, street: null}
  var none = None(); // 使用默认的无参构造函数
  var coordinate = new Coordinate(3.11, 124.5);
  //coordinate.lat = 100;// 'lat' can't be used as a setter because it's final
  /**
   * 默认情况下子类构造函数会调用父类的无参构造函数。
   */
  var student = Student(1); // 按顺序输出 人 1 学生
  var earth1 = new Earth.unnamed(500, 2); // 按顺序输出 传递的整型参数值为1 星球 地球
  var e0 = Earth.fact0(); // 工厂构造函数调用方式与普通构造函数调用方式一致
  var e11 = Earth.fact1();
  var e12 = Earth.fact1();
  assert(e0 != e11); // true
  assert(e11 == e12); // true
  var immutable = Immutable(0, 0);
  //immutable.x=1;// 'x' can't be used as a setter because it's final.
}
