import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_app/Features/game/data/cubit/game_bloc_cubit.dart';
import 'package:tic_tac_app/Features/game/view/widgets/game_view_body.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
          child: BlocProvider(
            create: (context) => GameBlocCubit(),
            child:const GameViewBody(),
          ),
        ),
      ),
    );
  }
}
