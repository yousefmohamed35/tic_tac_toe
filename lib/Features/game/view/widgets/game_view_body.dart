import 'package:flutter/material.dart';
import 'package:tic_tac_app/Features/game/view/widgets/team_name_section.dart';


class GameViewBody extends StatelessWidget {
  const GameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TeamNameSection(),
      ],
    );
  }
}

