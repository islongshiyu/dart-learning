/**
 * 类之方法
 */
class Person {
  /**
   * 类中每个非final属性都有隐式的Getter和Setter方法，final属性无Setter方法。
   */
  final int age;
  final String name;
  String? address;

  Person(this.age, this.name);

  /**
   * 类中可以定义实例方法（对象方法）。
   */
  void drink(String something) {
    print('人喝$something');
  }

  /**
   * 可以使用operator关键字定义方法进行操作符重写。
   */
  Person operator +(Person p) => Person(this.age + p.age, this.name);

  @override
  String toString() {
    return '{age: $age, name: $name, address: $address}';
  }
}

void main() {
  var stu1 = Person(17, '张三');
  stu1.drink('水'); // 人喝水
  var stu2 = Person(20, '李四');
  stu1.address = '家里蹲'; // 调用Setter方法
  //stu1.age=100;// 'age' can't be used as a setter because it's final.
  print(stu1.name); // 调用Getter
  print(stu1 + stu2); // {age: 37, name: 张三, address: null}
}
