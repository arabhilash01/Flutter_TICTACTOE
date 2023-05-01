import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'keyprovider.g.dart';

@Riverpod(keepAlive: true)
class Keys extends _$Keys {
  @override
  List<String> build() {
    return ['', '', '', '', '', '', '', '', ''];
  }

  void update(int index, String value) {
    state[index] = value;
    state = [...state];
  }

  void reset() {
    state = ['', '', '', '', '', '', '', '', ''];
  }
}

@riverpod
class Xturn extends _$Xturn {
  @override
  bool build() {
    return true;
  }

  void toggle() {
    state = !state;
  }
}

@riverpod
class Turns extends _$Turns {
  @override
  int build() {
    return 0;
  }

  void reset() {
    state = 0;
  }
  void update() {
    state = ++state;
  }
}
