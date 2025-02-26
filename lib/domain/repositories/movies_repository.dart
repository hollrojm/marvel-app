import 'package:marvel_app/domain/entities/movie_entity.dart';

abstract class MoviesRepository {
  Future<List<MovieEntity>> getMovies();
}
