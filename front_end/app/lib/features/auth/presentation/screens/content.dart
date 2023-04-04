import 'package:app/features/auth/presentation/screens/registration_screens/allergies_screen.dart';
import 'package:app/features/auth/presentation/screens/registration_screens/chronic_diseases_screen.dart';
import 'package:app/features/auth/presentation/screens/registration_screens/congrat_screen.dart';
import 'package:app/features/auth/presentation/screens/registration_screens/deficiencies_screen.dart';
import 'package:app/features/auth/presentation/screens/registration_screens/excercices.dart';
import 'package:app/features/auth/presentation/screens/registration_screens/favorite_sport_screen.dart';
import 'package:app/features/auth/presentation/screens/registration_screens/life_style_screen.dart';
import 'package:app/features/auth/presentation/screens/registration_screens/phisical_condition_screen.dart';
import 'package:app/features/auth/presentation/screens/registration_screens/private_info_screen.dart';
import 'package:app/features/auth/presentation/screens/registration_screens/profile_screen.dart';
import 'package:flutter/material.dart';

List<Widget> contents = [
  ProfileScreen(),
  PrivateInfoScreen(),
  PhisicalConditionScreen(),
  LifeStyleScreen(),
  FavoriteSportsScreen(),
  ExcercicesScreen(),
  DeficienciesScreen(),
  ChronicDiseasesScreen(),
  AllergiesScreen(),
];
