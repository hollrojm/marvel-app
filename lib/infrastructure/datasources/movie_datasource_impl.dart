import 'package:dio/dio.dart';

import 'package:marvel_app/config/constants/environment.dart';
import 'package:marvel_app/domain/datasources/movies_datasourse.dart';
import 'package:marvel_app/domain/entities/movie_entity.dart';

class MovieDatasourceImpl extends MoviesDatasourse {
  final Dio dio;

  MovieDatasourceImpl({required this.dio});

  @override
  Future<List<MovieEntity>> getMovies() {
    throw UnimplementedError();
  }
}
