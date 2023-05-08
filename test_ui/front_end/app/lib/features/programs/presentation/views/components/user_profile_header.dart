import 'package:app/core/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../user_informations/domain/models/profile.dart';
import '../../../../user_informations/presentation/providers.dart';

class UserProfileHeader extends ConsumerStatefulWidget {
  const UserProfileHeader({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserProfileHeaderState();
}

class _UserProfileHeaderState extends ConsumerState<UserProfileHeader> {
  Profile? profile;
  // @override
  // void initState() {
  //   super.initState();
  //   profile = ref.read(userInfoProvider.notifier).profile;
  //   if (profile != null) {
  //     ref.read(userInfoProvider.notifier).getProfile();
  //     //  print(ref.read(userInfoProvider.notifier).profile);
  //   } else {
  //     print("exist ");
  //     Future.delayed(Duration.zero,
  //         () => ref.read(userInfoProvider.notifier).gettProfile());
  //   }
  // }

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
    //final profile = ref.watch(userInfoProvider.notifier).profile;
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: bgLight,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 80,
                      width: 80,
                      child: Image.asset("assets/images/user_avatar.png")),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hey Dieter ",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: pink,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        state.maybeWhen(
                          orElse: () => Text(
                            "  ?? ",
                            style: textTheme(),
                          ),
                          gettingProfileError: (errors, error) =>
                              Text(error.toString()),
                          gettingProfile: () => Text(
                            " waiting",
                            style: textTheme(),
                          ),
                          gottenProfile: (profile) => Text(
                            "Goal : " + profile.goal,
                            overflow: TextOverflow.ellipsis,
                            style: textTheme(),
                          ),
                        ),
                        state.maybeWhen(
                          orElse: () => Text(
                            "  ?? ",
                            style: textTheme(),
                          ),
                          gettingProfileError: (errors, error) =>
                              Text(error.toString()),
                          gettingProfile: () => Text(
                            " waiting",
                            style: textTheme(),
                          ),
                          gottenProfile: (profile) => Text(
                            overflow: TextOverflow.ellipsis,
                            "height : " + profile.height,
                            style: textTheme(),
                          ),
                        ),
                        state.maybeWhen(
                          orElse: () => Text(
                            "  ?? ",
                            style: textTheme(),
                          ),
                          gettingProfileError: (errors, error) =>
                              Text(error.toString()),
                          gettingProfile: () => Text(
                            " waiting",
                            style: textTheme(),
                          ),
                          gottenProfile: (profile) => Text(
                            overflow: TextOverflow.ellipsis,
                            "gender : " + profile.gender,
                            style: textTheme(),
                          ),
                        ),
                        state.maybeWhen(
                          orElse: () => Text(
                            "  ?? ",
                            style: textTheme(),
                          ),
                          gettingProfileError: (errors, error) =>
                              Text(error.toString()),
                          gettingProfile: () => Text(
                            " waiting",
                            style: textTheme(),
                          ),
                          gottenProfile: (profile) => Text(
                            overflow: TextOverflow.ellipsis,
                            "activity : " + profile.activity_level,
                            style: textTheme(),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
