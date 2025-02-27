import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_app/domain/entities/movie_entity.dart';
import 'package:marvel_app/presentation/providers/movies/movies_repository_provider.dart';

final getmoviesProviders =
    StateNotifierProvider<MoviesNotifier, List<MarvelMovieEntity>>((ref) {
  final fetchMoreMovies = ref.watch(movieRepositoryProvider).getMovies;
  return MoviesNotifier(fetchMoreMovies: fetchMoreMovies);
});

typedef MovieCallback = Future<List<MarvelMovieEntity>> Function({int page});

class MoviesNotifier extends StateNotifier<List<MarvelMovieEntity>> {
  int currentPage = 0;
  MovieCallback fetchMoreMovies;

  MoviesNotifier({
    required this.fetchMoreMovies,
  }) : super([]);

  Future<void> loadNextPage() async {
    //currentPage++;
    final List<MarvelMovieEntity> movies =
        await fetchMoreMovies(page: currentPage);
    state = [...state, ...movies];
  }
}
