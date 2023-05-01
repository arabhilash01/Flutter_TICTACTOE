import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/providers/score/score_provider.dart';

class ScoreCard extends ConsumerWidget {
  const ScoreCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final xScore = ref.watch(xscoreProvider);
    final oScore = ref.watch(oscoreProvider);
    return Padding(
      padding: const EdgeInsets.all(48.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const Text(
                'Player 0',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Text(
                oScore.toString(),
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(width: 50),
          Column(
            children: [
              const Text(
                'Player X',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Text(
                xScore.toString(),
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
