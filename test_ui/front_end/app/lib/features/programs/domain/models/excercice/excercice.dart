import 'package:freezed_annotation/freezed_annotation.dart';
part 'excercice.freezed.dart';
part 'excercice.g.dart';

@freezed
class Excercice with _$Excercice {
  const factory Excercice({
    required String name,
    required String image,
    required int duration , 
    required bool isDone 
  }) = _Excercice;
  factory Excercice.fromJson(Map<String, dynamic> json) =>
      _$ExcerciceFromJson(json);
}
