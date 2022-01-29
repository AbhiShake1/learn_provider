import 'package:flutter/material.dart';
import 'package:learn_provider/modules/bottom_navigation_bar/view/bottom_navigation_bar.dart';
import 'package:learn_provider/riverpod.dart';

import '../providers/future_int_provider.dart';

class FuturePage extends StatelessWidget {
  const FuturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (context, ref, child) =>
              ref.watch(futureIntProvider).maybeWhen(
                    data: (data) => Text(data.toString()),
                    orElse: () => const CircularProgressIndicator(),
                  ),
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
