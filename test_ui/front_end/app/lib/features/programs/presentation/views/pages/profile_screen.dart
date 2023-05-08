import 'package:app/features/auth/presentation/components/input_field.dart';
import 'package:app/features/user_informations/presentation/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/app_theme.dart';
import '../components/rounded_button.dart';
import '../components/user_profile_header.dart';
import '../components/user_weight_details.dart';
import '../components/user_weights_chart.dart';

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

  TextEditingController comment_controller = TextEditingController();
  String _weight = 'N/A';

  Future<void> _showWeightInputDialog() async {
    final newWeight = await showDialog(
      context: context,
      builder: (_) => WeightInputDialog(),
    );

    if (newWeight != null) {
      setState(() {
        _weight = newWeight;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            // done
            UserProfileHeader(),

            SizedBox(
              height: 10,
            ),
            UserWeightDetails(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundedTextButton(
                    color: secondColor,
                    onPress: _showWeightInputDialog,
                    label: "Add weight",
                  ),
                  RoundedTextButton(
                    color: secondColor,
                    onPress: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text(
                            "You need to continue working on this week",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          duration: Duration(seconds: 10),
                          width: MediaQuery.of(context).size.width * 0.9,
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          backgroundColor: pink,
                          elevation: 8.0,
                        ),
                      );
                    },
                    label: "generate new plan ",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.width * 0.8,
                child: WeightChart(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "FeedBack Submission ❤️❤️❤️ ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    InputField(
                        label: "",
                        hintText: " your feedback ",
                        textInputType: TextInputType.multiline,
                        controller: comment_controller,
                        validator: (p0) {},
                        onEditingComplete: () {}),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class WeightInputDialog extends ConsumerStatefulWidget {
  @override
  _WeightInputDialogState createState() => _WeightInputDialogState();
}

class _WeightInputDialogState extends ConsumerState<WeightInputDialog> {
  late TextEditingController _weightController;

  @override
  void initState() {
    super.initState();
    _weightController = TextEditingController();
  }

  @override
  void dispose() {
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(userInfoProvider);
    return AlertDialog(
      title: Text('Enter Weight', style: screenHeaderStyle(size: 16)),
      content: TextField(
          controller: _weightController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            alignLabelWithHint: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: primaryColor, width: 2),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.red, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: primaryColor,
                width: 1,
              ),
            ),
          )),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: pink,
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
          onPressed: () {
            ref
                .read(userInfoProvider.notifier)
                .updateUSerWeight(_weightController.text);
            Navigator.of(context).pop(_weightController.text);
          },
          child: Text('Save'),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: pink,
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
      ],
    );
  }
}
