import 'package:marvel_app/domain/entities/comic_entitie.dart';
import 'package:marvel_app/domain/repositories/comics_repository.dart';

class ComicsUseCase {
  final ComicsRepository _comicsRepository;

  ComicsUseCase(this._comicsRepository);

  Future<List<ComicEntitie>> getComics() async {
    return await _comicsRepository.getComics();
  }
}
