import 'package:cinemapedia/config/domain/entities/movie.dart';

abstract class MoviesDatasource {

  Future<List<Movie>> getNowPlayigMovies({ int page = 1 });

}