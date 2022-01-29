import 'package:learn_provider/riverpod.dart';

class _BottomNavigationIndexProvider extends StateNotifier<int> {
  _BottomNavigationIndexProvider() : super(0);
  set index(int newValue) {
    state = newValue; //made unstable intentionally
  }
}

final bottomNavigationIndexProvider =
    StateNotifierProvider<_BottomNavigationIndexProvider, int>(
        (_) => _BottomNavigationIndexProvider());
