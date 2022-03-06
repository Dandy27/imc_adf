import 'dart:async';

Future<void> main() async {
  print('inicio');
  const interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callBack);

  stream = stream.take(5);

  final data = await stream.toList();
  print(data);

  print('fim');
}

int callBack(int value) {
  print('Callback o valor que chegou é -> $value');
  return (value + 1) * 2;
}
