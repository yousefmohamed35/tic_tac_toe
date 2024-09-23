import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_app/Features/game/data/cubit/game_bloc_cubit.dart';
import 'package:tic_tac_app/Features/game/data/data.dart';
import 'package:tic_tac_app/Features/game/view/game_view.dart';
import 'package:tic_tac_app/Features/game/view/widgets/grid_view.dart';
import 'package:tic_tac_app/Features/game/view/widgets/player_is_playing.dart';
import 'package:tic_tac_app/Features/game/view/widgets/team_name_section.dart';
import 'package:tic_tac_app/Features/game/view/widgets/tic_tac_board.dart';
import 'package:tic_tac_app/Features/home/view/home_view.dart';
import 'package:tic_tac_app/constant.dart';

class GameViewBody extends StatelessWidget {
  const GameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GameBlocCubit, GameBlocState>(
      listener: (context, state) {
        if (state.isGameOver) {
          String message;
          if (state.winner == Player.none) {
            message = "It's a Draw!";
          } else {
            message = '${state.winner == Player.X ? "X" : "O"} Wins!';
          }
          // Show the Alert Dialog
          showDialogFunction(context, message);
        }
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
        ]);
      },
    );
  }

  Future<dynamic> showDialogFunction(
      BuildContext cubitContext, String message) {
    return showDialog(
      context: cubitContext,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Result ohhh !'),
          elevation: 16,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: kPrimaryColor,
          content: Text(message),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const HomeView();
                }));
                cubitContext
                    .read<GameBlocCubit>()
                    .newGame(); // Close the dialog
                // Restart the game
              },
              child: const Text('New Game'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                cubitContext
                    .read<GameBlocCubit>()
                    .restartGame(); // Close the dialog
                // Restart the game
              },
              child: const Text('Restart'),
            ),
          ],
        );
      },
    );
  }
}
