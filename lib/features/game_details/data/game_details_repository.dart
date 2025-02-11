import '../domain/mvi_model/game_details_entity.dart';

abstract class GameDetailsRepository {
    GameDetailsEntity getGameDetails(int gameId);
}


// seems a bit unnecessary to have a repository for this 
// but this is just an example to show how it works
// normally it would be via https or local db
GameDetailsEntity getGameDetails(GameDetailsEntity selectedGame) {
    return selectedGame;
}