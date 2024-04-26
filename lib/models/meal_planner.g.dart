// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_planner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealPlanners _$MealPlannersFromJson(Map<String, dynamic> json) => MealPlanners(
      count: json['count'] as int?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => MealPlanner.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MealPlannersToJson(MealPlanners instance) =>
    <String, dynamic>{
      'count': instance.count,
      'rows': instance.rows,
    };

_$MealPlannerImpl _$$MealPlannerImplFromJson(Map<String, dynamic> json) =>
    _$MealPlannerImpl(
      id: json['id'] as String?,
      createdAtUnixTimestamp: json['created_at_unix_timestamp'] as int?,
      updatedAtUnixTimestamp: json['updated_at_unix_timestamp'] as int?,
      name: json['name'] as String?,
      updatedAt: json['updatedAt'] as String?,
      is_public: json['is_public'] as bool?,
      is_admin_create: json['is_admin_create'] as bool?,
    );

Map<String, dynamic> _$$MealPlannerImplToJson(_$MealPlannerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at_unix_timestamp': instance.createdAtUnixTimestamp,
      'updated_at_unix_timestamp': instance.updatedAtUnixTimestamp,
      'name': instance.name,
      'updatedAt': instance.updatedAt,
      'is_public': instance.is_public,
      'is_admin_create': instance.is_admin_create,
    };
