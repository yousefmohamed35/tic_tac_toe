import 'package:flutter/material.dart';
import 'package:tic_tac_app/Features/game/view/widgets/result.dart';

class TicTacBoard extends StatelessWidget {
  const TicTacBoard({super.key, required this.xScore, required this.oScore});
final int xScore;
final int oScore;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Result(
          score: xScore,
        ),
        Result(
          score: oScore,
        ),
      ],
    );
  }
}
