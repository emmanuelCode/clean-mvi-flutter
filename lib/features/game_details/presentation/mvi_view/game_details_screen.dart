import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/mvi_model/game_details_entity.dart';
import '../mvi_intent/game_details_intent.dart';

class GameDetailsScreen extends ConsumerWidget {
  final int id;

  const GameDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var game = ref.watch(gameDetailsIntentFactoryProvider(id));
    return game.when(
      data: (data) => GameScreen(gameDetailsEntity: data),
      error: (error, stackTrace) =>
          Scaffold(body: Center(child: Text('Error: $error'))),
      loading: () =>
          Scaffold(body: const Center(child: CircularProgressIndicator())),
    );
  }
}

class GameScreen extends StatelessWidget {
  final GameDetailsEntity gameDetailsEntity;
  const GameScreen({super.key, required this.gameDetailsEntity});
  @override
  Widget build(BuildContext context) {
    final subtitleTextStyle = Theme.of(context).textTheme.titleMedium;
    final titleTextStyle = subtitleTextStyle!.copyWith(
      fontWeight: FontWeight.w300,
    );
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: BackButton(
                color: Theme.of(context).colorScheme.onSecondaryContainer,
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Theme.of(
                      context,
                    ).colorScheme.secondaryContainer.withValues(alpha: 0.7),
                  ),
                ),
              ),
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              expandedHeight: 350,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.all(16),
                title: Text(
                  gameDetailsEntity.name,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    //TODO: redundant code,need to create a reusable widget for this.
                    Image.network(
                      gameDetailsEntity.backgroundImage ?? '',
                      //'https://media.rawg.io/media/games/456/456dea5e1c7e3cd07060c14e96612001.jpg', // test image
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.grey[300],
                        child: const Center(
                          child: Icon(Icons.image_not_supported),
                        ),
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
                    const DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black87],
                          stops: [0.6, 1.0],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //TODO:investigate this part..
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: .stretch,
                    // todo: clean up this part
                    children: [
                      // Text('Game Title'),
                      // const SizedBox(height: 8),
                      // const Row(
                      //   children: [
                      //     Icon(Icons.star, color: Colors.amber),
                      //     SizedBox(width: 4),
                      //     Text('4.5 (200 reviews)'),
                      //   ],
                      // ),
                      // const SizedBox(height: 16),
                      Card(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ABOUT',
                                style: Theme.of(context).textTheme.titleLarge
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                gameDetailsEntity.description ??
                                    'No description available.',
                                style: subtitleTextStyle.copyWith(
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(height: 16),
                              GridView.count(
                                padding: EdgeInsets.zero,
                                crossAxisCount: 2,
                                crossAxisSpacing: 0,
                                mainAxisSpacing: 8,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                childAspectRatio: 5 / 2,
                                children: [
                                  ListTile(
                                    titleTextStyle: titleTextStyle,
                                    subtitleTextStyle: subtitleTextStyle,
                                    title: Text('Genre'),
                                    //TODO: unit test candidate for empty string
                                    subtitle: Text(gameDetailsEntity.genres ?? "N/A"),
                                    contentPadding: EdgeInsets.zero,
                                    isThreeLine: true,
                                  ),
                                  ListTile(
                                    titleTextStyle: titleTextStyle,
                                    subtitleTextStyle: subtitleTextStyle,
                                    title: Text('Platforms'),
                                    subtitle: Text(
                                      gameDetailsEntity.platforms ?? "N/A",
                                    ),
                                    contentPadding: EdgeInsets.zero,
                                    isThreeLine: true,
                                  ),
                                  ListTile(
                                    titleTextStyle: titleTextStyle,
                                    subtitleTextStyle: subtitleTextStyle,
                                    title: Text('ESRB Rating'),
                                    subtitle: Text(
                                      gameDetailsEntity.esrbRating ?? "N/A",
                                    ),
                                    contentPadding: EdgeInsets.zero,
                                    isThreeLine: true,
                                  ),
                                  ListTile(
                                    titleTextStyle: titleTextStyle,
                                    subtitleTextStyle: subtitleTextStyle,
                                    title: Text('Release Date'),
                                    subtitle: Text(
                                      gameDetailsEntity.released ?? "N/A",
                                    ),
                                    contentPadding: EdgeInsets.zero,
                                    isThreeLine: true,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // add screenshots here
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
