import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension RiverpodExtensions on BuildContext {
  T read<T>(ProviderBase<T> provider) =>
      ProviderScope.containerOf(this, listen: false).read(provider);

  T refresh<T>(ProviderBase<T> provider) =>
      ProviderScope.containerOf(this, listen: false).refresh(provider);
}
