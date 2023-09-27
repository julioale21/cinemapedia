import 'package:cinemapedia/config/domain/entities/movie.dart';

abstract class MoviesRepository {

  Future<List<Movie>> getNowPlayigMovies({ int page = 1 });

}