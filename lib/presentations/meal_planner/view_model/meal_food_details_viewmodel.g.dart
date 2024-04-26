// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_food_details_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mealFoodDetailViewModelHash() =>
    r'f12f9030b90c17d912b7cd7f4ff005c9d930d16b';

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

abstract class _$MealFoodDetailViewModel
    extends BuildlessAutoDisposeAsyncNotifier<MealFoodDetailModel> {
  late final int hashCodeOfContext;

  FutureOr<MealFoodDetailModel> build(
    int hashCodeOfContext,
  );
}

/// See also [MealFoodDetailViewModel].
@ProviderFor(MealFoodDetailViewModel)
const mealFoodDetailViewModelProvider = MealFoodDetailViewModelFamily();

/// See also [MealFoodDetailViewModel].
class MealFoodDetailViewModelFamily
    extends Family<AsyncValue<MealFoodDetailModel>> {
  /// See also [MealFoodDetailViewModel].
  const MealFoodDetailViewModelFamily();

  /// See also [MealFoodDetailViewModel].
  MealFoodDetailViewModelProvider call(
    int hashCodeOfContext,
  ) {
    return MealFoodDetailViewModelProvider(
      hashCodeOfContext,
    );
  }

  @override
  MealFoodDetailViewModelProvider getProviderOverride(
    covariant MealFoodDetailViewModelProvider provider,
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
  String? get name => r'mealFoodDetailViewModelProvider';
}

/// See also [MealFoodDetailViewModel].
class MealFoodDetailViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<MealFoodDetailViewModel,
        MealFoodDetailModel> {
  /// See also [MealFoodDetailViewModel].
  MealFoodDetailViewModelProvider(
    int hashCodeOfContext,
  ) : this._internal(
          () =>
              MealFoodDetailViewModel()..hashCodeOfContext = hashCodeOfContext,
          from: mealFoodDetailViewModelProvider,
          name: r'mealFoodDetailViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mealFoodDetailViewModelHash,
          dependencies: MealFoodDetailViewModelFamily._dependencies,
          allTransitiveDependencies:
              MealFoodDetailViewModelFamily._allTransitiveDependencies,
          hashCodeOfContext: hashCodeOfContext,
        );

  MealFoodDetailViewModelProvider._internal(
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
  FutureOr<MealFoodDetailModel> runNotifierBuild(
    covariant MealFoodDetailViewModel notifier,
  ) {
    return notifier.build(
      hashCodeOfContext,
    );
  }

  @override
  Override overrideWith(MealFoodDetailViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: MealFoodDetailViewModelProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<MealFoodDetailViewModel,
      MealFoodDetailModel> createElement() {
    return _MealFoodDetailViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MealFoodDetailViewModelProvider &&
        other.hashCodeOfContext == hashCodeOfContext;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, hashCodeOfContext.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MealFoodDetailViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<MealFoodDetailModel> {
  /// The parameter `hashCodeOfContext` of this provider.
  int get hashCodeOfContext;
}

class _MealFoodDetailViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MealFoodDetailViewModel,
        MealFoodDetailModel> with MealFoodDetailViewModelRef {
  _MealFoodDetailViewModelProviderElement(super.provider);

  @override
  int get hashCodeOfContext =>
      (origin as MealFoodDetailViewModelProvider).hashCodeOfContext;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
