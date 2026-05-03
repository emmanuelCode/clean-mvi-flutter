// this is the user actions that will serve as an input Intent to the ViewModel
sealed class GameSearchViewEvent {}

class SearchGame extends GameSearchViewEvent {
  final String name;

  SearchGame({required this.name});
}

// load the next or previous game list page result
class LoadPage extends GameSearchViewEvent {
  final Uri uri;

  LoadPage({required this.uri});
}

// we don't need the select game here since the ui takes care of it already
// class SelectGame extends GameSearchViewEvent {
//   final BuildContext context;
//   final int id;
//   SelectGame({required this.context, required this.id });
// }
