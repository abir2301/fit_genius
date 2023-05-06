// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProgram _$$_UserProgramFromJson(Map<String, dynamic> json) =>
    _$_UserProgram(
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      objectif: (json['objectif'] as num?)?.toDouble(),
      result: (json['result'] as num?)?.toDouble(),
      comment: json['comment'] as String?,
      programId: json['programId'] as String,
    );

Map<String, dynamic> _$$_UserProgramToJson(_$_UserProgram instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'objectif': instance.objectif,
      'result': instance.result,
      'comment': instance.comment,
      'programId': instance.programId,
    };

_$_UserPerformance _$$_UserPerformanceFromJson(Map<String, dynamic> json) =>
    _$_UserPerformance(
      data: (json['data'] as List<dynamic>)
          .map((e) => UserProgram.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserPerformanceToJson(_$_UserPerformance instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
