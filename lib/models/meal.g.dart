// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meals _$MealsFromJson(Map<String, dynamic> json) => Meals(
      count: json['count'] as int?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => Meal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MealsToJson(Meals instance) => <String, dynamic>{
      'count': instance.count,
      'rows': instance.rows,
    };

_$MealImpl _$$MealImplFromJson(Map<String, dynamic> json) => _$MealImpl(
      id: json['id'] as String?,
      createdAtUnixTimestamp: json['created_at_unix_timestamp'] as int?,
      updatedAtUnixTimestamp: json['updated_at_unix_timestamp'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      b_image: json['b_image'] as String?,
      kcal: json['kcal'] as String?,
      time: json['time'] as String?,
      updatedAt: json['updatedAt'] as String?,
      is_add: json['is_add'] as bool?,
      type_meal: json['type_meal'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$MealImplToJson(_$MealImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at_unix_timestamp': instance.createdAtUnixTimestamp,
      'updated_at_unix_timestamp': instance.updatedAtUnixTimestamp,
      'name': instance.name,
      'image': instance.image,
      'b_image': instance.b_image,
      'kcal': instance.kcal,
      'time': instance.time,
      'updatedAt': instance.updatedAt,
      'is_add': instance.is_add,
      'type_meal': instance.type_meal,
      'createdAt': instance.createdAt,
    };
