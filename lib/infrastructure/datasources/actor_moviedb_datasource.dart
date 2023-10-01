import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/config/domain/datasources/actor_datasource.dart';
import 'package:cinemapedia/config/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/mappers/actor_mapper.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';
import 'package:dio/dio.dart';

class ActorMoviedbDatasource extends ActorsDatasource {

  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.theMovieDBKey,
        'language': 'es-MX'
      }
    )
  );


  @override
  Future<List<Actor>> getActorsByMovie(String movieId) async {

    final response = await dio.get('/movie/$movieId/credits');

    final castResponse = CreditsResponse.fromJson(response.data);

    final List<Actor> actors = castResponse.cast.map<Actor>(
      (actor) => ActorMapper.castToEntity(actor))
      .toList();

    return actors;
  }
}
