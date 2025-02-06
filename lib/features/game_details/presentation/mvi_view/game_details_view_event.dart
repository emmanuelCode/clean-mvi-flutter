// this is the user actions for the Game Details Screen
sealed class GameDetailsViewEvent {}


class SeeScreenshots extends GameDetailsViewEvent {}

class GoBackToGameSearchResults extends GameDetailsViewEvent {}