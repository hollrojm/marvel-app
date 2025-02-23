import 'package:marvel_app/domain/datasources/comics_datasourse.dart';
import 'package:marvel_app/domain/entities/comic_entitie.dart';
import 'package:marvel_app/domain/repositories/comics_repository.dart';

class ComicRepositoryImpl implements ComicsRepository {
  final ComicsDatasourse comicsDatasourse;

  ComicRepositoryImpl(this.comicsDatasourse);

  @override
  Future<List<ComicEntitie>> getComics() {
    return comicsDatasourse.getComics();
  }
}
