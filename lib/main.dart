import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_with_mvi/features/search_games/presentation/mvi_view/game_search_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String title = 'Flutter Clean Architecture with MVI';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SearchGamesScreen(title: title),
    );
  }
}
