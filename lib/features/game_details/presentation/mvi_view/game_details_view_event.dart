// this is the user actions for the Game Details Screen
sealed class GameDetailsViewEvent {}

class LoadGameDetails extends GameDetailsViewEvent {
  final int gameId;

  LoadGameDetails({required this.gameId});
}

// in mvi we don't put these below because the UI handle it already for us
// it's a pragmatic choice
// class SeeScreenshots extends GameDetailsViewEvent {
//   final BuildContext context;
//   final String imageUrl;

//   SeeScreenshots({required this.context, required this.imageUrl});
// }

// class GoBackToGameSearchResults extends GameDetailsViewEvent {}