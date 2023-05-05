import 'package:freezed_annotation/freezed_annotation.dart';
part 'hp.freezed.dart';
part 'hp.g.dart';

@freezed
class Hp with _$Hp {
  const factory Hp({
    required int id,
    required String name,
    required String type,
  }) = _Hp;
  factory Hp.fromJson(Map<String, dynamic> json) => _$HpFromJson(json);
}

@freezed
class Hps with _$Hps {
  const factory Hps({
    required List<Hp> data,
  }) = _Hps;
  factory Hps.fromJson(Map<String, dynamic> json) => _$HpsFromJson(json);
}
