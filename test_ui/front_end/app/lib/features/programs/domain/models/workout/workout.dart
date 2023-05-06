import 'package:app/features/programs/domain/models/excercice/excercice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'workout.freezed.dart';
part 'workout.g.dart';

@freezed
class Workout with _$Workout {
  const factory Workout({
    required String desc,
    required List<Excercice> excercices,
  }) = _Workout;
  factory Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);
}
