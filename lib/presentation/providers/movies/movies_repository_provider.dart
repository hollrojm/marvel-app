import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_app/infrastructure/datasources/movie_datasource_impl.dart';
import 'package:marvel_app/infrastructure/repositories/movie_repository_impl.dart';

final movieRepositoryProvider = Provider((ref) {
  return MarvelMovieRepositoryImpl(MarvelMovieDatasourceImpl());
});
