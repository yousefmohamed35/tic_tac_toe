import 'package:flutter/material.dart';
import 'package:tic_tac_app/Features/game/data/cubit/game_bloc_cubit.dart';
import 'package:tic_tac_app/Features/game/view/widgets/game_cell.dart';

class GridGameView extends StatelessWidget {
  const GridGameView({
    super.key,required this.state,
  });
  final GameBlocState state;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 9,
      // padding: const EdgeInsets.all(8),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        return GameBoxOXO(
          index: index, state: state,
        );
      },
    );
  }
}
