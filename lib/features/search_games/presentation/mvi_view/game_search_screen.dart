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
              //shrinkWrap: ,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) => Text(state.gameList[index].name),
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
        onPressed: null,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
