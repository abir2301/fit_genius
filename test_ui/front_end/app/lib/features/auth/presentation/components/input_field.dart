import 'package:app/core/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  double? radius = 0;
  double? width;
  String label;
  String hintText;
  IconData? icon;
  TextEditingController controller;
  bool? isObsecure;
  String? Function(String?) validator;

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
      padding: EdgeInsets.only(top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 1),
            child: Text(
              label,
              style: screenHeaderStyle(size: 20),
            ),
          ),
          SizedBox(
            width: width,
            child: TextFormField(
              obscuringCharacter: '*',
              textAlign: TextAlign.start,
              obscureText: isObsecure ?? false,
              controller: controller,
              validator: validator,
              // inputFormatters: [
              //   FilteringTextInputFormatter.allow(
              //     RegExp(r"[a-zA-Z]+|\s"),
              //   )
              // ],
              keyboardType: textInputType,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                hintStyle: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: blackColor,
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                )),

                // kHintTextStyle(context),
                suffixIcon: Icon(icon, color: Colors.black, grade: 2),
                hintText: hintText,
                iconColor: Colors.black,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 15),
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
