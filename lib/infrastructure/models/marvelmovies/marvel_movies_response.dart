import 'package:marvel_app/infrastructure/models/marvelmovies/marvel_movies_model.dart';
import 'dart:convert';

MarvelMoviesResponse marvelMoviesResponseFromJson(String str) =>
    MarvelMoviesResponse.fromJson(json.decode(str));

String marvelMoviesResponseToJson(MarvelMoviesResponse data) =>
    json.encode(data.toJson());

class MarvelMoviesResponse {
  int page;
  List<MarvelMoviesModel> results;
  int totalPages;
  int totalResults;

  MarvelMoviesResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory MarvelMoviesResponse.fromJson(Map<String, dynamic> json) =>
      MarvelMoviesResponse(
        page: json["page"],
        results: List<MarvelMoviesModel>.from(
            json["results"].map((x) => MarvelMoviesModel.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "total_pages": totalPages,
        "total_results": totalResults,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
