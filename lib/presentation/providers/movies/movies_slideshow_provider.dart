import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_app/domain/entities/movie_entity.dart';

import 'movies_providers.dart';

//Provider de solo lectura
final moviesSlideshowProvider = Provider<List<MarvelMovieEntity>>((ref) {
  final getMoviesState = ref.watch(getmoviesProviders);

  if (getMoviesState.isEmpty) return [];
  return getMoviesState.sublist(0, 6);
});
