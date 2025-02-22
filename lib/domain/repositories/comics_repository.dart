import 'package:marvel_app/domain/entities/comic_entitie.dart';

abstract class ComicsRepository {
  Future<List<ComicEntitie>> getComics();
}
