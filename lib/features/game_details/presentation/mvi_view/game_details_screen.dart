import 'package:flutter/material.dart';

class GameDetailsScreen extends StatelessWidget {
  const GameDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Details'),
      ),
      body: const Center(
        child: Text('Game Details Screen'),
      ),
    );
  }
}