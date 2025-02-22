//import 'package:marvel_app/domain/entities/comic_entitie.dart';

abstract class MoviesDatasourse {
  //Future<List<ComicEntitie>> getComics();
  Future<List<Map<String, dynamic>>> getComics();
}
