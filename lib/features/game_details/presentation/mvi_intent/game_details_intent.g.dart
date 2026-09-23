// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_details_intent.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GameDetailsIntentFactory)
final gameDetailsIntentFactoryProvider = GameDetailsIntentFactoryFamily._();

final class GameDetailsIntentFactoryProvider
    extends
        $AsyncNotifierProvider<GameDetailsIntentFactory, GameDetailsEntity> {
  GameDetailsIntentFactoryProvider._({
    required GameDetailsIntentFactoryFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'gameDetailsIntentFactoryProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$gameDetailsIntentFactoryHash();

  @override
  String toString() {
    return r'gameDetailsIntentFactoryProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GameDetailsIntentFactory create() => GameDetailsIntentFactory();

  @override
  bool operator ==(Object other) {
    return other is GameDetailsIntentFactoryProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$gameDetailsIntentFactoryHash() =>
    r'f6d49e611da0d463a9b82b0d62b447d8a5e07f2c';

final class GameDetailsIntentFactoryFamily extends $Family
    with
        $ClassFamilyOverride<
          GameDetailsIntentFactory,
          AsyncValue<GameDetailsEntity>,
          GameDetailsEntity,
          FutureOr<GameDetailsEntity>,
          int
        > {
  GameDetailsIntentFactoryFamily._()
    : super(
        retry: null,
        name: r'gameDetailsIntentFactoryProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GameDetailsIntentFactoryProvider call(int gameId) =>
      GameDetailsIntentFactoryProvider._(argument: gameId, from: this);

  @override
  String toString() => r'gameDetailsIntentFactoryProvider';
}

abstract class _$GameDetailsIntentFactory
    extends $AsyncNotifier<GameDetailsEntity> {
  late final _$args = ref.$arg as int;
  int get gameId => _$args;

  FutureOr<GameDetailsEntity> build(int gameId);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<GameDetailsEntity>, GameDetailsEntity>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<GameDetailsEntity>, GameDetailsEntity>,
              AsyncValue<GameDetailsEntity>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
