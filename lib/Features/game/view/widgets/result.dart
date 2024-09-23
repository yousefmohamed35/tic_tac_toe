import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    super.key, required this.score,
  });
 final int score;
  @override
  Widget build(BuildContext context) {
    return Text(
      '$score',
      style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }
}
