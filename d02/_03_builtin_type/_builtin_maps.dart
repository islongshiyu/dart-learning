/**
 * 内置类型Maps
 */
void main() {
  var m1 = {'一': '苹果', '二': '梨子', '三': '香蕉'}; // 使用字面量创建Map
  var m2 = {
    '一': '苹果',
    '二': '香蕉', // 多余的逗号不会报错
  };
  assert(m2.length == 2);
  m2['零'] = '梨子'; // 添加
  assert(m2.length == 3);
  m2['二'] = '葡萄'; // 修改
  assert(m2['二'] == '葡萄'); // 查询
  m2.remove('零'); // 删除
  assert(m2.length == 2);
  print(m2); //{一: 苹果, 二: 葡萄}
  var m3 = new Map<String, String>(); // 使用构造函数创建Map
  var m4 = Map(); // new关键字是可选的
  final map = const {1: 1, 2: 2}; // 使用const创建Map编译时常量
  map[2] = 3; // Unsupported operation: Cannot modify unmodifiable map
}
