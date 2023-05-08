import 'package:app/core/app_theme.dart';
import 'package:flutter/material.dart';

void displaySnackbar(BuildContext context, String txt) {
  final snackBar = SnackBar(
    duration: Duration(milliseconds: 1000),
    content: Text(txt),
    backgroundColor: pink,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
