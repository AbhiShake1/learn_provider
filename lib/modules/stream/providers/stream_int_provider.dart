import 'package:learn_provider/riverpod.dart';

class _Stream {
  Stream<int> getStreamInt(int limit) {
    return Stream.periodic(const Duration(seconds: 1), (count) => count)
        .take(limit + 1);
  }
}

final streamIntProvider =
    StreamProvider.autoDispose((_) => _Stream().getStreamInt(10));
