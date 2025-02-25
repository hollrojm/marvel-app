import 'package:marvel_app/domain/datasources/comics_datasourse.dart';
import 'package:marvel_app/domain/entities/comic_entitie.dart';
import 'package:marvel_app/domain/repositories/comics_repository.dart';
import 'package:marvel_app/infrastructure/mappers/comic_mapper.dart';
import 'package:marvel_app/infrastructure/models/marvelcomics/comic_model.dart';

class ComicRepositoryImpl implements ComicsRepository {
  final ComicsDatasourse comicsDatasourse;

  ComicRepositoryImpl(this.comicsDatasourse);

  @override
  Future<List<ComicEntitie>> getComics() async {
    final comicsJson = await comicsDatasourse.getComics();
    final comics = comicsJson
        .map((json) => ComicMapper.comicToEntity(ComicModel.fromJson(json)))
        .toList();

    return comics;
  }
}
