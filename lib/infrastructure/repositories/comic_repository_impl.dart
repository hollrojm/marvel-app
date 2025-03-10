import 'package:marvel_app/domain/datasources/comics_datasourse.dart';
import 'package:marvel_app/domain/entities/comic_entity.dart';
import 'package:marvel_app/domain/repositories/comics_repository.dart';
import 'package:marvel_app/infrastructure/mappers/comic_mapper.dart';
import 'package:marvel_app/infrastructure/models/marvelcomics/comic_model.dart';

class ComicRepositoryImpl implements ComicsRepository {
  final ComicsDatasourse comicsDatasourse;

  ComicRepositoryImpl(this.comicsDatasourse);

  @override
  Future<List<ComicEntity>> getComics() async {
    final comicsJson = await comicsDatasourse.getComics();
    final comics = comicsJson
        //comicsJson` a una instancia de `ComicModel`, y luego convierte esa instancia de `ComicModel` a una instancia de `ComicEntitie`,
        .map((json) => ComicMapper.comicToEntity(ComicModel.fromJson(json)))
        .toList();

    return comics;
  }
}
