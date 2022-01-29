import 'package:flutter/material.dart';
import 'package:learn_provider/modules/stream/providers/stream_int_provider.dart';
import 'package:learn_provider/widgets/navigation.dart';

import '../../../riverpod.dart';

class StreamPage extends StatelessWidget {
  const StreamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Consumer(
            builder: (context, ref, child) =>
                ref.watch(streamIntProvider).maybeWhen(
                      data: (data) => Text(data.toString()),
                      orElse: () => Container(),
                    ),
          ),
          navigationButtons(context)
        ],
      ),
    );
  }
}
