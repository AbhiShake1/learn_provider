import 'package:flutter/material.dart';
import 'package:learn_provider/widgets/navigation.dart';
import 'package:learn_provider/riverpod.dart';
import '../providers/counter_state_provider.dart';

class StateNotifierPage extends StatelessWidget {
  const StateNotifierPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Consumer(
              builder: (context, ref, child) => Text(
                  'With state notifier: ${ref.watch(counterStateProvider)}'),
            ),
            navigationButtons(context)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            context.read(counterStateProvider.notifier).increment(),
        label: const Text('+'),
      ),
    );
  }
}
