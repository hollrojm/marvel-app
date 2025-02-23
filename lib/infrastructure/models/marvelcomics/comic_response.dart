import 'package:marvel_app/infrastructure/models/marvelcomics/comic_model.dart';

class ComicResponse {
  final int code;
  final String status;
  final String copyright;
  final String attributionText;
  final String attributionHtml;
  final String etag;
  final Data data;

  ComicResponse({
    required this.code,
    required this.status,
    required this.copyright,
    required this.attributionText,
    required this.attributionHtml,
    required this.etag,
    required this.data,
  });

  factory ComicResponse.fromJson(Map<String, dynamic> json) => ComicResponse(
        code: json["code"],
        status: json["status"],
        copyright: json["copyright"],
        attributionText: json["attributionText"],
        attributionHtml: json["attributionHTML"],
        etag: json["etag"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "copyright": copyright,
        "attributionText": attributionText,
        "attributionHTML": attributionHtml,
        "etag": etag,
        "data": data.toJson(),
      };
}

class Data {
  final int offset;
  final int limit;
  final int total;
  final int count;
  final List<ComicModel> results;

  Data({
    required this.offset,
    required this.limit,
    required this.total,
    required this.count,
    required this.results,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        offset: json["offset"],
        limit: json["limit"],
        total: json["total"],
        count: json["count"],
        results: List<ComicModel>.from(
            json["results"].map((x) => ComicModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "offset": offset,
        "limit": limit,
        "total": total,
        "count": count,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Characters {
  final int available;
  final String collectionUri;
  final List<Series> items;
  final int returned;

  Characters({
    required this.available,
    required this.collectionUri,
    required this.items,
    required this.returned,
  });

  factory Characters.fromJson(Map<String, dynamic> json) => Characters(
        available: json["available"],
        collectionUri: json["collectionURI"],
        items: List<Series>.from(json["items"].map((x) => Series.fromJson(x))),
        returned: json["returned"],
      );

  Map<String, dynamic> toJson() => {
        "available": available,
        "collectionURI": collectionUri,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "returned": returned,
      };
}

class Series {
  final String resourceUri;
  final String name;

  Series({
    required this.resourceUri,
    required this.name,
  });

  factory Series.fromJson(Map<String, dynamic> json) => Series(
        resourceUri: json["resourceURI"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "resourceURI": resourceUri,
        "name": name,
      };
}

class Creators {
  final int available;
  final String collectionUri;
  final List<CreatorsItem> items;
  final int returned;

  Creators({
    required this.available,
    required this.collectionUri,
    required this.items,
    required this.returned,
  });

  factory Creators.fromJson(Map<String, dynamic> json) => Creators(
        available: json["available"],
        collectionUri: json["collectionURI"],
        items: List<CreatorsItem>.from(
            json["items"].map((x) => CreatorsItem.fromJson(x))),
        returned: json["returned"],
      );

  Map<String, dynamic> toJson() => {
        "available": available,
        "collectionURI": collectionUri,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "returned": returned,
      };
}

class CreatorsItem {
  final String resourceUri;
  final String name;
  final Role role;

  CreatorsItem({
    required this.resourceUri,
    required this.name,
    required this.role,
  });

  factory CreatorsItem.fromJson(Map<String, dynamic> json) => CreatorsItem(
        resourceUri: json["resourceURI"],
        name: json["name"],
        role: roleValues.map[json["role"]]!,
      );

  Map<String, dynamic> toJson() => {
        "resourceURI": resourceUri,
        "name": name,
        "role": roleValues.reverse[role],
      };
}

enum Role {
  COLORIST,
  EDITOR,
  INKER,
  LETTERER,
  OTHER,
  PENCILER,
  PENCILLER,
  PENCILLER_COVER,
  WRITER
}

final roleValues = EnumValues({
  "colorist": Role.COLORIST,
  "editor": Role.EDITOR,
  "inker": Role.INKER,
  "letterer": Role.LETTERER,
  "other": Role.OTHER,
  "penciler": Role.PENCILER,
  "penciller": Role.PENCILLER,
  "penciller (cover)": Role.PENCILLER_COVER,
  "writer": Role.WRITER
});

class Date {
  final DateType type;
  final String date;

  Date({
    required this.type,
    required this.date,
  });

  factory Date.fromJson(Map<String, dynamic> json) => Date(
        type: dateTypeValues.map[json["type"]]!,
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "type": dateTypeValues.reverse[type],
        "date": date,
      };
}

enum DateType { DIGITAL_PURCHASE_DATE, FOC_DATE, ONSALE_DATE, UNLIMITED_DATE }

final dateTypeValues = EnumValues({
  "digitalPurchaseDate": DateType.DIGITAL_PURCHASE_DATE,
  "focDate": DateType.FOC_DATE,
  "onsaleDate": DateType.ONSALE_DATE,
  "unlimitedDate": DateType.UNLIMITED_DATE
});

enum DiamondCode { EMPTY, JUL190068, SEP090507 }

final diamondCodeValues = EnumValues({
  "": DiamondCode.EMPTY,
  "JUL190068": DiamondCode.JUL190068,
  "SEP090507": DiamondCode.SEP090507
});

enum Ean { EMPTY, THE_978078513621752499 }

final eanValues = EnumValues(
    {"": Ean.EMPTY, "9780785 136217 52499": Ean.THE_978078513621752499});

enum Format { COMIC, EMPTY, HARDCOVER, TRADE_PAPERBACK }

final formatValues = EnumValues({
  "Comic": Format.COMIC,
  "": Format.EMPTY,
  "Hardcover": Format.HARDCOVER,
  "Trade Paperback": Format.TRADE_PAPERBACK
});

class Thumbnail {
  final String path;
  final Extension extension;

  Thumbnail({
    required this.path,
    required this.extension,
  });

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        path: json["path"],
        extension: extensionValues.map[json["extension"]]!,
      );

  Map<String, dynamic> toJson() => {
        "path": path,
        "extension": extensionValues.reverse[extension],
      };
}

enum Extension { JPG }

final extensionValues = EnumValues({"jpg": Extension.JPG});

enum Isbn { EMPTY, THE_0785111298, THE_9780785136217 }

final isbnValues = EnumValues({
  "": Isbn.EMPTY,
  "0-7851-1129-8": Isbn.THE_0785111298,
  "978-0-7851-3621-7": Isbn.THE_9780785136217
});

class Price {
  final PriceType type;
  final double price;

  Price({
    required this.type,
    required this.price,
  });

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        type: priceTypeValues.map[json["type"]]!,
        price: json["price"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "type": priceTypeValues.reverse[type],
        "price": price,
      };
}

enum PriceType { DIGITAL_PURCHASE_PRICE, PRINT_PRICE }

final priceTypeValues = EnumValues({
  "digitalPurchasePrice": PriceType.DIGITAL_PURCHASE_PRICE,
  "printPrice": PriceType.PRINT_PRICE
});

class Stories {
  final int available;
  final String collectionUri;
  final List<StoriesItem> items;
  final int returned;

  Stories({
    required this.available,
    required this.collectionUri,
    required this.items,
    required this.returned,
  });

  factory Stories.fromJson(Map<String, dynamic> json) => Stories(
        available: json["available"],
        collectionUri: json["collectionURI"],
        items: List<StoriesItem>.from(
            json["items"].map((x) => StoriesItem.fromJson(x))),
        returned: json["returned"],
      );

  Map<String, dynamic> toJson() => {
        "available": available,
        "collectionURI": collectionUri,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "returned": returned,
      };
}

class StoriesItem {
  final String resourceUri;
  final String name;
  final ItemType type;

  StoriesItem({
    required this.resourceUri,
    required this.name,
    required this.type,
  });

  factory StoriesItem.fromJson(Map<String, dynamic> json) => StoriesItem(
        resourceUri: json["resourceURI"],
        name: json["name"],
        type: itemTypeValues.map[json["type"]]!,
      );

  Map<String, dynamic> toJson() => {
        "resourceURI": resourceUri,
        "name": name,
        "type": itemTypeValues.reverse[type],
      };
}

enum ItemType { COVER, EMPTY, INTERIOR_STORY, PROMO }

final itemTypeValues = EnumValues({
  "cover": ItemType.COVER,
  "": ItemType.EMPTY,
  "interiorStory": ItemType.INTERIOR_STORY,
  "promo": ItemType.PROMO
});

class TextObject {
  final TextObjectType type;
  final Language language;
  final String text;

  TextObject({
    required this.type,
    required this.language,
    required this.text,
  });

  factory TextObject.fromJson(Map<String, dynamic> json) => TextObject(
        type: textObjectTypeValues.map[json["type"]]!,
        language: languageValues.map[json["language"]]!,
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "type": textObjectTypeValues.reverse[type],
        "language": languageValues.reverse[language],
        "text": text,
      };
}

enum Language { EN_US }

final languageValues = EnumValues({"en-us": Language.EN_US});

enum TextObjectType { ISSUE_SOLICIT_TEXT }

final textObjectTypeValues =
    EnumValues({"issue_solicit_text": TextObjectType.ISSUE_SOLICIT_TEXT});

class Url {
  final UrlType type;
  final String url;

  Url({
    required this.type,
    required this.url,
  });

  factory Url.fromJson(Map<String, dynamic> json) => Url(
        type: urlTypeValues.map[json["type"]]!,
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "type": urlTypeValues.reverse[type],
        "url": url,
      };
}

enum UrlType { DETAIL, IN_APP_LINK, PURCHASE, READER }

final urlTypeValues = EnumValues({
  "detail": UrlType.DETAIL,
  "inAppLink": UrlType.IN_APP_LINK,
  "purchase": UrlType.PURCHASE,
  "reader": UrlType.READER
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
