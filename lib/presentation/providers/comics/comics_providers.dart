import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marvel_app/domain/entities/comic_entitie.dart';
import 'package:marvel_app/presentation/providers/comics/comics_repository_provider.dart';

final nowGetComicsProvider =
    StateNotifierProvider<ComicsNotifier, List<ComicEntitie>>((ref) {
  final getComics = ref.watch(comicRepositoryProvider).getComics;
  return ComicsNotifier(
    getComics: getComics,
  );
});

typedef ComicCallback = Future<List<ComicEntitie>> Function();

class ComicsNotifier extends StateNotifier<List<ComicEntitie>> {
  ComicCallback getComics;
  ComicsNotifier({
    required this.getComics,
  }) : super([]);
}
