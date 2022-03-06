import 'dart:async';

Future<void> main() async {
  print('inicio stream  controller');
  final streamController = StreamController<Pessoa>.broadcast();
  // sink entrada de informacão no cano da stream
  final inStream = streamController.sink;
  final outSream = streamController.stream;

  outSream.listen((pessoa) {
    print('Seja bem vindo ${pessoa.nome}');
    
  });

  var numeros = List.generate(10, (index) => index);
  for (var numero in numeros) {
    inStream.add(Pessoa(nome: 'dandy $numero'));
    // await Future.delayed(const Duration(milliseconds: 500));
  }
  print('Fim stream controller');
  await streamController.close();
}

class Pessoa {
  String nome;
  Pessoa({
    required this.nome,
  });
}
