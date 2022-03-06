import 'dart:async';

Future<void> main() async {
  print('inicio');
  final interval = Duration(seconds: 2);
  final stream = Stream<int>.periodic(interval, callBack);

  await for (var i in stream) {
    if (i > 10) {
      break;
    }
    print(i);
  }
  print('fim');
}

int callBack(int value) {
  print('O valor é $value + 1 x 2 = ');
  return (value + 1) * 2;


}
