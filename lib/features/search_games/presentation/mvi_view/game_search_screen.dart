import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../mvi_intent/game_search_intent.dart';
import 'game_search_view_event.dart';

class SearchGamesScreen extends ConsumerStatefulWidget {
  final String title;
  const SearchGamesScreen({required this.title, super.key});

  @override
  ConsumerState<SearchGamesScreen> createState() => _SearchGamesScreenState();
}

class _SearchGamesScreenState extends ConsumerState<SearchGamesScreen> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //TODO: finish layout.
    var action = ref.read(gameSearchIntentFactoryProvider.notifier);
    var state = ref.watch(gameSearchIntentFactoryProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            SearchBar(
              controller: _searchController,
              padding: const WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 16),
              ),
              leading: const Icon(Icons.search),
              hintText: 'Search Games',
              trailing: [
                TextButton(
                  onPressed: () => action.toIntent(
                    SearchGame(name: _searchController.text.trim()),
                  ),
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
                  id: state.gameList[index].id,
                  title: state.gameList[index].name,
                  imageUrl: state.gameList[index].screenShots!.isEmpty
                      ? ''
                      : state.gameList[index].screenShots!.first.image,
                ),
                itemCount: state.gameList.length,
              ),
            ),

            Divider(endIndent: 12, indent: 12, thickness: .4),
            SizedBox(height: 8),
            BottomNavigation(),
          ],
        ),
      ),
    );
  }
}

class GameWidget extends ConsumerWidget {
  final int id;
  final String title;
  final String imageUrl;
  const GameWidget({
    required this.id,
    required this.title,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var action = ref.read(gameSearchIntentFactoryProvider.notifier);
    return Card(
      margin: const EdgeInsets.all(8),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => action.toIntent(SelectGame(context: context, id: id)),
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
      mainAxisAlignment: .spaceBetween,
      children: [
        TextButton.icon(
          onPressed: state.previous == null
              ? null
              : () =>
                    action.toIntent(LoadPage(uri: Uri.parse(state.previous!))),
          icon: const Icon(Icons.keyboard_arrow_left),
          label: const Text('PREVIOUS'),
        ),
        Chip(
          visualDensity: VisualDensity(vertical: -4, horizontal: -4),
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
          backgroundColor: Colors.grey[200],
          label: Text('Page ${state.currentPage} of ${state.totalPages}'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        TextButton.icon(
          onPressed: state.next == null
              ? null
              : () => action.toIntent(LoadPage(uri: Uri.parse(state.next!))),
          icon: const Icon(Icons.keyboard_arrow_right),
          label: const Text('NEXT'),
          iconAlignment: IconAlignment.end,
        ),
      ],
    );
  }
}
