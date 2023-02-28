/**
 * 类之枚举
 */
enum Color { red, green, blue }

enum Vehicle implements Comparable<Vehicle> {
  // 枚举实例都需要先进行声明再使用，至少声明一个枚举实例
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  // 增强型枚举自动继承了Enum，因此不能再继承其他类
  const Vehicle({
    // 增强型枚举实例的的所有实例化构造必须以const修饰
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires; // 增强型枚举实例的字段必须是final包括由mixin混入的字段
  final int passengers;
  final int carbonPerKilometer;

  //final int? values;// A member named 'values' can't be declared in an enum.

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  @override
  int compareTo(Vehicle other) => carbonFootprint - other.carbonFootprint;

  factory Vehicle.enum_car() {
    return Vehicle.car; //工厂构造只能返回已知的一个枚举实例。
  }

  // 增强型枚举实例不能重写Enum类中的方法。
  //@override
  //int index(){} //A concrete instance member named 'index' can't be declared in a class that implements 'Enum'.
}

void main() {
  print(Vehicle.enum_car()); // Vehicle.car
  print(Vehicle.car); // Vehicle.car
  print(Vehicle.bicycle.tires); // 调用枚举属性 2
  print(Vehicle.bicycle.name); // 获取枚举的名称 bicycle
  /**
   * 枚举实例默认有一个字段名为index的Getter方法，索引值取自类中定义时的顺序并从0开始。
   */
  assert(0 == Vehicle.enum_car().index);
  assert(2 == Vehicle.bicycle.index);
  print(Vehicle
      .values); // 使用values方法获取所有枚举的列表 [Vehicle.car, Vehicle.bus, Vehicle.bicycle]
  var color = Color.blue;
  /**
   * 在switch中使用枚举，必须处理枚举的每一种情况，不然将会出现警告。
   */
  switch (color) {
    case Color.red:
      print('红');
      break;
    case Color.green:
      print('绿');
      break;
    default: // Without this, you see a WARNING.
      print(color); // 输出 Color.blue
  }
}
