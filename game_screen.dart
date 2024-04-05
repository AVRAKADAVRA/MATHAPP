import 'package:flutter/material.dart';
import 'home_screen.dart';

class GameScreen extends StatelessWidget {
  static const String id = 'game_screen'; // Define route name

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(userScore: 0), // Pass userScore if needed
    );
  }
}
