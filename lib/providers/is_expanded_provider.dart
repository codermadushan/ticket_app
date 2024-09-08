import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_expanded_provider.g.dart';

@riverpod
class IsExpanded extends _$IsExpanded {
  @override
  bool build() {
    return false;
  }

  void toggleValue() {
    state = !state;
  }
}
