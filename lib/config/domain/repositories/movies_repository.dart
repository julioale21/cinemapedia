import 'package:cinemapedia/config/domain/entities/movie.dart';

abstract class MoviesRepository {

  Future<List<Movie>> getNowPlayigMovies({ int page = 1 });

  Future<List<Movie>> getNowPopular({ int page = 1 });

  Future<List<Movie>> getUpcoming({ int page = 1 });

  Future<List<Movie>> getTopRated({ int page = 1 });

  Future<Movie> getMovieById(String id);

}