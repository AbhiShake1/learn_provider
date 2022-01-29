import 'package:flutter/material.dart';
import 'package:learn_provider/commons/routes.dart';
import 'package:learn_provider/modules/bottom_navigation_bar/providers/bottom_navigation_provider.dart';

import '../../../riverpod.dart';

class MyBottomNavigationBar extends ConsumerWidget {
  MyBottomNavigationBar({Key? key}) : super(key: key);

  final routes = [
    changeNotifierPageRoute,
    stateNotifierPageRoute,
    futurePageRoute,
    streamPageRoute,
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NavigationBar(
      selectedIndex: ref.watch(bottomNavigationIndexProvider),
      onDestinationSelected: (value) {
        ref.read(bottomNavigationIndexProvider.notifier).index = value;
        Navigator.of(context).pushReplacementNamed(routes[value]);
      },
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.padding),
          label: 'Change Notifier',
        ),
        NavigationDestination(
          icon: Icon(Icons.padding),
          label: 'State Notifier',
        ),
        NavigationDestination(
          icon: Icon(Icons.padding),
          label: 'Future',
        ),
        NavigationDestination(
          icon: Icon(Icons.padding),
          label: 'Stream',
        ),
      ],
    );
  }
}
