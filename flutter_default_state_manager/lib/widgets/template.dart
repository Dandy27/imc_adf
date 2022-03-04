import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';

import '../widgets/imc_gauge.dart';

class ImcSetsatatePage extends StatefulWidget {
  const ImcSetsatatePage({Key? key}) : super(key: key);

  @override
  State<ImcSetsatatePage> createState() => _ImcSetsatatePageState();
}

class _ImcSetsatatePageState extends State<ImcSetsatatePage> {
  final pesoEC = TextEditingController();
  final alturaEC = TextEditingController();
  var imc = 0.0;

  @override
  void dispose() {
    pesoEC.dispose();
    alturaEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImcSetState'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ImcGauge(
                imc: imc,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: pesoEC,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'PESO'),
                inputFormatters: [
                  CurrencyTextInputFormatter(
                      locale: 'pt_BR',
                      symbol: '',
                      decimalDigits: 2,
                      turnOffGrouping: true)
                ],
              ),
              TextFormField(
                controller: alturaEC,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'ALTURA'),
                inputFormatters: [
                  CurrencyTextInputFormatter(
                      locale: 'pt_BR',
                      symbol: '',
                      decimalDigits: 2,
                      turnOffGrouping: true)
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {}, child: const Text('Calcular IMC'))
            ],
          ),
        ),
      ),
    );
  }
}
