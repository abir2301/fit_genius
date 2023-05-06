// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Program _$$_ProgramFromJson(Map<String, dynamic> json) => _$_Program(
      desc: json['desc'] as String,
      objectif: json['objectif'] as int,
      meals: (json['meals'] as List<dynamic>)
          .map((e) => Meal.fromJson(e as Map<String, dynamic>))
          .toList(),
      workouts: (json['workouts'] as List<dynamic>)
          .map((e) => Workout.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProgramToJson(_$_Program instance) =>
    <String, dynamic>{
      'desc': instance.desc,
      'objectif': instance.objectif,
      'meals': instance.meals,
      'workouts': instance.workouts,
    };
