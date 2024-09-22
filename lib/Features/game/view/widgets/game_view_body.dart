import 'package:flutter/material.dart';
import 'package:tic_tac_app/Features/game/view/widgets/game_timer.dart';
import 'package:tic_tac_app/Features/game/view/widgets/grid_view.dart';
import 'package:tic_tac_app/Features/game/view/widgets/player_is_playing.dart';
import 'package:tic_tac_app/Features/game/view/widgets/team_name_section.dart';
import 'package:tic_tac_app/Features/game/view/widgets/tic_tac_board.dart';

class GameViewBody extends StatelessWidget {
  const GameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TeamNameSection(),
        SizedBox(height: 8),
        TicTacBoard(),
        SizedBox(height: 16),
        PlayerIsPlaying(
          text: 'X',
        ),
        SizedBox(height: 32),
        GridGameView(),
        SizedBox(height: 32),
        GameTimer(),
      ],
    );
  }
}

