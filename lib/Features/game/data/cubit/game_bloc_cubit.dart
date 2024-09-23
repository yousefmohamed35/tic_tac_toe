import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_app/Features/game/data/data.dart';

part 'game_bloc_state.dart';

class GameBlocCubit extends Cubit<GameBlocState> {
  GameBlocCubit()
      : super(
          GameBlocInitial(
            board: List.generate(9, (_) => Player.none),
            currentPlayer: Player.X,
            isGameOver: false,
            winner: Player.none,
          ),
        );
  int scoreOfX = 0;
  int scoreOfO = 0;
  void makeMove(int index) {
    if (state.board[index] == Player.none && !state.isGameOver) {
      final newBoard = List<Player>.from(state.board);
      newBoard[index] = state.currentPlayer;

      final newPlayer = state.currentPlayer == Player.X ? Player.O : Player.X;

      final winner = checkWinner(newBoard);
      if (winner == Player.X) {
        scoreOfX++;
      } else if (winner == Player.O) {
        scoreOfO++;
      }
      final isGameOver =
          winner != Player.none || !newBoard.contains(Player.none);

      emit(GameBlocInitial(
        board: newBoard,
        currentPlayer: newPlayer,
        isGameOver: isGameOver,
        winner: winner,
      ));
    }
  }

  Player checkWinner(List<Player> displayXO) {
    // Check rows
    for (int i = 0; i < 3; i++) {
      if (displayXO[i * 3] == displayXO[i * 3 + 1] &&
          displayXO[i * 3 + 1] == displayXO[i * 3 + 2]) {
        return displayXO[i * 3];
      }
    }
    // Check columns
    for (int i = 0; i < 3; i++) {
      if (displayXO[i] == displayXO[i + 3] &&
          displayXO[i + 3] == displayXO[i + 6]) {
        return displayXO[i];
      }
    }
    // Check diagonals
    if (displayXO[0] == displayXO[4] && displayXO[4] == displayXO[8]) {
      return displayXO[0];
    }
    if (displayXO[2] == displayXO[4] && displayXO[4] == displayXO[6]) {
      return displayXO[2];
    }
    return Player.none;
  }

  void restartGame() {
    emit(GameBlocInitial(
      board: List.generate(9, (_) => Player.none),
      currentPlayer: Player.X,
      isGameOver: false,
      winner: Player.none,
    ));
  }

  void newGame() {
    scoreOfX = 0;
    scoreOfO = 0;
    restartGame();
  }
}
