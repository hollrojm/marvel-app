import 'package:marvel_app/domain/datasources/movies_datasourse.dart';
import 'package:marvel_app/domain/entities/movie_entity.dart';
import 'package:marvel_app/domain/repositories/movies_repository.dart';

class MovieRepositoryImpl implements MoviesRepository {
  final MoviesDatasourse comicsDatasourse;

  MovieRepositoryImpl(this.comicsDatasourse);

  @override
  Future<List<MovieEntity>> getMovies() {
    // TODO: implement getMovies
    throw UnimplementedError();
  }
}
