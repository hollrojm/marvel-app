import 'package:marvel_app/domain/entities/movie_entity.dart';

abstract class MarvelMoviesDatasourse {
  Future<List<MovieEntity>> getMarvelMovies({int page = 1});
}
