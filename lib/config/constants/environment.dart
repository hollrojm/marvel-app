import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String marvelApiPublicKey =
      dotenv.env['MARVEL_PUBLIC_KEY'] ?? 'No hay public api Key';
  static String marvelApiPrivateKey =
      dotenv.env['MARVEL_PRIVATE_KEY'] ?? 'No hay private api Key';
}
