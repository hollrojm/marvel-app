import 'package:marvel_app/domain/entities/movie_entity.dart';

abstract class ComicsDatasourse {
  Future<List<Map<String, dynamic>>> getComics();
}
