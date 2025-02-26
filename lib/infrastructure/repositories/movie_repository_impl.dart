import 'package:marvel_app/domain/datasources/movies_datasourse.dart';
import 'package:marvel_app/domain/entities/movie_entity.dart';
import 'package:marvel_app/domain/repositories/movies_repository.dart';

class MarvelMovieRepositoryImpl implements MarvelMoviesRepository {
  final MarvelMoviesDatasourse marvelMoviesDatasourse;

  MarvelMovieRepositoryImpl(this.marvelMoviesDatasourse);

  @override
  Future<List<MarvelMovieEntity>> getMovies() {
    throw UnimplementedError();
  }
}
