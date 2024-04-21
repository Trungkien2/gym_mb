// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Workouts _$WorkoutsFromJson(Map<String, dynamic> json) => Workouts(
      count: json['count'] as int?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => Workout.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WorkoutsToJson(Workouts instance) => <String, dynamic>{
      'count': instance.count,
      'rows': instance.rows,
    };

_$WorkoutImpl _$$WorkoutImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutImpl(
      id: json['id'] as String?,
      createdAtUnixTimestamp: json['createdAtUnixTimestamp'] as int?,
      updatedAtUnixTimestamp: json['updatedAtUnixTimestamp'] as int?,
      title: json['title'] as String?,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$WorkoutImplToJson(_$WorkoutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAtUnixTimestamp': instance.createdAtUnixTimestamp,
      'updatedAtUnixTimestamp': instance.updatedAtUnixTimestamp,
      'title': instance.title,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
    };
