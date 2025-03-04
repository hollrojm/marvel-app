import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_app/domain/entities/movie_entity.dart';

import 'package:marvel_app/presentation/providers/providers.dart';
import 'package:marvel_app/presentation/widgets/widgets.dart';

class MoviesScreen extends StatelessWidget {
  static const name = 'movies-screen';

  const MoviesScreen({super.key});

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
    ref.read(getmoviesProviders.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final getMoviesState = ref.watch(getmoviesProviders);

    if (getMoviesState.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppbar(
          icon: Icon(Icons.search),
          text: 'Marvel Movies',
        ),
        _BuildAllComicsGrid(getMoviesState: getMoviesState)
      ],
    );
  }
}

class _BuildAllComicsGrid extends StatelessWidget {
  const _BuildAllComicsGrid({
    required this.getMoviesState,
  });

  final List<MarvelMovieEntity> getMoviesState;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.all(16),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.7,
          crossAxisSpacing: 15,
          mainAxisSpacing: 35,
        ),
        itemCount: getMoviesState.length,
        itemBuilder: (context, index) {
          final comic = getMoviesState[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    comic.posterPath,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => const Icon(
                      Icons.error,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
