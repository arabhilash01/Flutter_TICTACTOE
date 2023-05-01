import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/providers/score/score_provider.dart';

class WinnerPage extends ConsumerWidget {
  final String winnner;
  const WinnerPage({super.key, required this.winnner});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.deepOrangeAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$winnner Wins!!!!',
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 200,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(xscoreProvider.notifier).reset();
                  ref.read(oscoreProvider.notifier).reset();
                  Navigator.pop(context);
                },
                child: const Text('Play Again!!!'))
          ],
        ),
      ),
    );
  }
}
