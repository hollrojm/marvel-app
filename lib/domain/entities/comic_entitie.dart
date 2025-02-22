class ComicEntitie {
  final int id;
  final int digitalId;
  final String title;
  final int issueNumber;
  final String variantDescription;
  final String description;
  final DateTime modified;
  final String isbn;
  final String format;
  final int pageCount;
  final Image thumbnail;

  ComicEntitie({
    required this.id,
    required this.digitalId,
    required this.title,
    required this.issueNumber,
    required this.variantDescription,
    required this.description,
    required this.modified,
    required this.isbn,
    required this.format,
    required this.pageCount,
    required this.thumbnail,
  });
}

class Image {
  final String path;
  final String extension;

  Image({
    required this.path,
    required this.extension,
  });
}
