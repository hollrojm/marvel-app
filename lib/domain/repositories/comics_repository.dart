import 'package:marvel_app/domain/entities/comic_entity.dart';

abstract class ComicsRepository {
  Future<List<ComicEntity>> getComics();
}
