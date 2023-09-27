import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String theMovieDBKey = dotenv.env['MOVIE_DB_KEY'] ?? 'No key found';
}