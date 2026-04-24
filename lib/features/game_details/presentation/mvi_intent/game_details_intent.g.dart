// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_details_intent.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GameDetailsIntentFactory)
final gameDetailsIntentFactoryProvider = GameDetailsIntentFactoryProvider._();

final class GameDetailsIntentFactoryProvider
    extends $NotifierProvider<GameDetailsIntentFactory, GameDetailsEntity> {
  GameDetailsIntentFactoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameDetailsIntentFactoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameDetailsIntentFactoryHash();

  @$internal
  @override
  GameDetailsIntentFactory create() => GameDetailsIntentFactory();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GameDetailsEntity value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GameDetailsEntity>(value),
    );
  }
}

String _$gameDetailsIntentFactoryHash() =>
    r'49a95871e03fff49d8cba6af90f54b6e093e64c8';

abstract class _$GameDetailsIntentFactory extends $Notifier<GameDetailsEntity> {
  GameDetailsEntity build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<GameDetailsEntity, GameDetailsEntity>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<GameDetailsEntity, GameDetailsEntity>,
              GameDetailsEntity,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
