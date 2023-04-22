import 'package:app/features/program/presentation/components/diet_plan.dart';
import 'package:app/features/program/presentation/components/workout_plan.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../core/app_theme.dart';
import '../states/toggle_switch_state.dart';

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ToggleSwitchState(),
      child: const Scaffold(
        body: PlanScreenContent(),
      ),
    );
  }
}

class PlanScreenContent extends StatelessWidget {
  const PlanScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    final toggleSwitchState = Provider.of<ToggleSwitchState>(context);
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: bgLight,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(114),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 30),
                  child: Text(
                    "Check your plan ",
                    style: USerPlanScreenHeader(),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                ToggleSwitch(
                  minWidth: 130.0,
                  cornerRadius: 15.0,
                  activeBgColor: [const Color(0xff4B5B97)!],
                  inactiveBgColor: secondColor,
                  initialLabelIndex:
                      toggleSwitchState.isDietPlanSelected ? 0 : 1,
                  totalSwitches: 2,
                  changeOnTap: true,
                  radiusStyle: true,
                  animate: true,
                  fontSize: 14,

                  /// Set animation duration.
                  animationDuration: 1,
                  labels: const ['Diet Plan', 'Workout Plan'],
                  onToggle: (index) {
                    toggleSwitchState.isDietPlanSelected = index == 0;
                    //  toggleSwitchState.toggleSwitcher(index!);
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Container(
                    width: 120,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Iconsax.calendar,
                          size: 30,
                          color: Color(0xff6F6767),
                        ),
                        Text("Week 1",
                            style: GoogleFonts.poppins(
                                color: const Color(0xff6F6767),
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      
      
      
        Expanded(
            child: toggleSwitchState.isDietPlanSelected
                ? DietPaln()
                : WorkoutPlan())
      ],
    );
  }
}
