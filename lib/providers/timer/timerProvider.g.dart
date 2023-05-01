// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timerProvider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gameTimeHash() => r'71d53484fc291e5d54dd17f4b7b26c34384611b1';

/// See also [GameTime].
@ProviderFor(GameTime)
final gameTimeProvider = AutoDisposeNotifierProvider<GameTime, int>.internal(
  GameTime.new,
  name: r'gameTimeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gameTimeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GameTime = AutoDisposeNotifier<int>;
String _$timerConditionHash() => r'44cdae6224449eaba0f2d3e541bb7db01d5fb053';

/// See also [TimerCondition].
@ProviderFor(TimerCondition)
final timerConditionProvider =
    AutoDisposeNotifierProvider<TimerCondition, bool>.internal(
  TimerCondition.new,
  name: r'timerConditionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$timerConditionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TimerCondition = AutoDisposeNotifier<bool>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
