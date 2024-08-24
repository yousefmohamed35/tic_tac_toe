import 'package:flutter/material.dart';
import 'package:tic_tac_app/Features/game/view/widgets/game_view_body.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 16),
          child: GameViewBody(),
        ),
      ),
    );
  }
}
