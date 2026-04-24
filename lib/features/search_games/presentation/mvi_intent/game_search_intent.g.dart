// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_search_intent.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GameSearchIntentFactory)
final gameSearchIntentFactoryProvider = GameSearchIntentFactoryProvider._();

final class GameSearchIntentFactoryProvider
    extends $NotifierProvider<GameSearchIntentFactory, GameListEntity> {
  GameSearchIntentFactoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameSearchIntentFactoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameSearchIntentFactoryHash();

  @$internal
  @override
  GameSearchIntentFactory create() => GameSearchIntentFactory();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GameListEntity value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GameListEntity>(value),
    );
  }
}

String _$gameSearchIntentFactoryHash() =>
    r'f34f12d10f49511a5f41f231fcb255d8f04afd34';

abstract class _$GameSearchIntentFactory extends $Notifier<GameListEntity> {
  GameListEntity build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<GameListEntity, GameListEntity>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<GameListEntity, GameListEntity>,
              GameListEntity,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
