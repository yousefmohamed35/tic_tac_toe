import 'package:flutter/material.dart';

class TeamName extends StatelessWidget {
  const TeamName({
    super.key,
    required this.team,
  });
  final String team;
  @override
  Widget build(BuildContext context) {
    return Text(
      'player $team',
      style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }
}