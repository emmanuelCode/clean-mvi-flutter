
class GameApiConfig {
  static const apiKey = String.fromEnvironment('gameApi', defaultValue: '');
  static const String baseUrl = 'api.rawg.io';
  static const String gamePath = '/api/games';
  static const int pageSize = 40;
}
