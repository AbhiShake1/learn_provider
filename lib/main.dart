import 'package:flutter/material.dart';
import 'package:learn_provider/riverpod.dart';

import 'commons/routes.dart';

main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: onGenerateRoute,
    );
  }
}
