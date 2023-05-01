import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/announce.dart';
import 'package:tic_tac_toe/providers/check/checkwinner.dart';
import 'package:tic_tac_toe/providers/keyprovider.dart';
import 'package:tic_tac_toe/providers/score/score_provider.dart';
import 'package:tic_tac_toe/providers/timer/timerProvider.dart';

class BottomSection extends ConsumerWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timer = ref.watch(gameTimeProvider);
    final turns = ref.watch(turnsProvider);
    final winner = ref.watch(checkWinnerProvider);
    final isXturn = ref.watch(xturnProvider);
    final runTimer = ref.watch(timerConditionProvider);
    bool noWin = winner.isWinnerFound == false && turns == 9;
    if (noWin) {
      Future.delayed(Duration.zero, () {
        ref.read(timerConditionProvider.notifier).reset();
        ref.read(gameTimeProvider.notifier).stopTimer();
      });
    }
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          if (winner.isWinnerFound == false && !noWin)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(isXturn ? 'X to play' : 'O to play '),
            ),
          if (noWin)
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Nobody Wins', style: TextStyle(fontSize: 30)),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              winner.isWinnerFound ? '${winner.player} Wins' : '',
              style: const TextStyle(fontSize: 30),
            ),
          ),
          runTimer
              ? Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(
                        value: timer / 5,
                      ),
                    ),
                    Text(
                      timer.toString(),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ],
                )
              : ElevatedButton(
                  onPressed: () {
                    ref.read(gameTimeProvider.notifier).startTimer();
                    ref.read(timerConditionProvider.notifier).startTimer();
                    if (winner.isWinnerFound && winner.player == 'X') {
                      ref.watch(xscoreProvider.notifier).update();
                    }
                    if (winner.isWinnerFound && winner.player == 'O') ref.watch(oscoreProvider.notifier).update();

                    ref.read(keysProvider.notifier).reset();
                    ref.read(checkWinnerProvider.notifier).reset();
                    ref.read(turnsProvider.notifier).reset();
                    if (ref.read(xscoreProvider) >= 5) {
                      ref.read(gameTimeProvider.notifier).stopTimer();
                      ref.read(timerConditionProvider.notifier).reset();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const WinnerPage(winnner: 'X');
                          },
                        ),
                      );
                    }
                    if (ref.read(oscoreProvider) >= 5) {
                      ref.read(gameTimeProvider.notifier).stopTimer();
                      ref.read(timerConditionProvider.notifier).reset();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const WinnerPage(winnner: 'O');
                          },
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'Start Game',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
        ],
      ),
    );
  }
}
