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
    r'3145d6686565011315053a7331cc4a9b885c8678';

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
  void runBuild() {
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
    element.handleCreate(ref, () => build(_$args));
  }
}
