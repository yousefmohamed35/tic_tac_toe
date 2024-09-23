part of 'game_bloc_cubit.dart';

@immutable
abstract class GameBlocState {
  final List<Player> board;  // The current state of the board (9 cells)
  final Player currentPlayer;  // The current player's turn (X or O)
  final bool isGameOver;  // Flag indicating if the game has ended
  final Player winner;

const  GameBlocState({required this.board, required this.currentPlayer, required this.isGameOver, required this.winner});
}

final class GameBlocInitial extends GameBlocState {
const  GameBlocInitial({required super.board, required super.currentPlayer, required super.isGameOver, required super.winner});
}
