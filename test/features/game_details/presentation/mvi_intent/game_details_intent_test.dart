import 'package:flutter_clean_architecture_with_mvi/features/game_details/data/game_details_repository.dart';
import 'package:flutter_clean_architecture_with_mvi/features/game_details/domain/mvi_model/game_details_entity.dart';
import 'package:flutter_clean_architecture_with_mvi/features/game_details/presentation/mvi_intent/game_details_intent.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';


// this is how we mock the repository with mocktail
class MockGameDetailsRepository extends Mock implements GameDetailsRepository {}

void main() {
  late MockGameDetailsRepository mockGameDetailsRepository;
  // a container is used to mock the provider
  // this is a necessary step for all providers
  late ProviderContainer container;


  setUp(() {
    mockGameDetailsRepository = MockGameDetailsRepository();
    container = ProviderContainer(
      // we inject our mock repository here
      overrides: [
        gameDetailsRepositoryProvider.overrideWithValue(
          mockGameDetailsRepository,
        ),
      ],
    );
  });
  group('test the game details intent', () {
    test(
      'make sure the game details intent get initialize with the right values',
      () async {
        const gameId = 7843;

        when(() => mockGameDetailsRepository.getGameDetails(gameId)).thenAnswer(
          (_) async => GameDetailsEntity(
            id: gameId,
            name: 'test game',
            nameOriginal: 'test game',
            description: 'test description',
            released: 'test released',
            backgroundImage: 'test backgroundImage',
            screenshots: [],  
            genres: 'test genres',
            platforms: 'test platforms',
            esrbRating: 'test esrbRating',
          ),
        );


        // To test the build() method of your IntentFactory:
        // 1. We read the provider using the specific gameId.
        // 2. We await the .future to get the result of the build() method.
        final state = await container.read(
          gameDetailsIntentFactoryProvider(gameId).future,
        );
        expect(state.id,'$gameId');
        expect(state.name, 'test game');
        expect(state.nameOriginal, 'test game');
        expect(state.description, 'test description');
        expect(state.released, 'test released');
        expect(state.backgroundImage, 'test backgroundImage');
        expect(state.genres, 'test genres');
        expect(state.platforms, 'test platforms');  
        expect(state.esrbRating, 'test esrbRating');
      },
    );
  });
}
