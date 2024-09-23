import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_app/Features/game/data/cubit/game_bloc_cubit.dart';
import 'package:tic_tac_app/Features/game/view/widgets/custom_button.dart';
import 'package:tic_tac_app/Features/home/view/home_view.dart';
import 'package:tic_tac_app/constant.dart';

enum Player { X, O, none }
void checkState(GameBlocState state, BuildContext context) {
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
            CustomButton(
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
              text: 'New Game',
            ),
            CustomButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  cubitContext
                      .read<GameBlocCubit>()
                      .restartGame(); // Close the dialog
                  // Restart the game
                },
                text: 'restart')
          ],
        );
      },
    );
  }