// this is the user actions that will serve as an input Intent to the ViewModel
sealed class GameSearchViewEvent {}

class SearchGame extends GameSearchViewEvent {}

class NextPage extends GameSearchViewEvent {}

class PreviousPage extends GameSearchViewEvent {}