import 'package:go_router/go_router.dart';
import 'package:joy_bor/features/splash/presentation/pages/splash_page.dart';

abstract class AppRouter {
  static const String init = '/';

  static GoRouter router = GoRouter(
    initialLocation: init,
    routes: [
      GoRoute(
        path: init,
        builder: (context, state) => const SplashPage(),
      ),
    ],
  );
}