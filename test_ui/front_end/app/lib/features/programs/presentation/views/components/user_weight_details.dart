import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/app_theme.dart';
import '../../../../user_informations/presentation/providers.dart';

class UserWeightDetails extends ConsumerStatefulWidget {
  const UserWeightDetails({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserWeightDetailsState();
}

class _UserWeightDetailsState extends ConsumerState<UserWeightDetails> {
  textTheme({double size = 12.0, Color color = Colors.black}) {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: size,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(userInfoProvider);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // height: 50,
        constraints: const BoxConstraints(
            maxHeight: double.infinity, minHeight: double.minPositive),
        decoration: BoxDecoration(
            color: secondColor, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  state.maybeWhen(
                    orElse: () => Text(
                      "  ?? ",
                      style: textTheme(),
                    ),
                    gettingProfileError: (errors, error) =>
                        Text(error.toString()),
                    gettingProfile: () => Text(
                      " waiting",
                      style: textTheme(color: Color(0xff555555)),
                    ),
                    gottenProfile: (profile) => Text(
                      profile.weight + " KG ",
                      style: textTheme(color: Colors.white),
                    ),
                  ),
                  Text("Starting ",
                      style: textTheme(size: 13, color: Color(0xff555555))),
                ],
              ),
              Column(
                children: [
                  state.maybeWhen(
                    orElse: () => Text(
                      "  ?? ",
                      style: textTheme(),
                    ),
                    gettingProfileError: (errors, error) =>
                        Text(error.toString()),
                    gettingProfile: () => Text(
                      " waiting",
                      style: textTheme(color: Color(0xff555555)),
                    ),
                    gottenProfile: (profile) => Text(
                      profile.weight + " KG ",
                      style: textTheme(color: Colors.white),
                    ),
                  ),
                  Text("Current",
                      style: textTheme(size: 13, color: Color(0xff555555))),
                ],
              ),
              Column(
                children: [
                  state.maybeWhen(
                    orElse: () => Text(
                      "  ?? ",
                      style: textTheme(),
                    ),
                    gettingProfileError: (errors, error) =>
                        Text(error.toString()),
                    gettingProfile: () => Text(
                      " waiting",
                      style: textTheme(color: Color(0xff555555)),
                    ),
                    gottenProfile: (profile) => Text(
                      (int.parse(profile.weight) - 5).toString() + " KG ",
                      style: textTheme(),
                    ),
                  ),
                  Text("Desired",
                      style: textTheme(size: 13, color: Color(0xffffffff))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
