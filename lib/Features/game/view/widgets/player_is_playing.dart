import 'package:flutter/material.dart';
import 'package:tic_tac_app/constant.dart';

class PlayerIsPlaying extends StatelessWidget {
  const PlayerIsPlaying({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      'Player $text is playing',
      style: const TextStyle(fontSize: 20, color: kPrimaryColor),
    );
  }
}
