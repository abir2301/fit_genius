// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Hp _$$_HpFromJson(Map<String, dynamic> json) => _$_Hp(
      name: json['name'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_HpToJson(_$_Hp instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
    };

_$_Hps _$$_HpsFromJson(Map<String, dynamic> json) => _$_Hps(
      data: (json['data'] as List<dynamic>)
          .map((e) => Hp.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HpsToJson(_$_Hps instance) => <String, dynamic>{
      'data': instance.data,
    };
