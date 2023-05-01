import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/providers/check/checkwinner.dart';
import 'package:tic_tac_toe/providers/keyprovider.dart';
import 'package:tic_tac_toe/providers/timer/timerProvider.dart';

class GameKeys extends ConsumerWidget {
  const GameKeys({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(keysProvider);
    final isXturn = ref.watch(xturnProvider);
    final winIndex = ref.watch(checkWinnerProvider.select((value) => value.pos));
    final isWin = ref.watch(checkWinnerProvider.select((value) => value.isWinnerFound));
    final timerStart = ref.watch(timerConditionProvider);
    Future.delayed(Duration.zero, () {
      ref.read(checkWinnerProvider.notifier).check();
    });
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 15, mainAxisSpacing: 15),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (items[index] == '' && !isWin && timerStart) {
                final newKey = isXturn ? 'X' : 'O';
                ref.read(keysProvider.notifier).update(index, newKey);
                ref.read(xturnProvider.notifier).toggle();
                // ref.read(checkWinnerProvider.notifier).check();
                ref.read(gameTimeProvider.notifier).refreshTimer();
                ref.read(turnsProvider.notifier).update();
              }
            },
            child: Container(
              decoration: BoxDecoration(
                  color: isWin && winIndex.contains(index) ? Colors.blue : Colors.orange,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  items[index],
                  style: const TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
            ),
          );
        },
        itemCount: 9,
      ),
    );
  }
}
