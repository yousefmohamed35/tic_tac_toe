import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_app/Features/game/data/cubit/game_bloc_cubit.dart';
import 'package:tic_tac_app/Features/game/data/data.dart';
import 'package:tic_tac_app/Features/game/view/widgets/grid_view.dart';
import 'package:tic_tac_app/Features/game/view/widgets/player_is_playing.dart';
import 'package:tic_tac_app/Features/game/view/widgets/team_name_section.dart';
import 'package:tic_tac_app/Features/game/view/widgets/tic_tac_board.dart';

class GameViewBody extends StatelessWidget {
  const GameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GameBlocCubit, GameBlocState>(
      listener: (context, state) {
        checkState(state, context); // from data source
      },
      builder: (context, state) {
        return Column(children: [
          const TeamNameSection(),
          const SizedBox(height: 8),
          TicTacBoard(
            xScore: context.read<GameBlocCubit>().scoreOfX,
            oScore: context.read<GameBlocCubit>().scoreOfO,
          ),
          const SizedBox(height: 16),
          PlayerIsPlaying(
            text: state.currentPlayer == Player.X ? 'X' : 'O',
          ),
          const SizedBox(height: 32),
          GridGameView(
            state: state,
          ),
          const SizedBox(height: 32),
          SizedBox(
            height: 100,
            child: Image.asset('assets/images/tic.png'),
          )
        ]);
      },
    );
  }
}
