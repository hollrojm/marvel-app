import 'package:marvel_app/domain/entities/movie_entity.dart';
import 'package:marvel_app/domain/repositories/movies_repository.dart';

class MarvelMoviesUsecase {
  final MarvelMoviesRepository _marvelMoviesRepository;

  MarvelMoviesUsecase({required MarvelMoviesRepository marvelMoviesRepository})
      : _marvelMoviesRepository = marvelMoviesRepository;

  Future<List<MovieEntity>> getMovies() async {
    return await _marvelMoviesRepository.getMovies();
  }
}
