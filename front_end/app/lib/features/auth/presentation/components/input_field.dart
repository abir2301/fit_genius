import 'package:app/core/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  double? radius = 0;
  double? width;
  String label;
  String hintText;
  IconData? icon;
  TextEditingController controller;
  bool? isObsecure;
  Function validator;
  Function? onSubmitted;
  Function? onchange;
  TextInputType? textInputType;
  InputField(
      {this.width,
      required this.label,
      required this.hintText,
      required this.controller,
      required this.validator,
      this.onSubmitted,
      this.onchange,
      this.icon,
      this.isObsecure,
      this.textInputType})
      : super();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(
              label,
            ),
          ),
          SizedBox(
            width: width,
            child: TextFormField(
              textAlign: TextAlign.start,
              obscureText: isObsecure ?? false,
              controller: controller,
              validator: validator(),
              keyboardType: textInputType,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                hintStyle: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  color: primaryColor,
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                )),

                // kHintTextStyle(context),
                suffixIcon: Icon(icon),
                hintText: hintText,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 15),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: primaryColor, width: 2),
                ),
                errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: primaryColor, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
