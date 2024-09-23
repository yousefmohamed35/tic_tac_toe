import 'dart:async';
import 'package:flutter/material.dart';


class GameTimer extends StatefulWidget {
  const GameTimer({
    super.key,
  });

  @override
  State<GameTimer> createState() => _GameTimerState();
}

class _GameTimerState extends State<GameTimer> {
  int currentSecond = 30;
  int second = 30;
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (second > 0) {
        setState(() {
          second -= 1;
        });
      } else {
        timer.cancel();
        
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 50,
          child: second > 9 ? Text('00:$second') : Text('00:0$second'),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: CircularProgressIndicator(
            value: 1 - second / currentSecond,
            color: second > 9 ? Colors.white : Colors.red,
          ),
        ),
      ],
    );
  }
}
