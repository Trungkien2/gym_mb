// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
part 'meal.freezed.dart';
part 'meal.g.dart';

@freezed
class Meal with _$Meal {
  const factory Meal({
    String? id,
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
    String? createdAt,
  }) = _Meal;

  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);
}

@JsonSerializable()
class Meals {
  final int? count;
  final List<Meal>? rows;
  Meals({
    this.count,
    this.rows,
  });

  factory Meals.fromJson(Map<String, dynamic> json) => _$MealsFromJson(json);

  Map<String, dynamic> toJson() => _$MealsToJson(this);
}
