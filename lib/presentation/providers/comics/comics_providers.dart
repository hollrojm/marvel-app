import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_app/domain/entities/comic_entitie.dart';
import 'package:marvel_app/presentation/providers/comics/comics_repository_provider.dart';

final getComicsProvider =
    StateNotifierProvider<ComicsNotifier, List<ComicEntitie>>((ref) {
  final fetchComics = ref.watch(comicRepositoryProvider).getComics;
  return ComicsNotifier(fetchComics: fetchComics);
});

typedef ComicCallback = Future<List<ComicEntitie>> Function();

class ComicsNotifier extends StateNotifier<List<ComicEntitie>> {
  ComicCallback fetchComics;

  ComicsNotifier({required this.fetchComics}) : super([]);
  Future<void> loadComics() async {
    final List<ComicEntitie> comics = await fetchComics();
    state = [...state, ...comics];
  }
}
