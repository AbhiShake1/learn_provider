import 'package:flutter/material.dart';
import 'package:learn_provider/widgets/navigation.dart';
import 'package:learn_provider/riverpod.dart';
import '../providers/counter_change_provider.dart';

class ChangeNotifierPage extends StatelessWidget {
  const ChangeNotifierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Consumer(
              builder: (context, ref, child) => Text(
                  'With Change Notifier: ${ref.watch(counterChangeProvider).counter}'),
            ),
            navigationButtons(context)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.read(counterChangeProvider).increment(),
        label: const Text('+'),
      ),
    );
  }
}
