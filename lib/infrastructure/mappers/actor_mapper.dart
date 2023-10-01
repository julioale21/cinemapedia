import 'package:cinemapedia/config/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {

  static Actor castToEntity(Cast cast) => Actor(
    id: cast.id, 
    name: cast.name, 
    profilePath: cast.profilePath != null
      ? 'https://image.tmdb.org/t/p/w500${cast.profilePath}'
      : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9olGOBDV4VJajOwhdThRy6h7H53VYWaftG6hLrAsYD78quONGlUNtFnSlVBZ13sb2IfI&usqp=CAU', 
    character: cast.creditId);
}