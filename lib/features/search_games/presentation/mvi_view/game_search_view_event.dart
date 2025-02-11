// this is the user actions that will serve as an input Intent to the ViewModel
import 'package:flutter/material.dart';

sealed class GameSearchViewEvent {}

class SearchGame extends GameSearchViewEvent {
  final String name;

  SearchGame({required this.name});
}

// load the next or previous game list page resule
class LoadPage extends GameSearchViewEvent {
  final Uri uri;

  LoadPage({required this.uri});
}


class SelectGame extends GameSearchViewEvent {
  final BuildContext context;

  SelectGame({required this.context});
}
