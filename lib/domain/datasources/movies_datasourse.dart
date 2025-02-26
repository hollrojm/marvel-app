import 'package:marvel_app/domain/entities/movie_entity.dart';

abstract class MarvelMoviesDatasourse {
  Future<List<MarvelMovieEntity>> getMarvelMovies({int page = 1});
}
