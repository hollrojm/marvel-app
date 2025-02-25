class ComicEntitie {
  final int id;
  final int digitalId;
  final String title;
  final int issueNumber;
  final String variantDescription;
  final String description;
  final DateTime modified;
  final int pageCount;
  final String thumbnail;

  ComicEntitie({
    required this.id,
    required this.digitalId,
    required this.title,
    required this.issueNumber,
    required this.variantDescription,
    required this.description,
    required this.modified,
    required this.pageCount,
    required this.thumbnail,
  });
}
