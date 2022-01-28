import 'package:learn_provider/riverpod.dart';

class _CounterStateProvider extends StateNotifier<int> {
  _CounterStateProvider() : super(0);
  void increment() => state++;
}

final counterStateProvider =
    StateNotifierProvider((_) => _CounterStateProvider());
