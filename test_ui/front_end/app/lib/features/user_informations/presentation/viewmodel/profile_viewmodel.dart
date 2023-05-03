import 'package:app/core/error/failure.dart';
import 'package:app/features/user_informations/presentation/states/user_info_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/models/profile.dart';
import '../../domain/usecases/post_profile_usecase.dart';

class ProfileViewModel extends StateNotifier<UserInfoState> {


 late PostProfileUsecase postProfileUsecase ;
  Profile? profile ; 
  ProfileViewModel({ required this.postProfileUsecase }):super (const UserInfoState.initial());  


  void postProfile (int age, String weight, String height,
      String goal, String activity_level, String gender) async {
        final either = await postProfileUsecase(age,weight,weight,goal,activity_level , gender) ; 
        either.fold((profile) {
          this.profile = profile ; 
          state = UserInfoState.postedProfile(profile: profile) ; 

        }, (failure){
          if (failure is OfflineFailure ){
            state = UserInfoState.postError(error: 'no_internet ');
          }
          else  if  (failure is ServerFailure ){
             state = UserInfoState.postError(error: 'went wrong ');
          }
          else if (failure is UnauthenticatedFailure) {
        state = const UserInfoState.error(error: 'went_wrong_register_again');
      }
        }) ; 

      }
}