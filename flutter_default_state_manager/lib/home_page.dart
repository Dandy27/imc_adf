import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/change_notifier/imc_change_notifier_page.dart';
import 'package:flutter_default_state_manager/setState/imc_setsatate_page.dart';
import 'package:flutter_default_state_manager/value_notifier/value_notifier_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Default State Manager',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _goToPage(context, const ImcSetsatatePage()),
              child: const Text('SetState'),
            ),
            ElevatedButton(
              onPressed: () => _goToPage(context, const ValueNotifierPage()),
              child: const Text('ValueNotifier'),
            ),
            ElevatedButton(
                onPressed: () => _goToPage(context, const ImcChangeNotifierPage()),
                child: const Text('ChangeNotifier')),
            ElevatedButton(
                onPressed: () {}, child: const Text('Bloc Pattern (Streams')),
          ],
        ),
      ),
    );
  }
}
