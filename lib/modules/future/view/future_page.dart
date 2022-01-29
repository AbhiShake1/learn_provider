import 'package:flutter/material.dart';
import 'package:learn_provider/riverpod.dart';
import 'package:learn_provider/widgets/navigation.dart';
import '../providers/future_int_provider.dart';

class FuturePage extends StatelessWidget {
  const FuturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Consumer(
              builder: (context, ref, child) =>
                  ref.watch(futureProvider).maybeWhen(
                        data: (data) => Text(data.toString()),
                        orElse: () => const CircularProgressIndicator(),
                      ),
            ),
            navigationButtons(context)
          ],
        ),
      ),
    );
  }
}
