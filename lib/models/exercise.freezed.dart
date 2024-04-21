// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  return _Exercise.fromJson(json);
}

/// @nodoc
mixin _$Exercise {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at_unix_timestamp")
  int? get createdAtUnixTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at_unix_timestamp")
  int? get updatedAtUnixTimestamp => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get workoutId => throw _privateConstructorUsedError;
  int? get prelude => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res, Exercise>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: "created_at_unix_timestamp") int? createdAtUnixTimestamp,
      @JsonKey(name: "updated_at_unix_timestamp") int? updatedAtUnixTimestamp,
      String? title,
      String? workoutId,
      int? prelude,
      int? duration,
      String? link,
      String? updatedAt,
      String? createdAt});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res, $Val extends Exercise>
    implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

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
    Object? workoutId = freezed,
    Object? prelude = freezed,
    Object? duration = freezed,
    Object? link = freezed,
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
      workoutId: freezed == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      prelude: freezed == prelude
          ? _value.prelude
          : prelude // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ExerciseImplCopyWith<$Res>
    implements $ExerciseCopyWith<$Res> {
  factory _$$ExerciseImplCopyWith(
          _$ExerciseImpl value, $Res Function(_$ExerciseImpl) then) =
      __$$ExerciseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: "created_at_unix_timestamp") int? createdAtUnixTimestamp,
      @JsonKey(name: "updated_at_unix_timestamp") int? updatedAtUnixTimestamp,
      String? title,
      String? workoutId,
      int? prelude,
      int? duration,
      String? link,
      String? updatedAt,
      String? createdAt});
}

/// @nodoc
class __$$ExerciseImplCopyWithImpl<$Res>
    extends _$ExerciseCopyWithImpl<$Res, _$ExerciseImpl>
    implements _$$ExerciseImplCopyWith<$Res> {
  __$$ExerciseImplCopyWithImpl(
      _$ExerciseImpl _value, $Res Function(_$ExerciseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAtUnixTimestamp = freezed,
    Object? updatedAtUnixTimestamp = freezed,
    Object? title = freezed,
    Object? workoutId = freezed,
    Object? prelude = freezed,
    Object? duration = freezed,
    Object? link = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$ExerciseImpl(
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
      workoutId: freezed == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as String?,
      prelude: freezed == prelude
          ? _value.prelude
          : prelude // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
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
class _$ExerciseImpl implements _Exercise {
  const _$ExerciseImpl(
      {this.id,
      @JsonKey(name: "created_at_unix_timestamp") this.createdAtUnixTimestamp,
      @JsonKey(name: "updated_at_unix_timestamp") this.updatedAtUnixTimestamp,
      this.title,
      this.workoutId,
      this.prelude,
      this.duration,
      this.link,
      this.updatedAt,
      this.createdAt});

  factory _$ExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: "created_at_unix_timestamp")
  final int? createdAtUnixTimestamp;
  @override
  @JsonKey(name: "updated_at_unix_timestamp")
  final int? updatedAtUnixTimestamp;
  @override
  final String? title;
  @override
  final String? workoutId;
  @override
  final int? prelude;
  @override
  final int? duration;
  @override
  final String? link;
  @override
  final String? updatedAt;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'Exercise(id: $id, createdAtUnixTimestamp: $createdAtUnixTimestamp, updatedAtUnixTimestamp: $updatedAtUnixTimestamp, title: $title, workoutId: $workoutId, prelude: $prelude, duration: $duration, link: $link, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAtUnixTimestamp, createdAtUnixTimestamp) ||
                other.createdAtUnixTimestamp == createdAtUnixTimestamp) &&
            (identical(other.updatedAtUnixTimestamp, updatedAtUnixTimestamp) ||
                other.updatedAtUnixTimestamp == updatedAtUnixTimestamp) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId) &&
            (identical(other.prelude, prelude) || other.prelude == prelude) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAtUnixTimestamp,
      updatedAtUnixTimestamp,
      title,
      workoutId,
      prelude,
      duration,
      link,
      updatedAt,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      __$$ExerciseImplCopyWithImpl<_$ExerciseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseImplToJson(
      this,
    );
  }
}

abstract class _Exercise implements Exercise {
  const factory _Exercise(
      {final String? id,
      @JsonKey(name: "created_at_unix_timestamp")
      final int? createdAtUnixTimestamp,
      @JsonKey(name: "updated_at_unix_timestamp")
      final int? updatedAtUnixTimestamp,
      final String? title,
      final String? workoutId,
      final int? prelude,
      final int? duration,
      final String? link,
      final String? updatedAt,
      final String? createdAt}) = _$ExerciseImpl;

  factory _Exercise.fromJson(Map<String, dynamic> json) =
      _$ExerciseImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: "created_at_unix_timestamp")
  int? get createdAtUnixTimestamp;
  @override
  @JsonKey(name: "updated_at_unix_timestamp")
  int? get updatedAtUnixTimestamp;
  @override
  String? get title;
  @override
  String? get workoutId;
  @override
  int? get prelude;
  @override
  int? get duration;
  @override
  String? get link;
  @override
  String? get updatedAt;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
