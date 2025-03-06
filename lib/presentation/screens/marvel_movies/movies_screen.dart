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
        body: _HomeView(), bottomNavigationBar: CustomBottomNavigation());
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
    //final getMoviesState = ref.watch(getmoviesProviders);
    final getMoviesSlideShow = ref.watch(moviesSlideshowProvider);

    if (getMoviesSlideShow.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppbar(
          icon: Icon(Icons.search),
          text: 'Marvel Movies',
        ),
        const SizedBox(
          height: 5,
        ),
        _BuildAllComicsGrid(getMoviesState: getMoviesSlideShow)
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
    return MoviesSlideshow(movies: getMoviesState);
  }
}
