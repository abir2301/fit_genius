import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_program.freezed.dart';
part 'user_program.g.dart';

@freezed
class UserProgram with _$UserProgram {
  const factory UserProgram({
    required int id,
    required DateTime date,
    double? objectif,
    double? result,
    String? comment,
    required String programId,
  }) = _UserProgram;
  factory UserProgram.fromJson(Map<String, dynamic> json) =>
      _$UserProgramFromJson(json);
}

@freezed
class UserPerformance with _$UserPerformance {
  const factory UserPerformance({required List<UserProgram> data}) =
      _UserPerformance;
  factory UserPerformance.fromJson(Map<String, dynamic> json) =>
      _$UserPerformanceFromJson(json);
}
