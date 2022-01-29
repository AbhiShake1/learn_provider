import 'package:flutter/material.dart';
import 'package:learn_provider/modules/change_notifier/view/change_notifier_page.dart';
import 'package:learn_provider/modules/future/view/future_page.dart';
import 'package:learn_provider/modules/state_notifier/view/state_notifier_page.dart';
import 'package:learn_provider/modules/stream/view/stream_page.dart';

const String changeNotifierPageRoute = '/changenotifier';
const String stateNotifierPageRoute = '/statenotifier';
const String futurePageRoute = '/future';
const String streamPageRoute = '/stream';

Route onGenerateRoute(RouteSettings settings) {
  return MaterialPageRoute(
    settings: settings,
    builder: (context) {
      switch (settings.name) {
        case streamPageRoute:
          return const StreamPage();
        case futurePageRoute:
          return const FuturePage();
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
