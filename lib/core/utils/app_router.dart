import 'package:go_router/go_router.dart';
import 'package:tic_tac_app/Features/home/view/home_view.dart';
import 'package:tic_tac_app/Features/splash_view/view/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(path: '/home', builder: (context, state) =>const HomeView())
  ]);
}
