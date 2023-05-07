import 'package:app/features/programs/presentation/states/program_state.dart';
import 'package:app/features/user_informations/presentation/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../core/app_theme.dart';
import '../../../../domain/models/program/program.dart';
import '../../components/cirrcul_progressor.dart';

class CaloryProgressor extends ConsumerStatefulWidget {
  const CaloryProgressor({super.key});

  @override
  ConsumerState<CaloryProgressor> createState() => _CaloryProgressorState();
}

class _CaloryProgressorState extends ConsumerState<CaloryProgressor> {
  Program? program;
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(programProvider);

    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          child: Column(
            children: [
              state.maybeWhen(
                newCalcul: (Program) => Text(
                  ref
                      .read(programProvider.notifier)
                      .consumedCalories
                      .toString(),
                  style: ScreenTextIndication(),
                ),
                orElse: () => Text("0", style: ScreenTextIndication()),
                loading: () => Text("?", style: ScreenTextIndication()),
                initial: () => Text(
                  "?",
                  style: ScreenTextIndication(),
                ),
                todayProgram: (program) => Text(
                  ref
                      .read(programProvider.notifier)
                      .consumedCalories
                      .toString(),
                  style: ScreenTextIndication(),
                ),
              ),
              Text(
                "Consumed ",
                style: ScreenTextIndication(),
              ),
            ],
          ),
        ),
        Container(
            child: CircularProgressor(
          radius: 40,
          currentProgress: ref
              .read(programProvider.notifier)
              .getConsumedCalories()
              .toDouble(),
          result: ref.read(programProvider.notifier).calories.toDouble() ?? 100,
        )),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          child: Column(
            children: [
              state.maybeWhen(
                newCalcul: (program) => Text(
                  ref
                      .read(programProvider.notifier)
                      .expendedCalories
                      .toString(),
                  style: ScreenTextIndication(),
                ),
                orElse: () => Text("0", style: ScreenTextIndication()),
                loading: () => Text("?", style: ScreenTextIndication()),
                initial: () => Text(
                  "?",
                  style: ScreenTextIndication(),
                ),
                todayProgram: (program) => Text(
                  ref
                      .read(programProvider.notifier)
                      .expendedCalories
                      .toString(),
                  style: ScreenTextIndication(),
                ),
              ),
              Text(
                "Expended ",
                style: ScreenTextIndication(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
