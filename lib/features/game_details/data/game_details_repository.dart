import '../domain/mvi_model/game_details_entity.dart';

abstract class GameDetailsRepository {


    GameDetailsEntity getGameDetails(int gameId);
}



GameDetailsEntity getGameDetails(int gameId) {
    return throw UnimplementedError();
}