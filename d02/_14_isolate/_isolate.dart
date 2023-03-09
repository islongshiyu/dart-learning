/**
 * 隔离区
 */
import 'dart:convert';
import 'dart:isolate';

void main() async {
  final jsonData = await Isolate.run(_readAndParseJson);
  print('Number of JSON keys: ${jsonData.length}');
}

Future<List<dynamic>> _readAndParseJson() async {
  final jsonData = jsonDecode('''[{
      "name": "张三",
      "age": 13
      },
      {
      "name": "李四",
      "age": 21
      },
      {
      "name": "王五",
      "age": 77
      }
      ]''') as List<dynamic>;
  return jsonData;
}
