import 'package:cinemapedia/config/domain/datasources/actor_datasource.dart';
import 'package:cinemapedia/config/domain/entities/actor.dart';
import 'package:cinemapedia/config/domain/repositories/actors_repository.dart';

class ActorsRepositoryImpl extends ActorRepository {

  final ActorsDatasource actorsDatasource;

  ActorsRepositoryImpl(this.actorsDatasource);

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) {
    return actorsDatasource.getActorsByMovie(movieId);
  }
}