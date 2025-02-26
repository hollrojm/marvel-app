import 'package:marvel_app/domain/entities/movie_entity.dart';

abstract class MoviesDatasourse {
  Future<List<MovieEntity>> getMovies();
}
