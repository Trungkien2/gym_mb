// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
part 'meal_planner.freezed.dart';
part 'meal_planner.g.dart';

@freezed
class MealPlanner with _$MealPlanner {
  const factory MealPlanner(
      {String? id,
      @JsonKey(name: "created_at_unix_timestamp") int? createdAtUnixTimestamp,
      @JsonKey(name: "updated_at_unix_timestamp") int? updatedAtUnixTimestamp,
      String? name,
      String? updatedAt,
      bool? is_public,
      bool? is_admin_create}) = _MealPlanner;

  factory MealPlanner.fromJson(Map<String, dynamic> json) =>
      _$MealPlannerFromJson(json);
}

@JsonSerializable()
class MealPlanners {
  final int? count;
  final List<MealPlanner>? rows;
  MealPlanners({
    this.count,
    this.rows,
  });

  factory MealPlanners.fromJson(Map<String, dynamic> json) =>
      _$MealPlannersFromJson(json);

  Map<String, dynamic> toJson() => _$MealPlannersToJson(this);
}
