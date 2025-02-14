import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../mvi_intent/game_search_intent.dart';
import 'game_search_view_event.dart';

class SearchGamesScreen extends ConsumerWidget {
  final String title;
  const SearchGamesScreen({required this.title, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //TODO: finish layout.
    var action = ref.read(gameSearchIntentFactoryProvider.notifier);
    var searchText = '';
    var state = ref.watch(gameSearchIntentFactoryProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          SearchBar(
            onChanged: (value) => searchText = value,
            padding:
                WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 16)),
            leading: const Icon(Icons.search),
            hintText: 'Search Games',
            trailing: [
              TextButton(
                onPressed: () => action.toIntent(SearchGame(name: searchText)),
                style: TextButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary),
                child: const Text('GO'),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) => GameWidget(
                title: state.gameList[index].name,
                imageUrl: state.gameList[index].screenShots?[0].image ?? '',
              ),
              itemCount: state.gameList.length,
            ),
          ),
          Text(
            'null',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Game: ${state.gameList[0].screenShots![0].image }');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class GameWidget extends ConsumerWidget {
  final String title;
  final String imageUrl;
  const GameWidget({
    required this.title,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var action = ref.read(gameSearchIntentFactoryProvider.notifier);
    return Card(
      child: InkWell(
        onTap: () => action.toIntent(SelectGame(context: context)),
        child: Column(
          children: [
            Image.network(imageUrl),
            ListTile(
              title: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}
