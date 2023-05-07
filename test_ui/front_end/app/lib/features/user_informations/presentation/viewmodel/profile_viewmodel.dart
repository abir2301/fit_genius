import 'package:app/core/error/failure.dart';
import 'package:app/features/user_informations/domain/usecases/get_profile_usecase.dart';
import 'package:app/features/user_informations/presentation/states/user_info_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/models/profile.dart';
import '../../domain/usecases/post_profile_usecase.dart';

class ProfileViewModel extends StateNotifier<UserInfoState> {
  late PostProfileUsecase postProfileUsecase;
  late GetProfileUsecase getProfileUsecase;
  Profile? profile;
  late String weight;
  late int age;
  late String height;
  late String activity_level;
  late String goal;
  late String gender;
  void updateWeight(String vl) {
    this.weight = vl;
    print("w" + weight);
  }

  void updateHeight(String vl) {
    this.height = vl;
    print("h" + height);
  }

  void updateAge(String vl) {
    this.age = int.parse(vl);
    print("a" + age.toString());
  }

  void updateGoal(int selected_index) {
    if (selected_index == 0) {
      goal = "maintain_weight";
    }
    if (selected_index == 1) {
      goal = "lose_weight";
    }
    if (selected_index == 2) {
      goal = "gain_weight";
    }
    print("g" + goal);
  }

  void updateGender(bool _isRadioSelected) {
    gender = _isRadioSelected ? "male" : "female";
    print("gender" + gender);
  }

  void updateActivity_level(String v) {
    if ((v == '1')) {
      activity_level = "lightly active";
    }
    if ((v == '2' || v == '3')) {
      activity_level = "moderately_active";
    }
    if ((v == '4' || v == '5')) {
      activity_level = "very_active";
    }
    if ((v == '6' || v == '7')) {
      activity_level = "extra_active";
    }
    print("acti" + activity_level);
  }

  ProfileViewModel(
      {required this.postProfileUsecase, required this.getProfileUsecase})
      : super(const UserInfoState.initial()) {
    gettProfile();
  }

  void postingProfile() async {
    state = UserInfoState.postingProfile();
  }

  void postedgProfile() async {
    state = UserInfoState.postedProfile(profile: profile!);
  }

  void display() {
    print(this.height);
  }

  void gettProfile() async {
    await getProfile();
    state = UserInfoState.gottenProfile(profile: profile!);
  }

  void postProfile() async {
    print("credentiall " + weight + height);
    state = UserInfoState.loading();
    final either = await postProfileUsecase(
        age, weight, height, goal, activity_level, gender);
    either.fold((profile) {
      this.profile = profile;
      print(profile);
      state = UserInfoState.postedProfile(profile: profile);
    }, (failure) {
      if (failure is OfflineFailure) {
        state = const UserInfoState.postError(error: 'no_internet ');
      } else if (failure is ServerFailure) {
        state = const UserInfoState.postError(error: 'went wrong ');
      } else if (failure is UnauthenticatedFailure) {
        state = const UserInfoState.error(error: 'went_wrong_register_again');
      }
    });
  }

  Future<void> getProfile() async {
    state = UserInfoState.loading();
    final either = await getProfileUsecase();
    either.fold((profile) {
      this.profile = profile;

      state = UserInfoState.gottenProfile(profile: profile);
    }, (failure) {
      if (failure is OfflineFailure) {
        state = const UserInfoState.postError(error: 'no_internet ');
      } else if (failure is ServerFailure) {
        state = const UserInfoState.postError(error: 'went wrong ');
      } else if (failure is UnauthenticatedFailure) {
        state = const UserInfoState.error(error: 'went_wrong_register_again');
      } else {
        state = const UserInfoState.gettingProfileError(
            error: "error while geting profile");
      }
    });
  }
}
