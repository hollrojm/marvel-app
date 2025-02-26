import 'package:marvel_app/domain/entities/comic_entity.dart';
import 'package:marvel_app/domain/repositories/comics_repository.dart';

class ComicsUseCase {
  final ComicsRepository _comicsRepository;

  ComicsUseCase(this._comicsRepository);

  Future<List<ComicEntity>> getComics() async {
    return await _comicsRepository.getComics();
  }
}
