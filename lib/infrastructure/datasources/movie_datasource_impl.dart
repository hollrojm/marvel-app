import 'package:dio/dio.dart';

import 'package:marvel_app/config/constants/environment.dart';
import 'package:marvel_app/domain/datasources/movies_datasourse.dart';
import 'package:marvel_app/domain/entities/movie_entity.dart';
import 'package:marvel_app/infrastructure/mappers/marvel_movie_mapper.dart';
import 'package:marvel_app/infrastructure/models/marvel_movies/marvel_movies_response.dart';

class MarvelMovieDatasourceImpl extends MarvelMoviesDatasourse {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.marvelMoviesApiKey,
        'language': 'en-MX',
        'sort_by': 'primary_release_date.desc',
        'with_companies': '420|19551'
      },
    ),
  );

  @override
  Future<List<MarvelMovieEntity>> getMarvelMovies({int page = 1}) async {
    final response = await dio.get('/discover/movie');

    final marvelMoviesResponse = MarvelMoviesResponse.fromJson(response.data);
    final List<MarvelMovieEntity> movies = marvelMoviesResponse.results
        .map(
          (marvelMovies) => MarvelMovieMapper.mavelMovieToEntity(marvelMovies),
        )
        .toList();

    return movies;
  }
}
