import 'package:marvel_app/domain/entities/comic_entitie.dart';
import 'package:marvel_app/infrastructure/models/marvelcomics/comic_model.dart';

class ComicMapper {
  static ComicEntitie comicToEntity(ComicModel comicModel) => ComicEntitie(
        id: comicModel.id,
        digitalId: comicModel.digitalId,
        title: comicModel.title,
        issueNumber: comicModel.issueNumber,
        variantDescription: comicModel.variantDescription,
        description: comicModel.description!,
        modified: DateTime.parse(comicModel.modified),
        isbn: comicModel.isbn.toString(),
        format: comicModel.format.toString(),
        pageCount: comicModel.pageCount,
        thumbnail: Image(
          path: comicModel.thumbnail.path,
          extension: comicModel.thumbnail.extension.toString(),
        ),
      );
}
