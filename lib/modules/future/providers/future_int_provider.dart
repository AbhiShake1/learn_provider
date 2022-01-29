import 'package:learn_provider/riverpod.dart';

class _Future {
  Future<int> getDelayedInt(int secs) async {
    return Future.delayed(Duration(seconds: secs)).then((value) => 5);
  }
}

final futureIntProvider = FutureProvider((_) => _Future().getDelayedInt(3));
