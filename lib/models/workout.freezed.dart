// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Workout _$WorkoutFromJson(Map<String, dynamic> json) {
  return _Workout.fromJson(json);
}

/// @nodoc
mixin _$Workout {
  String? get id => throw _privateConstructorUsedError;
  int? get createdAtUnixTimestamp => throw _privateConstructorUsedError;
  int? get updatedAtUnixTimestamp => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutCopyWith<Workout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutCopyWith<$Res> {
  factory $WorkoutCopyWith(Workout value, $Res Function(Workout) then) =
      _$WorkoutCopyWithImpl<$Res, Workout>;
  @useResult
  $Res call(
      {String? id,
      int? createdAtUnixTimestamp,
      int? updatedAtUnixTimestamp,
      String? title,
      String? updatedAt,
      String? createdAt});
}

/// @nodoc
class _$WorkoutCopyWithImpl<$Res, $Val extends Workout>
    implements $WorkoutCopyWith<$Res> {
  _$WorkoutCopyWithImpl(this._value, this._then);

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
    Object? title = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutImplCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory _$$WorkoutImplCopyWith(
          _$WorkoutImpl value, $Res Function(_$WorkoutImpl) then) =
      __$$WorkoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? createdAtUnixTimestamp,
      int? updatedAtUnixTimestamp,
      String? title,
      String? updatedAt,
      String? createdAt});
}

/// @nodoc
class __$$WorkoutImplCopyWithImpl<$Res>
    extends _$WorkoutCopyWithImpl<$Res, _$WorkoutImpl>
    implements _$$WorkoutImplCopyWith<$Res> {
  __$$WorkoutImplCopyWithImpl(
      _$WorkoutImpl _value, $Res Function(_$WorkoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAtUnixTimestamp = freezed,
    Object? updatedAtUnixTimestamp = freezed,
    Object? title = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$WorkoutImpl(
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutImpl implements _Workout {
  const _$WorkoutImpl(
      {this.id,
      this.createdAtUnixTimestamp,
      this.updatedAtUnixTimestamp,
      this.title,
      this.updatedAt,
      this.createdAt});

  factory _$WorkoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutImplFromJson(json);

  @override
  final String? id;
  @override
  final int? createdAtUnixTimestamp;
  @override
  final int? updatedAtUnixTimestamp;
  @override
  final String? title;
  @override
  final String? updatedAt;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'Workout(id: $id, createdAtUnixTimestamp: $createdAtUnixTimestamp, updatedAtUnixTimestamp: $updatedAtUnixTimestamp, title: $title, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAtUnixTimestamp, createdAtUnixTimestamp) ||
                other.createdAtUnixTimestamp == createdAtUnixTimestamp) &&
            (identical(other.updatedAtUnixTimestamp, updatedAtUnixTimestamp) ||
                other.updatedAtUnixTimestamp == updatedAtUnixTimestamp) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAtUnixTimestamp,
      updatedAtUnixTimestamp, title, updatedAt, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutImplCopyWith<_$WorkoutImpl> get copyWith =>
      __$$WorkoutImplCopyWithImpl<_$WorkoutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutImplToJson(
      this,
    );
  }
}

abstract class _Workout implements Workout {
  const factory _Workout(
      {final String? id,
      final int? createdAtUnixTimestamp,
      final int? updatedAtUnixTimestamp,
      final String? title,
      final String? updatedAt,
      final String? createdAt}) = _$WorkoutImpl;

  factory _Workout.fromJson(Map<String, dynamic> json) = _$WorkoutImpl.fromJson;

  @override
  String? get id;
  @override
  int? get createdAtUnixTimestamp;
  @override
  int? get updatedAtUnixTimestamp;
  @override
  String? get title;
  @override
  String? get updatedAt;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$WorkoutImplCopyWith<_$WorkoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
