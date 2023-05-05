import 'package:app/features/user_informations/presentation/states/health_problem_state.dart';
import 'package:app/features/user_informations/presentation/states/user_info_state.dart';
import 'package:app/features/user_informations/presentation/viewmodel/all_health_problem_viewmodel.dart';
import 'package:app/features/user_informations/presentation/viewmodel/def_health_problem_viewmodel.dart';
import 'package:app/features/user_informations/presentation/viewmodel/dis_health_problem_viewmodel.dart';
import 'package:app/features/user_informations/presentation/viewmodel/profile_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/injection_container.dart' as ic;

final userInfoProvider =
    StateNotifierProvider<ProfileViewModel, UserInfoState>((ref) {
  return ic.sl<ProfileViewModel>();
});
final hpProvider = StateNotifierProvider<HpViewModel, HpState>((ref) {
  return ic.sl<HpViewModel>();
});

final disHpProvider = StateNotifierProvider<DisHpViewModel, HpState>((ref) {
  return ic.sl<DisHpViewModel>();
});
final allHpProvider = StateNotifierProvider<AllHpViewModel, HpState>((ref) {
  return ic.sl<AllHpViewModel>();
});
