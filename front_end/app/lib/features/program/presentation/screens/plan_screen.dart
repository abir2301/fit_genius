import 'package:app/features/auth/presentation/components/screen_header.dart';
import 'package:flutter/material.dart';

import '../../../../core/app_theme.dart';

class PlanScreen extends StatefulWidget {
  PlanScreen({super.key});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  bool _isFirstScreenVisible = true;

  void _switchScreens() {
    setState(() {
      _isFirstScreenVisible = !_isFirstScreenVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: bgLight,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      "Weekly Plan ",
                      style: registrationMessageStyle(),
                    ),
                  ),
                  Switch(
                    value: true,
                    activeColor: const Color(0xFF212121),
                    onChanged: (value) {
                      // setState(() {
                      //    = !_isDark;
                      // });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.swap_horiz),
                    onPressed: _switchScreens,
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Visibility(
                visible: _isFirstScreenVisible,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'First Screen',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Visibility(
                visible: !_isFirstScreenVisible,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Second Screen',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
