import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_provider/modules/change_notifier/view/change_notifier_page.dart';
import 'package:learn_provider/modules/state_notifier/view/state_notifier_page.dart';

const String changeNotifierPageRoute = '/changenotifier';
const String stateNotifierPageRoute = '/statenotifier';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case changeNotifierPageRoute:
      return MaterialPageRoute(
        builder: (context) => const ProviderScope(
          child: ChangeNotifierPage(),
        ),
      );
    case '/':
    case '/statenotifier':
    default:
      return MaterialPageRoute(
        builder: (context) => const ProviderScope(
          child: StateNotifierPage(),
        ),
      );
  }
}
