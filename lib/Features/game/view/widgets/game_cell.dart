import 'package:flutter/material.dart';
import 'package:tic_tac_app/Features/game/data/data.dart';
import 'package:tic_tac_app/constant.dart';

class GameBoxOXO extends StatefulWidget {
  const GameBoxOXO({
    super.key,
    required this.index,
  });
  final int index;
  @override
  State<GameBoxOXO> createState() => _GameBoxOXOState();
}

class _GameBoxOXOState extends State<GameBoxOXO> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // Update the game state
        });
        if (displayXO[widget.index] == "") {
          displayXO[widget.index] = oTurn ? "O" : "X";
          oTurn = !oTurn;
        }
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 5),
          color: kPrimaryColor,
        ),
        child: Text(
          displayXO[widget.index],
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}