import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String marvelApiPublicKey =
      dotenv.env['MARVEL_PUBLIC_KEY'] ?? 'No hay public api Key';
  static String marvelApiPrivateKey =
      dotenv.env['MARVEL_PRIVATE_KEY'] ?? 'No hay private api Key';
  static String marvelMoviesApiKey =
      dotenv.env['MARVEL_MOVIES_API_KEY'] ?? 'No hay movies api Key';
}
