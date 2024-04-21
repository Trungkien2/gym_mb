// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Exercises _$ExercisesFromJson(Map<String, dynamic> json) => Exercises(
      count: json['count'] as int?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExercisesToJson(Exercises instance) => <String, dynamic>{
      'count': instance.count,
      'rows': instance.rows,
    };

_$ExerciseImpl _$$ExerciseImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseImpl(
      id: json['id'] as String?,
      createdAtUnixTimestamp: json['created_at_unix_timestamp'] as int?,
      updatedAtUnixTimestamp: json['updated_at_unix_timestamp'] as int?,
      title: json['title'] as String?,
      workoutId: json['workoutId'] as String?,
      prelude: json['prelude'] as int?,
      duration: json['duration'] as int?,
      link: json['link'] as String?,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$ExerciseImplToJson(_$ExerciseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at_unix_timestamp': instance.createdAtUnixTimestamp,
      'updated_at_unix_timestamp': instance.updatedAtUnixTimestamp,
      'title': instance.title,
      'workoutId': instance.workoutId,
      'prelude': instance.prelude,
      'duration': instance.duration,
      'link': instance.link,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
    };
