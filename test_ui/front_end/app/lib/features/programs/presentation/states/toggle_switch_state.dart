import 'package:flutter/material.dart';

class ToggleSwitchState extends ChangeNotifier {
  bool _isDietPlanSelected = true;

  bool get isDietPlanSelected => _isDietPlanSelected;

  set isDietPlanSelected(bool value) {
    _isDietPlanSelected = value;
    notifyListeners();
  }
}
