import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/app_theme.dart';
import '../components/rounded_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  textTheme({double size = 15.0, Color color = const Color(0xff777777)}) {
    return GoogleFonts.poppins(
        textStyle: TextStyle(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: size,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: bgLight,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.settings,
                            color: grey,
                          )),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.person_2_outlined,
                            size: 40,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "heyy user ",
                                style: textTheme(),
                              ),
                              Text("weight lost ", style: textTheme()),
                              Text("1250 Kcal/ day", style: textTheme())
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // height: 50,
                constraints: const BoxConstraints(
                    maxHeight: double.infinity, minHeight: double.minPositive),
                decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "100.2" + "KG",
                            style: textTheme(color: Color(0xff555555)),
                          ),
                          Text("Starting ",
                              style: textTheme(
                                  size: 13, color: Color(0xff555555))),
                        ],
                      ),
                      Column(
                        children: [
                          Text("98.2" + "KG",
                              style: textTheme(color: Color(0xff555555))),
                          Text("Current",
                              style: textTheme(
                                  size: 13, color: Color(0xff555555))),
                        ],
                      ),
                      Column(
                        children: [
                          Text("98.2" + "KG",
                              style: textTheme(color: Color(0xffffffff))),
                          Text("Desired",
                              style: textTheme(
                                  size: 13, color: Color(0xffffffff))),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundedTextButton(
                    color: secondColor,
                    onPress: () {},
                    label: "Add weight",
                  ),
                  RoundedTextButton(
                    color: secondColor,
                    onPress: () {},
                    label: "generate new plan ",
                  ),
                ],
              ),
            )
            // Container(
            //     height: 100,
            //     constraints: BoxConstraints(minHeight: double.infinity),
            //     width: MediaQuery.of(context).size.width * 0.8,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         RoundedTextButton(
            //           color: secondColor,
            //           onPress: () {},
            //           label: "Add weight",
            //         ),
            //         RoundedTextButton(
            //           color: secondColor,
            //           onPress: () {},
            //           label: "generate new plan ",
            //         ),
            //       ],
            //     ))
          ],
        ),
      ],
    );
  }
}
