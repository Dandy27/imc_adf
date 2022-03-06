import 'dart:async';

Future<void> main() async {
  print('inicio');
  const interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callBack);

  stream = stream.where((numnero) => numnero % 6 == 0).take(2);

  stream.listen((numero) {
    print('Listen value: $numero');
  });

  print('fim');
}

int callBack(int value) {
  print('Callback o valor que chegou é -> $value');
  return (value + 1) * 2;
}
