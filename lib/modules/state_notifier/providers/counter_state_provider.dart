import 'package:learn_provider/riverpod.dart';

class CounterStateProvider extends StateNotifier<int> {
  CounterStateProvider() : super(0);
  void increment() => state++;
}

final counterStateProvider = StateNotifierProvider<CounterStateProvider, int>(
    (_) => CounterStateProvider());
