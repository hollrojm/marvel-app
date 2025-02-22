import 'package:marvel_app/domain/entities/comic_entitie.dart';

abstract class ComicsDatasourse {
  Future<List<ComicEntitie>> getComics();
  //Future<List<Map<String, dynamic>>> getComics();
}
