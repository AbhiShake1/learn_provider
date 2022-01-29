import 'package:flutter/material.dart';
import 'package:learn_provider/modules/bottom_navigation_bar/view/bottom_navigation_bar.dart';
import 'package:learn_provider/modules/stream/providers/stream_int_provider.dart';

import '../../../riverpod.dart';

class StreamPage extends StatelessWidget {
  const StreamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (context, ref, child) =>
              ref.watch(streamIntProvider).maybeWhen(
                    data: (data) => Text(data.toString()),
                    orElse: () => const CircularProgressIndicator(),
                  ),
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
