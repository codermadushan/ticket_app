import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'screen_index_provider.g.dart';

@riverpod
class ScreenIndex extends _$ScreenIndex {
  @override
  int build() {
    return 0;
  }

  void setScreenIndex(int index) {
    state = index;
  }
}
