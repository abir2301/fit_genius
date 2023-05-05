import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../domain/models/hp.dart';
import '../../domain/usecases/get_hps_usecase.dart';
import '../../domain/usecases/post_hp_usecase.dart';
import '../states/health_problem_state.dart';

class DisHpViewModel extends StateNotifier<HpState> {
  late GetHpsUsecase getHpsUsecase;
  late PostHpUsecase postHpUsecase;
  Hps? hps;
  late Hps userHps = Hps(data: []);
  Hps? disHps;
  DisHpViewModel({required this.getHpsUsecase, required this.postHpUsecase})
      : super(const HpState.initial()) {
    getHps();
  }
  void addUserHp(Hp hp) {
    userHps = userHps.copyWith(
      data: List.of(userHps.data)..add(hp),
    );
  }

  void removeUserHp(Hp hp) {
    userHps = userHps.copyWith(
      data: List.of(userHps.data)..remove(hp),
    );
    print(userHps);
  }

  void isLoadedDis(Hps dis) {
    state = HpState.loadedDis(hps: dis);
  }

  // void isLoadedDis(Hps diseasesHps) {
  //   state = HpState.loadedDis(hps: diseasesHps);
  // }

  // void isLoadedAll(Hps allergiesHps) {
  //   state = HpState.loadedAll(hps: allergiesHps);
  // }

  void getHps() async {
    state = HpState.loading();

    final either2 = await getHpsUsecase(type: "diseases");

    either2.fold((hps) {
      this.disHps = hps;

      state = HpState.loadedDis(hps: hps);
    },
        (failure) => {
              if (failure is OfflineFailure)
                {state = const HpState.error(error: 'no_internet ')}
              else if (failure is ServerFailure)
                {state = const HpState.error(error: 'went wrong ')}
              else if (failure is UnauthenticatedFailure)
                {
                  state =
                      const HpState.error(error: 'went_wrong_register_again')
                }
            });
  }

  void postUserHp() async {
    state = HpState.hpPosting();
    final either = await postHpUsecase(userHps);
    either.fold(
        (unit) => {state = HpState.hpPosting()},
        (failure) => {
              if (failure is OfflineFailure)
                {state = const HpState.error(error: 'no_internet ')}
              else if (failure is ServerFailure)
                {state = const HpState.error(error: 'went wrong ')}
              else if (failure is UnauthenticatedFailure)
                {
                  state =
                      const HpState.error(error: 'went_wrong_register_again')
                }
            });
  }
}
