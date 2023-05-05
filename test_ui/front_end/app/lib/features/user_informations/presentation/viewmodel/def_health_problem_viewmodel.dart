import 'package:app/core/error/failure.dart';
import 'package:app/features/user_informations/domain/usecases/post_hp_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/models/hp.dart';
import '../../domain/usecases/get_hps_usecase.dart';
import '../states/health_problem_state.dart';

class HpViewModel extends StateNotifier<HpState> {
  late GetHpsUsecase getHpsUsecase;
  late PostHpUsecase postHpUsecase;
  Hps? hps;
  late Hps userHps = Hps(data: []);
  Hps? deficienciesHps;
  HpViewModel({required this.getHpsUsecase, required this.postHpUsecase})
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

  void isLoadedDef(Hps deficienciesHps) {
    state = HpState.loadedDef(hps: deficienciesHps);
  }

  void getHps() async {
    state = HpState.loading();
    final either2 = await getHpsUsecase(type: "deficiencies");

    either2.fold((hps) {
      this.deficienciesHps = hps;

      state = HpState.loadedDef(hps: hps);
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
