import 'package:cinemapedia/config/domain/entities/movie.dart';

abstract class MoviesDatasource {

  Future<List<Movie>> getNowPlayingMovies({ int page = 1 });

}