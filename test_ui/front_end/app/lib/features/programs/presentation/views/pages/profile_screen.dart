import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/app_theme.dart';
import '../components/rounded_button.dart';
import '../components/user_profile_header.dart';
import '../components/user_weight_details.dart';

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

class WeightInputDialog extends StatefulWidget {
  @override
  _WeightInputDialogState createState() => _WeightInputDialogState();
}

class _WeightInputDialogState extends State<WeightInputDialog> {
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
    return AlertDialog(
      title: Text('Enter Weight'),
      content: TextField(
        controller: _weightController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: 'Weight'),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(_weightController.text);
          },
          child: Text('Save'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
      ],
    );
  }
}
