import 'package:go_router/go_router.dart';
import 'package:marvel_app/presentation/screens/marvel_comics/comics_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: ComicsScreen.name,
      builder: (context, state) => const ComicsScreen(),
    ),
  ],
);
