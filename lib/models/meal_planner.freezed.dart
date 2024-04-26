// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_planner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MealPlanner _$MealPlannerFromJson(Map<String, dynamic> json) {
  return _MealPlanner.fromJson(json);
}

/// @nodoc
mixin _$MealPlanner {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at_unix_timestamp")
  int? get createdAtUnixTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at_unix_timestamp")
  int? get updatedAtUnixTimestamp => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  bool? get is_public => throw _privateConstructorUsedError;
  bool? get is_admin_create => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealPlannerCopyWith<MealPlanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealPlannerCopyWith<$Res> {
  factory $MealPlannerCopyWith(
          MealPlanner value, $Res Function(MealPlanner) then) =
      _$MealPlannerCopyWithImpl<$Res, MealPlanner>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: "created_at_unix_timestamp") int? createdAtUnixTimestamp,
      @JsonKey(name: "updated_at_unix_timestamp") int? updatedAtUnixTimestamp,
      String? name,
      String? updatedAt,
      bool? is_public,
      bool? is_admin_create});
}

/// @nodoc
class _$MealPlannerCopyWithImpl<$Res, $Val extends MealPlanner>
    implements $MealPlannerCopyWith<$Res> {
  _$MealPlannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAtUnixTimestamp = freezed,
    Object? updatedAtUnixTimestamp = freezed,
    Object? name = freezed,
    Object? updatedAt = freezed,
    Object? is_public = freezed,
    Object? is_admin_create = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAtUnixTimestamp: freezed == createdAtUnixTimestamp
          ? _value.createdAtUnixTimestamp
          : createdAtUnixTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAtUnixTimestamp: freezed == updatedAtUnixTimestamp
          ? _value.updatedAtUnixTimestamp
          : updatedAtUnixTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      is_public: freezed == is_public
          ? _value.is_public
          : is_public // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_admin_create: freezed == is_admin_create
          ? _value.is_admin_create
          : is_admin_create // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealPlannerImplCopyWith<$Res>
    implements $MealPlannerCopyWith<$Res> {
  factory _$$MealPlannerImplCopyWith(
          _$MealPlannerImpl value, $Res Function(_$MealPlannerImpl) then) =
      __$$MealPlannerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: "created_at_unix_timestamp") int? createdAtUnixTimestamp,
      @JsonKey(name: "updated_at_unix_timestamp") int? updatedAtUnixTimestamp,
      String? name,
      String? updatedAt,
      bool? is_public,
      bool? is_admin_create});
}

/// @nodoc
class __$$MealPlannerImplCopyWithImpl<$Res>
    extends _$MealPlannerCopyWithImpl<$Res, _$MealPlannerImpl>
    implements _$$MealPlannerImplCopyWith<$Res> {
  __$$MealPlannerImplCopyWithImpl(
      _$MealPlannerImpl _value, $Res Function(_$MealPlannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAtUnixTimestamp = freezed,
    Object? updatedAtUnixTimestamp = freezed,
    Object? name = freezed,
    Object? updatedAt = freezed,
    Object? is_public = freezed,
    Object? is_admin_create = freezed,
  }) {
    return _then(_$MealPlannerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAtUnixTimestamp: freezed == createdAtUnixTimestamp
          ? _value.createdAtUnixTimestamp
          : createdAtUnixTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAtUnixTimestamp: freezed == updatedAtUnixTimestamp
          ? _value.updatedAtUnixTimestamp
          : updatedAtUnixTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      is_public: freezed == is_public
          ? _value.is_public
          : is_public // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_admin_create: freezed == is_admin_create
          ? _value.is_admin_create
          : is_admin_create // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealPlannerImpl implements _MealPlanner {
  const _$MealPlannerImpl(
      {this.id,
      @JsonKey(name: "created_at_unix_timestamp") this.createdAtUnixTimestamp,
      @JsonKey(name: "updated_at_unix_timestamp") this.updatedAtUnixTimestamp,
      this.name,
      this.updatedAt,
      this.is_public,
      this.is_admin_create});

  factory _$MealPlannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealPlannerImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: "created_at_unix_timestamp")
  final int? createdAtUnixTimestamp;
  @override
  @JsonKey(name: "updated_at_unix_timestamp")
  final int? updatedAtUnixTimestamp;
  @override
  final String? name;
  @override
  final String? updatedAt;
  @override
  final bool? is_public;
  @override
  final bool? is_admin_create;

  @override
  String toString() {
    return 'MealPlanner(id: $id, createdAtUnixTimestamp: $createdAtUnixTimestamp, updatedAtUnixTimestamp: $updatedAtUnixTimestamp, name: $name, updatedAt: $updatedAt, is_public: $is_public, is_admin_create: $is_admin_create)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealPlannerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAtUnixTimestamp, createdAtUnixTimestamp) ||
                other.createdAtUnixTimestamp == createdAtUnixTimestamp) &&
            (identical(other.updatedAtUnixTimestamp, updatedAtUnixTimestamp) ||
                other.updatedAtUnixTimestamp == updatedAtUnixTimestamp) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.is_public, is_public) ||
                other.is_public == is_public) &&
            (identical(other.is_admin_create, is_admin_create) ||
                other.is_admin_create == is_admin_create));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAtUnixTimestamp,
      updatedAtUnixTimestamp, name, updatedAt, is_public, is_admin_create);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MealPlannerImplCopyWith<_$MealPlannerImpl> get copyWith =>
      __$$MealPlannerImplCopyWithImpl<_$MealPlannerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealPlannerImplToJson(
      this,
    );
  }
}

abstract class _MealPlanner implements MealPlanner {
  const factory _MealPlanner(
      {final String? id,
      @JsonKey(name: "created_at_unix_timestamp")
      final int? createdAtUnixTimestamp,
      @JsonKey(name: "updated_at_unix_timestamp")
      final int? updatedAtUnixTimestamp,
      final String? name,
      final String? updatedAt,
      final bool? is_public,
      final bool? is_admin_create}) = _$MealPlannerImpl;

  factory _MealPlanner.fromJson(Map<String, dynamic> json) =
      _$MealPlannerImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: "created_at_unix_timestamp")
  int? get createdAtUnixTimestamp;
  @override
  @JsonKey(name: "updated_at_unix_timestamp")
  int? get updatedAtUnixTimestamp;
  @override
  String? get name;
  @override
  String? get updatedAt;
  @override
  bool? get is_public;
  @override
  bool? get is_admin_create;
  @override
  @JsonKey(ignore: true)
  _$$MealPlannerImplCopyWith<_$MealPlannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
