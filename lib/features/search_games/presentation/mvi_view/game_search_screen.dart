import 'package:flutter/material.dart';

class SearchGamesScreen extends StatelessWidget {
  final String title;
  const SearchGamesScreen({required this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          SearchBar(
            padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 16)),
            leading: const Icon(Icons.search),
            hintText: 'Search Games',
            trailing: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary),
                child: const Text('GO'),
              ),
            ],
          ),
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            'null',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}