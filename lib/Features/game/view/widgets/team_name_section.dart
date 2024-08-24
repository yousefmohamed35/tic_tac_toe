import 'package:flutter/material.dart';
import 'package:tic_tac_app/Features/game/view/widgets/team_name.dart';

class TeamNameSection extends StatelessWidget {
  const TeamNameSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TeamName(
          team: 'X',
        ),
        TeamName(
          team: 'O',
        ),
      ],
    );
  }
}


