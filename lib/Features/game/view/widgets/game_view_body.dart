import 'package:flutter/material.dart';
import 'package:tic_tac_app/Features/game/view/widgets/team_name_section.dart';
import 'package:tic_tac_app/Features/game/view/widgets/tic_tac_board.dart';


class GameViewBody extends StatelessWidget {
  const GameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TeamNameSection(),
        const SizedBox(height: 16),
        TicTacBoard(),
        const SizedBox(height: 16),
      
      ],
    );
  }
}

