import 'package:marvel_app/domain/entities/comic_entity.dart';
import 'package:marvel_app/infrastructure/models/marvelcomics/comic_model.dart';

class ComicMapper {
  static ComicEntity comicToEntity(ComicModel comicModel) => ComicEntity(
        id: comicModel.id!,
        digitalId: comicModel.digitalId!,
        title: comicModel.title!,
        issueNumber: comicModel.issueNumber!,
        variantDescription: comicModel.variantDescription!,
        description: comicModel.description!,
        modified: DateTime.parse(comicModel.modified),
        pageCount: comicModel.pageCount!,
        thumbnail: comicModel.thumbnail!,
      );
}
