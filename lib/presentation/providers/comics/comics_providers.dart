import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_app/domain/entities/comic_entity.dart';
import 'package:marvel_app/presentation/providers/comics/comics_repository_provider.dart';

final getComicsProvider =
    StateNotifierProvider<ComicsNotifier, List<ComicEntity>>((ref) {
  final fetchComics = ref.watch(comicRepositoryProvider).getComics;
  return ComicsNotifier(fetchComics: fetchComics);
});

typedef ComicCallback = Future<List<ComicEntity>> Function();

class ComicsNotifier extends StateNotifier<List<ComicEntity>> {
  ComicCallback fetchComics;

  ComicsNotifier({required this.fetchComics}) : super([]);
  Future<void> loadComics() async {
    final List<ComicEntity> comics = await fetchComics();
    state = [...state, ...comics];
  }
}
