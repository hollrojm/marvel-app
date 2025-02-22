import 'package:go_router/go_router.dart';
import 'package:marvel_app/presentation/screens/marvel_comics/home_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
