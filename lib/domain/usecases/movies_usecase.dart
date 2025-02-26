import 'package:marvel_app/domain/entities/movie_entity.dart';
import 'package:marvel_app/domain/repositories/movies_repository.dart';

class MoviesUsecase {
  final MoviesRepository _moviesRepository;

  MoviesUsecase({required MoviesRepository moviesRepository})
      : _moviesRepository = moviesRepository;

  Future<List<MovieEntity>> getMovies() async {
    return await _moviesRepository.getMovies();
  }
}
