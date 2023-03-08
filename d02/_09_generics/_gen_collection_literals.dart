/**
 * 泛型之集合字面量
 */
void main(List<String> args) {
  var names = <String>['张三', '李四', '王五', '张三']; // List前加上<Type>
  var uniqueNames = <String>{'张三', '李四', '王五'}; // Set前加上<Type>
  var pages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
    'humans.txt': 'We are people, not machines'
  };// Map前加上<Type,Type>
}
