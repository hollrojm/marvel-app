import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:marvel_app/presentation/providers/comics/comics_providers.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();
    ref.read(getComicsProvider.notifier).loadComics();
  }

  @override
  Widget build(BuildContext context) {
    final getComicsState = ref.watch(getComicsProvider);

    if (getComicsState.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView.builder(
        itemCount: getComicsState.length,
        itemBuilder: (context, index) {
          final comic = getComicsState[index];
          return ListTile(
            leading: Image.network(comic.thumbnail),
            title: Text(comic.title),
            subtitle: Text(comic.description),
          );
        });
  }
}
