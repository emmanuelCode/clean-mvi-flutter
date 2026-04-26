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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            SearchBar(
              onChanged: (value) => searchText = value,
              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 16),
              ),
              leading: const Icon(Icons.search),
              hintText: 'Search Games',
              trailing: [
                TextButton(
                  onPressed: () =>
                      action.toIntent(SearchGame(name: searchText)),
                  child: const Text('GO'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) => GameWidget(
                  title: state.gameList[index].name,
                  imageUrl: state.gameList[index].screenShots!.isEmpty
                      ? ''
                      : state.gameList[index].screenShots!.first.image,
                ),
                itemCount: state.gameList.length,
              ),
            ),
            BottomNavigation(),
          ],
        ),
      ),
    );
  }
}

class GameWidget extends ConsumerWidget {
  final String title;
  final String imageUrl;
  const GameWidget({required this.title, required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var action = ref.read(gameSearchIntentFactoryProvider.notifier);
    return Card(
      margin: const EdgeInsets.all(8),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => action.toIntent(SelectGame(context: context)),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: Colors.grey[300],
                  child: const Center(child: Icon(Icons.image_not_supported)),
                ),
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
              ),
            ),
            ListTile(title: Text(title)),
          ],
        ),
      ),
    );
  }
}

class BottomNavigation extends ConsumerWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var action = ref.read(gameSearchIntentFactoryProvider.notifier);
    var state = ref.watch(gameSearchIntentFactoryProvider);

    return Row(
      mainAxisAlignment: .spaceAround,
      children: [
        TextButton.icon(
          onPressed: state.previous == null ? null : () => action.toIntent(LoadPage(uri: Uri.parse(state.previous!))),
          icon: const Icon(Icons.arrow_back),
          label: const Text('Previous'),
        ),
        Chip(
          label: Text('Page ${state.currentPage} of ${state.totalPages}'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        TextButton.icon(
          onPressed: state.next == null ? null : () => action.toIntent(LoadPage(uri: Uri.parse(state.next!))),
          icon: const Icon(Icons.arrow_forward),
          label: const Text('Next'),
          iconAlignment: IconAlignment.end,
        ),
      ],
    );
  }
}
