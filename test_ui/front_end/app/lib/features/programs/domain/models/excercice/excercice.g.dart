// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'excercice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Excercice _$$_ExcerciceFromJson(Map<String, dynamic> json) => _$_Excercice(
      name: json['name'] as String,
      image: json['image'] as String,
      duration: json['duration'] as int,
      isDone: json['isDone'] as bool,
    );

Map<String, dynamic> _$$_ExcerciceToJson(_$_Excercice instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'duration': instance.duration,
      'isDone': instance.isDone,
    };
