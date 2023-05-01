import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'timerProvider.g.dart';

@riverpod
class GameTime extends _$GameTime {
  late Timer _timer;
  @override
  int build() {
    return 5;
  }

  void startTimer() {
    state = 5;
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        state = state - 1;
      },
    );
  }

  void stopTimer() {
    if (_timer.isActive) {
      _timer.cancel();
    }
  }

  void refreshTimer() {
    if (_timer.isActive) {
      state = 5;
    }
  }
}

@riverpod
class TimerCondition extends _$TimerCondition {
  @override
  bool build() {
    return false;
  }

  void startTimer() {
    state = true;
  }

  void reset() {
    state = false;
  }
}
