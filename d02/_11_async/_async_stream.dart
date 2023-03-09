/**
 * 异步支持之处理Stream
 */
void main(List<String> args) async {
  var list = [1, 2, 3];

  var stream = Stream.fromIterable(list);
  await for (var e in stream) {
    if (e == 2) {
      print('continue by 2');
      continue;
    }
    if (e == 4) {
      print('return by 4');
      return;
    }
    if (e == 5) {
      print('break by 5');
      break;
    }
    print(e);
  }
}
