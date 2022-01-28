import 'package:flutter/material.dart';
import 'package:learn_provider/modules/change_notifier/view/change_notifier_page.dart';
import 'package:learn_provider/modules/state_notifier/view/state_notifier_page.dart';

const String changeNotifierPageRoute = '/changenotifier';
const String stateNotifierPageRoute = '/statenotifier';

Route onGenerateRoute(RouteSettings settings) {
  return MaterialPageRoute(
    settings: settings,
    builder: (context) {
      switch (settings.name) {
        case changeNotifierPageRoute:
          return const ChangeNotifierPage();
        case '/':
        case stateNotifierPageRoute:
        default:
          return const StateNotifierPage();
      }
    },
  );
}
