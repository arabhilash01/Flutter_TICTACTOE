// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyprovider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$keysHash() => r'290d3574c6f45a69f7d3a9f1163b7adb72c3afa1';

/// See also [Keys].
@ProviderFor(Keys)
final keysProvider = NotifierProvider<Keys, List<String>>.internal(
  Keys.new,
  name: r'keysProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$keysHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Keys = Notifier<List<String>>;
String _$xturnHash() => r'ae085e45434c823cc2c87a575248b6706c47777d';

/// See also [Xturn].
@ProviderFor(Xturn)
final xturnProvider = AutoDisposeNotifierProvider<Xturn, bool>.internal(
  Xturn.new,
  name: r'xturnProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$xturnHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Xturn = AutoDisposeNotifier<bool>;
String _$turnsHash() => r'4f2f87f919024eb8b5d7293b31ad58f74d282dda';

/// See also [Turns].
@ProviderFor(Turns)
final turnsProvider = AutoDisposeNotifierProvider<Turns, int>.internal(
  Turns.new,
  name: r'turnsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$turnsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Turns = AutoDisposeNotifier<int>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
