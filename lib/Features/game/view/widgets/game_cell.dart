import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_app/Features/game/data/cubit/game_bloc_cubit.dart';
import 'package:tic_tac_app/Features/game/data/data.dart';
import 'package:tic_tac_app/constant.dart';

class GameBoxOXO extends StatelessWidget {
  const GameBoxOXO({
    super.key,
    required this.index, required this.state,
  });
  final int index;
  final GameBlocState state;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<GameBlocCubit>().makeMove(index);
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 5),
          color: kPrimaryColor,
        ),
        child: Text(
          state.board[index] == Player.X
              ? 'X'
              : state.board[index] == Player.O
                  ? 'O'
                  : '',
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
