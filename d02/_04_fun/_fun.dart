/**
 * 函数之定义
 */
bool isNotNull(var obj) {
  return null != obj;
}

/**
 * 函数简写
 *
 * => expr;是{return expr;}的简写，=>也称为箭头函数。
 * 在=>与;之间的只能是表达式而非语句。
 * 比如：不能将一个if语句放在其中，但可以放条件表达式。
 */
bool isInt(var obj) => obj is int; // 又称箭头函数，当函数体内只包含一个表达式时可以简写
