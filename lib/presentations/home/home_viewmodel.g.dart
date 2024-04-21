// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeViewModelHash() => r'9474734b677da6f5cd87224e5392719b39ba15ef';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$HomeViewModel
    extends BuildlessAutoDisposeAsyncNotifier<HomeModel> {
  late final int hashCodeOfContext;

  FutureOr<HomeModel> build(
    int hashCodeOfContext,
  );
}

/// See also [HomeViewModel].
@ProviderFor(HomeViewModel)
const homeViewModelProvider = HomeViewModelFamily();

/// See also [HomeViewModel].
class HomeViewModelFamily extends Family<AsyncValue<HomeModel>> {
  /// See also [HomeViewModel].
  const HomeViewModelFamily();

  /// See also [HomeViewModel].
  HomeViewModelProvider call(
    int hashCodeOfContext,
  ) {
    return HomeViewModelProvider(
      hashCodeOfContext,
    );
  }

  @override
  HomeViewModelProvider getProviderOverride(
    covariant HomeViewModelProvider provider,
  ) {
    return call(
      provider.hashCodeOfContext,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'homeViewModelProvider';
}

/// See also [HomeViewModel].
class HomeViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<HomeViewModel, HomeModel> {
  /// See also [HomeViewModel].
  HomeViewModelProvider(
    int hashCodeOfContext,
  ) : this._internal(
          () => HomeViewModel()..hashCodeOfContext = hashCodeOfContext,
          from: homeViewModelProvider,
          name: r'homeViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homeViewModelHash,
          dependencies: HomeViewModelFamily._dependencies,
          allTransitiveDependencies:
              HomeViewModelFamily._allTransitiveDependencies,
          hashCodeOfContext: hashCodeOfContext,
        );

  HomeViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.hashCodeOfContext,
  }) : super.internal();

  final int hashCodeOfContext;

  @override
  FutureOr<HomeModel> runNotifierBuild(
    covariant HomeViewModel notifier,
  ) {
    return notifier.build(
      hashCodeOfContext,
    );
  }

  @override
  Override overrideWith(HomeViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: HomeViewModelProvider._internal(
        () => create()..hashCodeOfContext = hashCodeOfContext,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        hashCodeOfContext: hashCodeOfContext,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<HomeViewModel, HomeModel>
      createElement() {
    return _HomeViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HomeViewModelProvider &&
        other.hashCodeOfContext == hashCodeOfContext;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, hashCodeOfContext.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HomeViewModelRef on AutoDisposeAsyncNotifierProviderRef<HomeModel> {
  /// The parameter `hashCodeOfContext` of this provider.
  int get hashCodeOfContext;
}

class _HomeViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HomeViewModel, HomeModel>
    with HomeViewModelRef {
  _HomeViewModelProviderElement(super.provider);

  @override
  int get hashCodeOfContext =>
      (origin as HomeViewModelProvider).hashCodeOfContext;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
