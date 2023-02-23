/**
 * 异常之on-catch-rethrow
 */
void main() {
  try {
    fmt(1);
  } on FormatException {
    // on用于捕获指定异常但不获取该异常
    print('format failed!');
  } on Exception catch (ex) {
    // on catch用于捕获指定异常并获取该异常对象
    print(ex.toString()); // Exception: 只能格式化大于等于八的整型数据！
  } catch (e, s) // 第二个参数为栈追溯信息
  {
    // 不指定异常则捕获所有类型的异常
    print('异常信息:\n $e');
    print('栈追踪:\n $s');
    rethrow; // 可以使用rethrow将捕获的异常再次抛出
  }
}

String fmt(var no) {
  if (!(no is int)) {
    throw new FormatException('只能格式化整型数据！');
  }
  if (no < 8) {
    throw new Exception('只能格式化大于等于八的整型数据！');
  }
  return no.toString();
}
