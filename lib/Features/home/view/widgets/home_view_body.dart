import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tic_tac_app/constant.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(48.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MaterialButton(
            onPressed: () {
              GoRouter.of(context).push('/game');
            },
            color: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8),
            //splashColor: Colors.white,
            hoverColor: Colors.blue,
            clipBehavior: Clip.hardEdge,
            child: const Text(
              "Start",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
