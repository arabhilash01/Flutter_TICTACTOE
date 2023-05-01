import 'package:flutter/material.dart';
import 'package:tic_tac_toe/widgets/bottom_section.dart';
import 'package:tic_tac_toe/widgets/gamekeys.dart';
import 'package:tic_tac_toe/widgets/score_card.dart';

class MyGameScreen extends StatelessWidget {
  const MyGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepOrangeAccent,
        child: Column(
          children: const [
            Expanded(flex: 2, child: ScoreCard()),
            Expanded(flex: 5, child: GameKeys()),
            BottomSection(),
            // Expanded(flex: 2, child: BottomSection()),
          ],
        ),
      ),
    );
  }
}
