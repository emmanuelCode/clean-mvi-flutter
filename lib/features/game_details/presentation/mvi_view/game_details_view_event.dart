// this is the user actions for the Game Details Screen
sealed class GameDetailsViewEvent {}


class LoadGameDetails extends GameDetailsViewEvent {
  final int gameId;

  LoadGameDetails({required this.gameId});
}

class SeeScreenshots extends GameDetailsViewEvent {}

class GoBackToGameSearchResults extends GameDetailsViewEvent {}