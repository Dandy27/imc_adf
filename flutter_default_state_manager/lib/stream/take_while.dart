import 'dart:async';

Future<void> main() async {
  print('inicio');
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callBack);

  stream = stream.take(5).skip(2);

  await for (var i in stream) {
    print('O número que chegou no await for é ->  $i');
  }
  print('fim');
}

int callBack(int value) {
  print('O valor é $value + 1 x 2 = ');
  return (value + 1) * 2;
}
