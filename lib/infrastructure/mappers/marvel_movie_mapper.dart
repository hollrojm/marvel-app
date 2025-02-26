import 'package:marvel_app/domain/entities/movie_entity.dart';
import 'package:marvel_app/infrastructure/models/marvel_movies/marvel_movies_model.dart';

class MarvelMovieMapper {
  static MarvelMovieEntity mavelMovieToEntity(
          MarvelMoviesModel marlvelMoviesModel) =>
      MarvelMovieEntity(
        id: marlvelMoviesModel.id,
        title: marlvelMoviesModel.title,
        overview: marlvelMoviesModel.overview,
        releaseDate: marlvelMoviesModel.releaseDate,
        posterPath: (marlvelMoviesModel.posterPath != '')
            ? 'https://image.tmdb.org/t/p/w500${marlvelMoviesModel.posterPath}'
            : 'https://i.redd.it/7z6qt753qe031.jpg',
        backdropPath: (marlvelMoviesModel.backdropPath != '')
            ? 'https://image.tmdb.org/t/p/w500${marlvelMoviesModel.backdropPath}'
            : 'https://i.redd.it/7z6qt753qe031.jpg',
        voteAverage: marlvelMoviesModel.voteAverage,
        voteCount: marlvelMoviesModel.voteCount,
        adult: marlvelMoviesModel.adult,
        originalLanguage: marlvelMoviesModel.originalLanguage,
        originalTitle: marlvelMoviesModel.originalTitle,
        popularity: marlvelMoviesModel.popularity,
        video: marlvelMoviesModel.video,
        genreIds: marlvelMoviesModel.genreIds.map((e) => e.toString()).toList(),
      );
}
