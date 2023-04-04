import 'package:flutter/material.dart';

class FavoriteSportsScreen extends StatefulWidget {
  const FavoriteSportsScreen({super.key});

  @override
  State<FavoriteSportsScreen> createState() => _FavoriteSportsScreenState();
}

class _FavoriteSportsScreenState extends State<FavoriteSportsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("favorite_sport_screen"),
    );
  }
}
