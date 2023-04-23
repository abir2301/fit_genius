import 'package:flutter/material.dart';

class RegsiterScreensPatern extends StatefulWidget {
  List<Widget> list;
  RegsiterScreensPatern({super.key, required this.list});

  @override
  State<RegsiterScreensPatern> createState() => _RegsiterScreensPaternState();
}

class _RegsiterScreensPaternState extends State<RegsiterScreensPatern> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
      children: widget.list,
    ));
  }
}
