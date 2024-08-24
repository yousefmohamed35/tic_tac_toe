import 'package:flutter/material.dart';
import 'package:tic_tac_app/Features/home/view/widgets/home_view_body.dart';
import 'package:tic_tac_app/constant.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Tic Tac Toe game',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: kPrimaryColor,
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
