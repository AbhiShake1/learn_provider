import 'package:flutter/material.dart';
import 'package:learn_provider/commons/routes.dart';
import 'package:learn_provider/modules/bottom_navigation_bar/providers/bottom_navigation_provider.dart';

import '../../../riverpod.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) => NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: ref.watch(bottomNavigationIndexProvider),
        onDestinationSelected: (value) {
          Navigator.of(context).pushReplacementNamed(routes[
              ref.read(bottomNavigationIndexProvider.notifier).index = value]);
        },
        destinations: [
          NavigationDestination(
            icon: child!,
            label: 'Change Notifier',
          ),
          NavigationDestination(
            icon: child,
            label: 'State Notifier',
          ),
          NavigationDestination(
            icon: child,
            label: 'Future',
          ),
          NavigationDestination(
            icon: child,
            label: 'Stream',
          ),
        ],
      ),
      child: const Icon(Icons.padding),
    );
  }
}
