import 'package:go_router/go_router.dart';
import 'package:marvel_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/comics',
      name: ComicsScreen.name,
      builder: (context, state) => const ComicsScreen(),
    ),
    GoRoute(
      path: '/',
      name: MoviesScreen.name,
      builder: (context, state) => const MoviesScreen(),
    ),
  ],
);
