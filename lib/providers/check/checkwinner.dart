// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:tic_tac_toe/providers/keyprovider.dart';
import 'package:tic_tac_toe/providers/timer/timerProvider.dart';

part 'checkwinner.g.dart';

@riverpod
class CheckWinner extends _$CheckWinner {
  @override
  Winner build() {
    return Winner(player: '', pos: []);
  }

  void check() {
    List keysList = ref.watch(keysProvider);
    if (keysList[0] == keysList[1] && keysList[0] == keysList[2] && keysList[0] != '') {
      ref.read(timerConditionProvider.notifier).reset();
      ref.read(gameTimeProvider.notifier).stopTimer();
      state = Winner(player: keysList[0], pos: [0, 1, 2], isWinnerFound: true);
    }
    if (keysList[3] == keysList[4] && keysList[3] == keysList[5] && keysList[3] != '') {
      ref.read(timerConditionProvider.notifier).reset();
      ref.read(gameTimeProvider.notifier).stopTimer();
      state = Winner(player: keysList[3], pos: [3, 4, 5], isWinnerFound: true);
    }
    if (keysList[6] == keysList[7] && keysList[6] == keysList[8] && keysList[6] != '') {
      ref.read(timerConditionProvider.notifier).reset();
      ref.read(gameTimeProvider.notifier).stopTimer();
      state = Winner(player: keysList[6], pos: [6, 7, 8], isWinnerFound: true);
    }
    if (keysList[0] == keysList[3] && keysList[0] == keysList[6] && keysList[0] != '') {
      ref.read(timerConditionProvider.notifier).reset();
      ref.read(gameTimeProvider.notifier).stopTimer();
      state = Winner(player: keysList[0], pos: [0, 3, 6], isWinnerFound: true);
    }
    if (keysList[1] == keysList[4] && keysList[1] == keysList[7] && keysList[1] != '') {
      ref.read(timerConditionProvider.notifier).reset();
      ref.read(gameTimeProvider.notifier).stopTimer();
      state = Winner(player: keysList[1], pos: [1, 4, 7], isWinnerFound: true);
    }
    if (keysList[2] == keysList[5] && keysList[2] == keysList[8] && keysList[2] != '') {
      ref.read(timerConditionProvider.notifier).reset();
      ref.read(gameTimeProvider.notifier).stopTimer();
      state = Winner(player: keysList[2], pos: [2, 5, 8], isWinnerFound: true);
    }
    if (keysList[0] == keysList[4] && keysList[0] == keysList[8] && keysList[0] != '') {
      ref.read(timerConditionProvider.notifier).reset();
      ref.read(gameTimeProvider.notifier).stopTimer();
      state = Winner(player: keysList[0], pos: [0, 4, 8], isWinnerFound: true);
    }
    if (keysList[2] == keysList[4] && keysList[2] == keysList[6] && keysList[2] != '') {
      ref.read(timerConditionProvider.notifier).reset();
      ref.read(gameTimeProvider.notifier).stopTimer();
      state = Winner(player: keysList[2], pos: [2, 4, 6], isWinnerFound: true);
    }
    if (ref.watch(gameTimeProvider) <= 0) {
      ref.read(timerConditionProvider.notifier).reset();
      ref.read(gameTimeProvider.notifier).stopTimer();
      state = Winner(player: ref.watch(xturnProvider) ? 'O' : 'X', pos: [], isWinnerFound: true);
    }
  }

  void reset() {
    state = Winner(player: '', pos: [], isWinnerFound: false);
  }
}

class Winner {
  String player;
  List<int> pos;
  bool isWinnerFound;
  Winner({
    required this.player,
    required this.pos,
    this.isWinnerFound = false,
  });
}
