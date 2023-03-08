/**
 * 泛型之限制参数化类型
 */

/**
 * 限制子类继承Object类（而非默认的Object?）是有效的非空类型处理方式。
 */
class Animal<T extends Object> {}

class Pet<T extends Animal> {
  String bark() => 'AAA...';
}

class Cat extends Animal {}

class Foo {}

void main(List<String> args) {
  /**
   * 通过extends来限制泛型参数的范围（必须是指定类型或其子类）。
   */
  var pet = Pet<Animal>();
  var cat = Pet<Cat>();

  var p = Pet();
  /**
   * 通过extends限制泛型参数的范围但调用时不指定类型，此时的泛型类型为extends后定义的类型。
   */
  print(p is Pet<Animal>); // true

  /**
   * 泛型参数不在限制范围类将导致编译错误
   */
  //var p1 = Pet<Foo>(); // 'Foo' doesn't conform to the bound 'Animal<Object>' of the type parameter 'T'.
}
