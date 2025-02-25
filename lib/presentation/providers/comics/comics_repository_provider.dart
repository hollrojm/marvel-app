import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:marvel_app/infrastructure/datasources/comic_datasource_impl.dart';
import 'package:marvel_app/infrastructure/repositories/comic_repository_impl.dart';

//este provider se encarga de proveer una instancia de ComicRepositoryImpl y es inmutable
final comicRepositoryProvider = Provider((ref) {
  final dio = Dio(); // Assuming you have imported the Dio package
  return ComicRepositoryImpl(ComicsDatasourceImpl(dio: dio));
});
