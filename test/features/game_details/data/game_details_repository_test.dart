import 'package:flutter_clean_architecture_with_mvi/features/game_details/data/game_details_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;

class MockHttpClient extends Mock implements http.Client {}

void main() {
  late MockHttpClient mockClient;
  late Game gameRepo;

  setUpAll(() {
    // Mocktail needs a fallback value for custom types when using any() or captureAny()
    registerFallbackValue(Uri());
  });

  setUp(() {
    mockClient = MockHttpClient();
    gameRepo = Game(client: mockClient);
  });

  group('test Game Details Repository', () {
    test('getGameDetails constructs the correct URI with gameId', () async {
      const gameId = 4683;

      // Stub the client to return a success response
      // We use a minimal JSON string that matches what the repository expects to parse
      when(() => mockClient.get(any())).thenAnswer(
        (_) async => http.Response('{"id": $gameId, "name": "Test Game"}', 200),
      );

      await gameRepo.getGameDetails(gameId);

      // Verify that the get method was called with the expected URI
      verify(
        () => mockClient.get(
          any(
            that: predicate<Uri>((uri) {
              return uri.toString().contains('/api/games/$gameId') &&
                  uri.queryParameters.containsKey('key');
            }),
          ),
        ),
      ).called(1);
    });

    test(
      'make sure the resquest get parsed from my GameDetailsEntity class',
      () async {
        // to handle the screenshots request inside the method
        when(() => mockClient.get(any())).thenAnswer((invocation) async {
          final url = invocation.positionalArguments[0].toString();
          if (url.contains('screenshots')) {
            return http.Response('{"results": []}', 200);
          }
          return http.Response(jsonTest, 200);
        });

        final gameDetails = await gameRepo.getGameDetails(290874);
        expect(gameDetails.id, 290874);
        expect(gameDetails.name, 'My test game');
        expect(gameDetails.description, '"Recommended".\n\nMy test description.\n\nsome bref test');
        expect(gameDetails.nameOriginal, 'My test game');
        expect(
          gameDetails.backgroundImage,
          'https://media.rawg.io/media/screenshots/2f5/2f5aee5d08cd1676c74a62f515719d47.jpeg',
        );
        expect(gameDetails.released, '2004-11-16');
        expect(gameDetails.genres, 'Fighting');
        expect(gameDetails.platforms, 'PlayStation 2');
        expect(gameDetails.esrbRating, 'Teen');
      },
    );

    // test screenshots todo
  });
}

const String jsonTest = r'''
{
  "id": 290874,
  "name": "My test game",
  "name_original": "My test game",
  "description": "<p> \"Recommended\". <br>My test description.<br> some bref test <br></p>",
  "released": "2004-11-16",
  "background_image": "https://media.rawg.io/media/screenshots/2f5/2f5aee5d08cd1676c74a62f515719d47.jpeg",
  "background_image_additional": "https://media.rawg.io/media/screenshots/0a2/0a2a6e40f31c6b4ba44700a5b6417bca.jpg",
  "platforms": [
    {
      "platform": {
        "id": 15,
        "name": "PlayStation 2",
        "games_count": 3089,
        "image_background": "https://media.rawg.io/media/games/852/8522935d8ab27b610a254b52de0da212.jpg"
      },
      "released_at": "2004-11-16",
      "requirements": {}
    }
  ],
  "stores": [],
  "developers": [
    {
      "id": 3607,
      "name": "DIMPS",
      "slug": "dimps",
      "games_count": 50,
      "image_background": "https://media.rawg.io/media/screenshots/580/58058ac0379eb94eb018cf389e811c07.jpg"
    }
  ],
  "genres": [
    {
      "id": 6,
      "name": "Fighting",
      "slug": "fighting",
      "games_count": 11813,
      "image_background": "https://media.rawg.io/media/screenshots/ad1/ad15e71b0a3d431ce0a59bcd783efa88.jpg"
    }
  ],
  "publishers": [
    {
      "id": 1779,
      "name": "Atari",
      "slug": "atari",
      "games_count": 523,
      "image_background": "https://media.rawg.io/media/screenshots/ef1/ef12e8776d0e13d91083a7bcdad02a07.jpg"
    }
  ],
  "esrb_rating": {
    "id": 3,
    "name": "Teen",
    "slug": "teen"
  }
}''';
