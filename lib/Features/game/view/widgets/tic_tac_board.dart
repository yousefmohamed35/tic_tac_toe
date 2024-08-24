import 'package:flutter/material.dart';
import 'package:tic_tac_app/Features/game/view/widgets/result.dart';

class TicTacBoard extends StatelessWidget {
  const TicTacBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Result(),
        Result(),
      ],
    );
  }
}


