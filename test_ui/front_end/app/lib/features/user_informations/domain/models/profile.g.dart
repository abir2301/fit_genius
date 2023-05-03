// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      age: json['age'] as int,
      weight: json['weight'] as String,
      height: json['height'] as String,
      goal: json['goal'] as String,
      gender: json['gender'] as String,
      activity_level: json['activity_level'] as String,
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'age': instance.age,
      'weight': instance.weight,
      'height': instance.height,
      'goal': instance.goal,
      'gender': instance.gender,
      'activity_level': instance.activity_level,
    };
