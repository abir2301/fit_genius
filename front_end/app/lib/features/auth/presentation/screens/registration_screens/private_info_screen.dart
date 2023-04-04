import 'package:flutter/material.dart';

class PrivateInfoScreen extends StatefulWidget {
  const PrivateInfoScreen({super.key});

  @override
  State<PrivateInfoScreen> createState() => _PrivateInfoScreenState();
}

class _PrivateInfoScreenState extends State<PrivateInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("private_info_screen"),
    );
  }
}