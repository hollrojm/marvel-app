import 'package:marvel_app/infrastructure/models/marvelcomics/comic_response.dart';

class ComicModel {
  final int id;
  final int digitalId;
  final String title;
  final int issueNumber;
  final String variantDescription;
  final Description? description;
  final String modified;
  final Isbn isbn;
  final String upc;
  final DiamondCode diamondCode;
  final Ean ean;
  final String issn;
  final Format format;
  final int pageCount;
  final List<TextObject> textObjects;
  final String resourceUri;
  final List<Url> urls;
  final Series series;
  final List<Series> variants;
  final List<Series> collections;
  final List<Series> collectedIssues;
  final List<Date> dates;
  final List<Price> prices;
  final Thumbnail thumbnail;
  final List<Thumbnail> images;
  final Creators creators;
  final Characters characters;
  final Stories stories;
  final Characters events;

  ComicModel({
    required this.id,
    required this.digitalId,
    required this.title,
    required this.issueNumber,
    required this.variantDescription,
    required this.description,
    required this.modified,
    required this.isbn,
    required this.upc,
    required this.diamondCode,
    required this.ean,
    required this.issn,
    required this.format,
    required this.pageCount,
    required this.textObjects,
    required this.resourceUri,
    required this.urls,
    required this.series,
    required this.variants,
    required this.collections,
    required this.collectedIssues,
    required this.dates,
    required this.prices,
    required this.thumbnail,
    required this.images,
    required this.creators,
    required this.characters,
    required this.stories,
    required this.events,
  });

  factory ComicModel.fromJson(Map<String, dynamic> json) => ComicModel(
        id: json["id"],
        digitalId: json["digitalId"],
        title: json["title"],
        issueNumber: json["issueNumber"],
        variantDescription: json["variantDescription"],
        description: descriptionValues.map[json["description"]]!,
        modified: json["modified"],
        isbn: isbnValues.map[json["isbn"]]!,
        upc: json["upc"],
        diamondCode: diamondCodeValues.map[json["diamondCode"]]!,
        ean: eanValues.map[json["ean"]]!,
        issn: json["issn"],
        format: formatValues.map[json["format"]]!,
        pageCount: json["pageCount"],
        textObjects: List<TextObject>.from(
            json["textObjects"].map((x) => TextObject.fromJson(x))),
        resourceUri: json["resourceURI"],
        urls: List<Url>.from(json["urls"].map((x) => Url.fromJson(x))),
        series: Series.fromJson(json["series"]),
        variants:
            List<Series>.from(json["variants"].map((x) => Series.fromJson(x))),
        collections: List<Series>.from(
            json["collections"].map((x) => Series.fromJson(x))),
        collectedIssues: List<Series>.from(
            json["collectedIssues"].map((x) => Series.fromJson(x))),
        dates: List<Date>.from(json["dates"].map((x) => Date.fromJson(x))),
        prices: List<Price>.from(json["prices"].map((x) => Price.fromJson(x))),
        thumbnail: Thumbnail.fromJson(json["thumbnail"]),
        images: List<Thumbnail>.from(
            json["images"].map((x) => Thumbnail.fromJson(x))),
        creators: Creators.fromJson(json["creators"]),
        characters: Characters.fromJson(json["characters"]),
        stories: Stories.fromJson(json["stories"]),
        events: Characters.fromJson(json["events"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "digitalId": digitalId,
        "title": title,
        "issueNumber": issueNumber,
        "variantDescription": variantDescription,
        "description": descriptionValues.reverse[description],
        "modified": modified,
        "isbn": isbnValues.reverse[isbn],
        "upc": upc,
        "diamondCode": diamondCodeValues.reverse[diamondCode],
        "ean": eanValues.reverse[ean],
        "issn": issn,
        "format": formatValues.reverse[format],
        "pageCount": pageCount,
        "textObjects": List<dynamic>.from(textObjects.map((x) => x.toJson())),
        "resourceURI": resourceUri,
        "urls": List<dynamic>.from(urls.map((x) => x.toJson())),
        "series": series.toJson(),
        "variants": List<dynamic>.from(variants.map((x) => x.toJson())),
        "collections": List<dynamic>.from(collections.map((x) => x.toJson())),
        "collectedIssues":
            List<dynamic>.from(collectedIssues.map((x) => x.toJson())),
        "dates": List<dynamic>.from(dates.map((x) => x.toJson())),
        "prices": List<dynamic>.from(prices.map((x) => x.toJson())),
        "thumbnail": thumbnail.toJson(),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "creators": creators.toJson(),
        "characters": characters.toJson(),
        "stories": stories.toJson(),
        "events": events.toJson(),
      };
}
