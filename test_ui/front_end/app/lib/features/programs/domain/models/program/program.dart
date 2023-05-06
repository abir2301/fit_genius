import 'package:freezed_annotation/freezed_annotation.dart';

import '../meal/meal.dart';
import '../workout/workout.dart';
part 'program.freezed.dart';
part 'program.g.dart';
@freezed 
class Program with _$Program{
  const factory Program ({
    required String desc , 
    required int objectif , 
     required  List<Meal> meals , 
     required List<Workout> workouts 

  })=_Program ; 
   factory Program.fromJson(Map<String, dynamic> json) => _$ProgramFromJson(json);
}