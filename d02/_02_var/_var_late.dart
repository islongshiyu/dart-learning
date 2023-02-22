/**
 * 变量延迟初始化
 */
//String str; // Error: Field 'str' should be initialized because its type 'String' doesn't allow null.
late String str1;
late String str2;

Object returnObj(var obj) {
  print('before return obj');
  return obj;
}

void main() {
  /**
   * 在语义分析时顶级变量和成员变量无法正确判断它们是否已被初始化（就算在调用前已初始化运行时也会抛出异常）。
   */
  //str = 'sunny';
  //print(str);
  /**
   * 使用late关键字延迟初始化变量避免语义分析无法正确判断顶级变量和成员变量是否初始化的问题。
   */
  str1 = '<body>Hello World!</body>';
  print(str1); // <body>Hello World!</body>
  /**
   * 使用late关键修饰的变量在调用前也必须初始化。
   */
  //print(str2);// LateInitializationError: Field 'str2' has not been initialized.
  /**
   * late关键字修饰的变量若有初始化方法，该初始化方法的调用时机是该变量首次被调用时。
   *   当声明时指定了初始化方法的变量可能不会被使用时或调用初始化方法将产生较大的代价时可以使用`late`提升效率。
   *   当初始化一个实例变量时它的初始化方法需要调用`this`可以使用`late`提升效率。
   * 下面代码输出：
   * 0
   * before return obj
   * 1
   */
  print(0);
  late var obj = returnObj(1);
  print(obj);
}
