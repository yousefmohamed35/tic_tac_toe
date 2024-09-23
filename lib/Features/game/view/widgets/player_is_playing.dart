import 'package:flutter/material.dart';
import 'package:tic_tac_app/constant.dart';

class PlayerIsPlaying extends StatelessWidget {
  const PlayerIsPlaying({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
      'Player X is playing',
      style: TextStyle(fontSize: 20, color: kPrimaryColor),
    );
  }
}
