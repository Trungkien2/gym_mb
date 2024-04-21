// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout.freezed.dart';
part 'workout.g.dart';

@freezed
class Workout with _$Workout {
  const factory Workout({
    String? id,
    int? createdAtUnixTimestamp,
    int? updatedAtUnixTimestamp,
    String? title,
    String? updatedAt,
    String? createdAt,
  }) = _Workout;

  factory Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);
}

@JsonSerializable()
class Workouts {
  final int? count;
  final List<Workout>? rows;
  Workouts({
    this.count,
    this.rows,
  });

  factory Workouts.fromJson(Map<String, dynamic> json) =>
      _$WorkoutsFromJson(json);

  Map<String, dynamic> toJson() => _$WorkoutsToJson(this);

  Workouts copyWith({
    int? count,
    List<Workout>? rows,
  }) {
    return Workouts(
      count: count ?? this.count,
      rows: rows ?? this.rows,
    );
  }
}
