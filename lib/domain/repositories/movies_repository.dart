import 'package:marvel_app/domain/entities/movie_entity.dart';

abstract class MarvelMoviesRepository {
  Future<List<MarvelMovieEntity>> getMovies();
}
