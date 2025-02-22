import 'package:marvel_app/domain/entities/comic_entitie.dart';

abstract class MoviesRepository {
  Future<List<ComicEntitie>> getComics({int page = 1});
}
