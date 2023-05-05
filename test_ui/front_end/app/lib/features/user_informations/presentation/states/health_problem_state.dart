import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/hp.dart';
part 'health_problem_state.freezed.dart';

extension DetectLoadingState on HpState {
  bool get isLoading => this is _HpStateLoading || this is _HpStatePostingHp;
}

@freezed
class HpState with _$HpState {
  const factory HpState.initial() = _HpInitial;
  const factory HpState.loading() = _HpStateLoading;
  const factory HpState.loadedDef({required Hps hps}) = _HpStateLoadedDef;
  const factory HpState.loadedDis({required Hps hps}) = _HpStateLoadedDis;
  const factory HpState.loadedAll({required Hps hps}) = _HpStateLoadedAll;
  const factory HpState.hpPosting() = _HpStatePostingHp;
  const factory HpState.hpPostingError({required String error}) =
      _HpStatePostingHperror;
  const factory HpState.error({required String error}) = _hpStateError;
  const factory HpState.hpPosted() = _HpStatePostedgHp;
  const factory HpState.hpPostedError({required String error}) =
      _HpStatePostedgHpError;
}
