import 'package:app/features/user_informations/presentation/states/user_info_state.dart';
import 'package:app/features/user_informations/presentation/viewmodel/profile_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/injection_container.dart' as ic;

final profileProvider =
    StateNotifierProvider<ProfileViewModel, UserInfoState>((ref) {
  return ic.sl<ProfileViewModel>();
});
