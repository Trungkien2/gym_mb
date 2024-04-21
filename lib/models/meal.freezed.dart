// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Meal _$MealFromJson(Map<String, dynamic> json) {
  return _Meal.fromJson(json);
}

/// @nodoc
mixin _$Meal {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at_unix_timestamp")
  int? get createdAtUnixTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at_unix_timestamp")
  int? get updatedAtUnixTimestamp => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get b_image => throw _privateConstructorUsedError;
  String? get kcal => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  bool? get is_add => throw _privateConstructorUsedError;
  String? get type_meal => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealCopyWith<Meal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealCopyWith<$Res> {
  factory $MealCopyWith(Meal value, $Res Function(Meal) then) =
      _$MealCopyWithImpl<$Res, Meal>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: "created_at_unix_timestamp") int? createdAtUnixTimestamp,
      @JsonKey(name: "updated_at_unix_timestamp") int? updatedAtUnixTimestamp,
      String? name,
      String? image,
      String? b_image,
      String? kcal,
      String? time,
      String? updatedAt,
      bool? is_add,
      String? type_meal,
      String? createdAt});
}

/// @nodoc
class _$MealCopyWithImpl<$Res, $Val extends Meal>
    implements $MealCopyWith<$Res> {
  _$MealCopyWithImpl(this._value, this._then);

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
    Object? image = freezed,
    Object? b_image = freezed,
    Object? kcal = freezed,
    Object? time = freezed,
    Object? updatedAt = freezed,
    Object? is_add = freezed,
    Object? type_meal = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      b_image: freezed == b_image
          ? _value.b_image
          : b_image // ignore: cast_nullable_to_non_nullable
              as String?,
      kcal: freezed == kcal
          ? _value.kcal
          : kcal // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      is_add: freezed == is_add
          ? _value.is_add
          : is_add // ignore: cast_nullable_to_non_nullable
              as bool?,
      type_meal: freezed == type_meal
          ? _value.type_meal
          : type_meal // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealImplCopyWith<$Res> implements $MealCopyWith<$Res> {
  factory _$$MealImplCopyWith(
          _$MealImpl value, $Res Function(_$MealImpl) then) =
      __$$MealImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: "created_at_unix_timestamp") int? createdAtUnixTimestamp,
      @JsonKey(name: "updated_at_unix_timestamp") int? updatedAtUnixTimestamp,
      String? name,
      String? image,
      String? b_image,
      String? kcal,
      String? time,
      String? updatedAt,
      bool? is_add,
      String? type_meal,
      String? createdAt});
}

/// @nodoc
class __$$MealImplCopyWithImpl<$Res>
    extends _$MealCopyWithImpl<$Res, _$MealImpl>
    implements _$$MealImplCopyWith<$Res> {
  __$$MealImplCopyWithImpl(_$MealImpl _value, $Res Function(_$MealImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAtUnixTimestamp = freezed,
    Object? updatedAtUnixTimestamp = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? b_image = freezed,
    Object? kcal = freezed,
    Object? time = freezed,
    Object? updatedAt = freezed,
    Object? is_add = freezed,
    Object? type_meal = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$MealImpl(
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      b_image: freezed == b_image
          ? _value.b_image
          : b_image // ignore: cast_nullable_to_non_nullable
              as String?,
      kcal: freezed == kcal
          ? _value.kcal
          : kcal // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      is_add: freezed == is_add
          ? _value.is_add
          : is_add // ignore: cast_nullable_to_non_nullable
              as bool?,
      type_meal: freezed == type_meal
          ? _value.type_meal
          : type_meal // ignore: cast_nullable_to_non_nullable
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
class _$MealImpl implements _Meal {
  const _$MealImpl(
      {this.id,
      @JsonKey(name: "created_at_unix_timestamp") this.createdAtUnixTimestamp,
      @JsonKey(name: "updated_at_unix_timestamp") this.updatedAtUnixTimestamp,
      this.name,
      this.image,
      this.b_image,
      this.kcal,
      this.time,
      this.updatedAt,
      this.is_add,
      this.type_meal,
      this.createdAt});

  factory _$MealImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealImplFromJson(json);

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
  final String? image;
  @override
  final String? b_image;
  @override
  final String? kcal;
  @override
  final String? time;
  @override
  final String? updatedAt;
  @override
  final bool? is_add;
  @override
  final String? type_meal;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'Meal(id: $id, createdAtUnixTimestamp: $createdAtUnixTimestamp, updatedAtUnixTimestamp: $updatedAtUnixTimestamp, name: $name, image: $image, b_image: $b_image, kcal: $kcal, time: $time, updatedAt: $updatedAt, is_add: $is_add, type_meal: $type_meal, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAtUnixTimestamp, createdAtUnixTimestamp) ||
                other.createdAtUnixTimestamp == createdAtUnixTimestamp) &&
            (identical(other.updatedAtUnixTimestamp, updatedAtUnixTimestamp) ||
                other.updatedAtUnixTimestamp == updatedAtUnixTimestamp) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.b_image, b_image) || other.b_image == b_image) &&
            (identical(other.kcal, kcal) || other.kcal == kcal) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.is_add, is_add) || other.is_add == is_add) &&
            (identical(other.type_meal, type_meal) ||
                other.type_meal == type_meal) &&
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
      name,
      image,
      b_image,
      kcal,
      time,
      updatedAt,
      is_add,
      type_meal,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MealImplCopyWith<_$MealImpl> get copyWith =>
      __$$MealImplCopyWithImpl<_$MealImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealImplToJson(
      this,
    );
  }
}

abstract class _Meal implements Meal {
  const factory _Meal(
      {final String? id,
      @JsonKey(name: "created_at_unix_timestamp")
      final int? createdAtUnixTimestamp,
      @JsonKey(name: "updated_at_unix_timestamp")
      final int? updatedAtUnixTimestamp,
      final String? name,
      final String? image,
      final String? b_image,
      final String? kcal,
      final String? time,
      final String? updatedAt,
      final bool? is_add,
      final String? type_meal,
      final String? createdAt}) = _$MealImpl;

  factory _Meal.fromJson(Map<String, dynamic> json) = _$MealImpl.fromJson;

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
  String? get image;
  @override
  String? get b_image;
  @override
  String? get kcal;
  @override
  String? get time;
  @override
  String? get updatedAt;
  @override
  bool? get is_add;
  @override
  String? get type_meal;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$MealImplCopyWith<_$MealImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
