// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
part 'exercise.freezed.dart';
part 'exercise.g.dart';

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    String? id,
    @JsonKey(name: "created_at_unix_timestamp") int? createdAtUnixTimestamp,
    @JsonKey(name: "updated_at_unix_timestamp") int? updatedAtUnixTimestamp,
    String? title,
    String? workoutId,
    int? prelude,
    int? duration,
    String? link,
    String? updatedAt,
    String? createdAt,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);
}

@JsonSerializable()
class Exercises {
  final int? count;
  final List<Exercise>? rows;
  Exercises({
    this.count,
    this.rows,
  });

  factory Exercises.fromJson(Map<String, dynamic> json) =>
      _$ExercisesFromJson(json);

  Map<String, dynamic> toJson() => _$ExercisesToJson(this);
}
