import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'score_provider.g.dart';

@riverpod
class Xscore extends _$Xscore {
  @override
  int build() {
    return 0;
  }

  void update() {
    state = ++state;
  }
  void reset() {
    state = 0;
  }
}

@riverpod
class Oscore extends _$Oscore {
  @override
  int build() {
    return 0;
  }

  void update() {
    state = ++state;
  }
  
  void reset() {
    state = 0;
  }
}
