import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:crypto/crypto.dart' as crypto;
import 'package:convert/convert.dart';

import 'package:marvel_app/config/constants/environment.dart';
import 'package:marvel_app/domain/datasources/comics_datasourse.dart';

class ComicsDatasourceImpl extends ComicsDatasourse {
  final Dio dio;

  ComicsDatasourceImpl({required this.dio});

  @override
  Future<List<Map<String, dynamic>>> getComics() async {
    final privateKey = Environment.marvelApiPrivateKey;
    final publicKey = Environment.marvelApiPublicKey;
    final timestamp = DateTime.now().microsecondsSinceEpoch.toString();
    final hash = _generateMd5Hash('$timestamp$privateKey$publicKey');
    const baseUrl = 'https://gateway.marvel.com';

    final response = await dio.get(
      '$baseUrl/v1/public/comics',
      queryParameters: {
        'ts': timestamp,
        'apikey': publicKey,
        'hash': hash,
        'limit': 50,
      },
    );
    final results = List<Map<String, dynamic>>.from(
        response.data['data']['results'] as List<dynamic>);
    return results.map((comicJson) => comicJson).toList();
  }

  static _generateMd5Hash(String input) {
    var content = const Utf8Encoder().convert(input);
    var md5 = crypto.md5;
    var digest = md5.convert(content);
    return hex.encode(digest.bytes);
  }
}
