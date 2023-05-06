// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Workout _$$_WorkoutFromJson(Map<String, dynamic> json) => _$_Workout(
      desc: json['desc'] as String,
      excercices: (json['excercices'] as List<dynamic>)
          .map((e) => Excercice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WorkoutToJson(_$_Workout instance) =>
    <String, dynamic>{
      'desc': instance.desc,
      'excercices': instance.excercices,
    };
