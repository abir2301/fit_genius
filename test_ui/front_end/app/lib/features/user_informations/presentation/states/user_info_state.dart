import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/profile.dart';
part 'user_info_state.freezed.dart';

extension DetectLoadingState on UserInfoState {
  bool get isLoading => this is _UserInfoStatePostingProfile;
  // this is _UserInfoStateGettinggProfile ||
  // this is _UserInfoStatePuttingProfile;
}

extension DetectPostState on UserInfoState {
  bool get isPostedProfile => this is _UserInfoStatePostedProfile;
   String? get getPostingProfileError =>
      (this is _UserInfoStatePostingProfileError)
          ? (this as _UserInfoStatePostingProfileError).error
          : null;
  // bool get isgottenProfile => this is _UserInfoStateGottenProfile;
  // bool get isPuttedProfile => this is _UserInfoStatePuttedProfile;
}

// extension DetectErrorState on UserInfoState {
//   String? get getPostingProfileError =>
//       (this is _UserInfoStatePostingProfileError)
//           ? (this as _UserInfoStatePostingProfileError).error
//           : null;
  // String? get getGettingProfileError =>
  //     (this is _UserInfoStateGettingProfileError)
  //         ? (this as _UserInfoStateGettingProfileError).error
  //         : null;
  // String? get getPuttingProfileError =>
  //     (this is _UserInfoStatePuttingProfileError)
  //         ? (this as _UserInfoStatePuttingProfileError).error
  //         : null;
//}

@freezed
class UserInfoState with _$UserInfoState {
  const factory UserInfoState.initial() = _UserInfoInitial;
  const factory UserInfoState.isLoading() = _UserInfoStateLoading ; 
  const factory UserInfoState.error ({required String error }) = _UserInfoStateError ; 
  const factory UserInfoState.postingProfile() = _UserInfoStatePostingProfile;
  const factory UserInfoState.postedProfile({required Profile profile}) =
      _UserInfoStatePostedProfile;
  const factory UserInfoState.postError({List<String>? errors, String? error}) =
      _UserInfoStatePostingProfileError;
}
